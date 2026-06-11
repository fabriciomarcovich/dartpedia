HEAD
=======
cat > ../command_runner/lib/src/arguments.dart << 'EOF'
>>>>>>> 0ddcc6f (Atividade 8: Tarefa 3: Atualizei a mainfunção para passá-la onOutput para o CommandRunner)
import 'dart:async';
import 'dart:collection';
import '../command_runner.dart';

enum OptionType { flag, option }

abstract class Argument {
  String get name;
  String? get help;
  Object? get defaultValue;
  String? get valueHelp;
  String get usage;
}

class Option extends Argument {
  Option(
    this.name, {
    required this.type,
    this.help,
    this.abbr,
    this.defaultValue,
    this.valueHelp,
  });
<<<<<<< HEAD

  @override
  final String name;
=======
  @override final String name;
>>>>>>> 0ddcc6f (Atividade 8: Tarefa 3: Atualizei a mainfunção para passá-la onOutput para o CommandRunner)
  final OptionType type;
  @override
  final String? help;
  final String? abbr;
<<<<<<< HEAD
  @override
  final Object? defaultValue;
  @override
  final String? valueHelp;

=======
  @override final Object? defaultValue;
  @override final String? valueHelp;
>>>>>>> 0ddcc6f (Atividade 8: Tarefa 3: Atualizei a mainfunção para passá-la onOutput para o CommandRunner)
  @override
  String get usage {
    if (abbr != null) {
      return '-$abbr,--$name: $help';
    }
    return '--$name: $help';
  }
}

abstract class Command extends Argument {
  @override
  String get name;
  String get description;
  bool get requiresArgument => false;
  late CommandRunner runner;
  @override
  String? get help;
  @override
  Object? get defaultValue;
  @override
<<<<<<< HEAD
  String? valueHelp;
=======
  String? get valueHelp;
>>>>>>> 0ddcc6f (Atividade 8: Tarefa 3: Atualizei a mainfunção para passá-la onOutput para o CommandRunner)

  final List<Option> _options = [];
  UnmodifiableSetView<Option> get options =>
      UnmodifiableSetView(_options.toSet());

  void addFlag(String name, {String? help, String? abbr, String? valueHelp}) {
    _options.add(
      Option(
        name,
        help: help,
        abbr: abbr,
        defaultValue: false,
        valueHelp: valueHelp,
        type: OptionType.flag,
      ),
    );
  }

  void addOption(
    String name, {
    String? help,
    String? abbr,
    String? defaultValue,
    String? valueHelp,
  }) {
    _options.add(
      Option(
        name,
        help: help,
        abbr: abbr,
        defaultValue: defaultValue,
        valueHelp: valueHelp,
        type: OptionType.option,
      ),
    );
  }

  FutureOr<Object?> run(ArgResults args);

  @override
  String get usage {
    return '$name:  $description';
  }
}

class ArgResults {
  Command? command;
  String? commandArg;
  Map<Option, Object?> options = {};

  bool flag(String name) {
    for (var option in options.keys.where(
      (option) => option.type == OptionType.flag,
    )) {
      if (option.name == name) {
        return options[option] as bool;
      }
    }
    return false;
  }

  bool hasOption(String name) {
    return options.keys.any((option) => option.name == name);
  }

  ({Option option, Object? input}) getOption(String name) {
    var mapEntry = options.entries.firstWhere(
      (entry) => entry.key.name == name || entry.key.abbr == name,
    );
    return (option: mapEntry.key, input: mapEntry.value);
  }
}
EOF
