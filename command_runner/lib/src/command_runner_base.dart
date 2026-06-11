import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'arguments.dart';

class CommandRunner {
  CommandRunner({this.onOutput, this.onError});

  FutureOr<void> Function(String)? onOutput;
  FutureOr<void> Function(Object)? onError;

  final Map<String, Command> _commands = <String, Command>{};

  UnmodifiableSetView<Command> get commands =>
      UnmodifiableSetView(<Command>{..._commands.values});

  Future<void> run(List<String> input) async {
    try {
      final ArgResults results = parse(input);
      if (results.command != null) {
        Object? output = await results.command!.run(results);
        if (onOutput != null) {
          await onOutput!(output.toString());
        } else {
          print(output.toString());
        }
      }
    } on Exception catch (exception) {
      if (onError != null) {
        onError!(exception);
      } else {
        rethrow;
      }
    }
  }

  void addCommand(Command command) {
    // TODO: handle error (Commands can't have names that conflict)
    _commands[command.name] = command;
    command.runner = this;
  }
ArgResults parse(List<String> input) {
  var results = ArgResults();
  results.command = _commands[input.first];

  final rest = input.sublist(1);
  final command = results.command;

  if (command != null) {
    for (var option in command.options) {
      if (option.type == OptionType.flag) {
        // checa --name ou -abbr
        final hasFlag = rest.contains('--${option.name}') ||
            (option.abbr != null && rest.contains('-${option.abbr}'));
        results.options[option] = hasFlag;
      } else if (option.type == OptionType.option) {
        // checa --name valor ou -abbr valor
        int idx = rest.indexOf('--${option.name}');
        if (idx == -1 && option.abbr != null) {
          idx = rest.indexOf('-${option.abbr}');
        }
        if (idx != -1 && idx + 1 < rest.length) {
          results.options[option] = rest[idx + 1];
        } else {
          results.options[option] = option.defaultValue;
        }
      }
    }
  }

  // commandArg = tokens que não são flags/options
  results.commandArg = rest
      .where((a) => !a.startsWith('-'))
      .join(' ')
      .trim()
      .isEmpty ? null : rest.where((a) => !a.startsWith('-')).join(' ').trim();

  return results;
}

  // Returns usage for the executable only.
  // Should be overridden if you aren't using [HelpCommand]// or another means of printing usage.
  String get usage {
    final exeFile = Platform.script.path.split('/').last;
    return 'Usage: dart bin/$exeFile <command> [commandArg?] [...options?]';
  }
}
