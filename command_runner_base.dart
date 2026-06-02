import 'dart:async'; // Add this line
import 'dart:collection';
import 'dart:io';

import 'arguments.dart';
import 'exceptions.dart'; // Add this line

class CommandRunner {
  // Add a constructor that accepts the optional callback.
  CommandRunner({this.onError});

  final Map<String, Command> _commands = <String, Command>{};

  UnmodifiableSetView<Command> get commands =>
      UnmodifiableSetView<Command>(<Command>{..._commands.values});

  // Define the onError property.
  FutureOr<void> Function(Object)? onError;

  // The rest of the class implementation...
}

