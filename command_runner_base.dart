/*
Versao: 0.0.1

 Codigo:

import 'dart:collection';
import 'dart:io';
import 'arguments.dart';

class CommandRunner {
  final Map<String, Command> _commands = <String, Command>{};

  UnmodifiableSetView<Command> get commands =>
      UnmodifiableSetView(<Command>{..._commands.values});

  Future<void> run(List<String> input) async {
    final ArgResults results = parse(input);
    if (results.command != null) {
      Object? output = await results.command!.run(results);
      print(output.toString());
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
  results.commandArg = input.length > 1 ? input.sublist(1).join('  ') : null;
    return results;
  }

  // Returns usage for the executable only.
  // Should be overridden if you aren't using [HelpCommand]
  // or another means of printing usage.
  String get usage {
    final exeFile = Platform.script.path.split('/').last;
    return 'Usage: dart bin/$exeFile <command> [commandArg?] [...options?]';
  }
}

-------------------------------------------------------------------------------
Versao: 0.0.2

 Codigo:

import 'dart:collection';
import 'dart:io';
import 'arguments.dart';

class CommandRunner {
  CommandRunner({this.onOutput, this.onError});

  /// If not null, this method is used to handle output.
  FutureOr<void> Function(String)? onOutput;
  FutureOr<void> Function(Object)? onError;

  final Map<String, Command> _commands = <String, Command>{};

  UnmodifiableSetView<Command> get commands =>
      UnmodifiableSetView(<Command>{..._commands.values});

  Future<void> run(List<String> input) async {
    final ArgResults results = parse(input);
    if (results.command != null) {
      Object? output = await results.command!.run(results);
      print(output.toString());
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
    return results;
  }

  // Returns usage for the executable only.
  String get usage {
    final exeFile = Platform.script.path.split('/').last;
    return 'Usage: dart bin/$exeFile <command> [commandArgs] [...options]';
  }
}

-------------------------------------------------------------------------------

Versao: 0.0.3

 Codigo:
*/
import 'dart:collection';
import 'dart:io';
import 'arguments.dart';

class CommandRunner {
  CommandRunner({this.onOutput, this.onError});

  // If not null, this method is used to handle output.
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
    return results;
  }

  // Returns usage for the executable only.
  String get usage {
    final exeFile = Platform.script.path.split('/').last;
    return 'Usage: dart bin/$exeFile <command> [commandArgs] [...options]';
  }
}
