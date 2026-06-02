import 'dart:async'; 
import 'dart:collection';
import 'dart:io';

import 'arguments.dart';
import 'exceptions.dart'; 

class CommandRunner {
 
  CommandRunner({this.onError});

  final Map<String, Command> _commands = <String, Command>{};

  UnmodifiableSetView<Command> get commands =>
      UnmodifiableSetView<Command>(<Command>{..._commands.values});

  
  FutureOr<void> Function(Object)? onError;

  Future<void> run(List<String> input) async {
  
  try {
    final ArgResults results = parse(input);
    if (results.command != null) {
      Object? output = await results.command!.run(results);
      print(output.toString());
    }
  } on Exception catch (exception) {
    if (onError != null) {
      onError!(exception);
    } else {
      rethrow;
    }
  }
}

