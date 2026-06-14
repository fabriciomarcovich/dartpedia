/*
Versao: 0.0.0

Codigo:

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments)
        print('Hello world: ${cli.calculate()}!');
}

Saida padrao ao executar o codigo:

Comando: dart run bin/cli.dart

Building package executable...
Built cli:cli
Hello World: 42!

-------------------------------------------------------------------------------

Versao: 0.0.1

Codigo:
 
void main (List<String> arguments) {
        print ('Hello Dart!');
}

Saida Padrao ao executar o codigo:
Hello Dart!

Comando: dart run bin/cli.dart

-------------------------------------------------------------------------------

Versao: 0.0.2

Codigo:

const version = '0.0.2';

void main (List<String> arguments) {
        if (arguments.isEmpty) {
                print('Hello,Dart!');
        } else if (arguyments.first == 'version') {
                print('Dartpedia CLI version $version');
        }
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart 

Voce devera ver: Hello, Dart!

Comando: dart bin/cli.dart version

Voce devera ver agora:

Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------

Versao:0.0.3

Codigo:

const version = '0.0.3';

void main (List<String> arguments) {
        if (arguments.isEmpty) {
                print('Hello,Dart!');
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Voce deve ver: Hello,Dart!

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.3

-------------------------------------------------------------------------------

Versao = '0.0.4'

Codigo:

const version = '0.0.4';

void main (List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage(); // Change this from 'hello, Dart!'
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else {
                printUsage();  // Catch-all for any unrecognized command
               print("The following commands are valid: 'help', 'version', 'search <ARTICLE TITLE>'");
        }
}

void printUsage() { // Add this new function
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.4

-------------------------------------------------------------------------------

Versao = '0.0.5'

Codigo:

const version = '0.0.5';

void main (List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else if (arguments.first == 'search') {
        // Adicione este novo bloco:
          print('Search command recognized!');
        } else {
                printUsage();
        }
}

void printUsage() { // Add this new function
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

Comando: dart bin/cli.dart

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.5

Comando: dart bin/cli.dart search

Voce deve ver: Search command recognized!

-------------------------------------------------------------------------------

Versao = '0.0.6'

Codigo:

const version = '0.0.6';

void main (List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else if (arguments.first == 'search') {
                print('Search command recognized!'); // Adicione este novo bloco
        } else {
                printUsage();
        }
}

void printUsage() { 
        print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
        print('searchWikipedia received arguments: $arguments');

}

Comando: dart bin/cli.dart

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.6

-------------------------------------------------------------------------------

Versao = '0.0.7'

Codigo:

const version = '0.0.7';

void main (List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else if (arguments.first == 'search') {
          final inputArgs = arguments.lenght > 1 ? arguments.sublist(1) : null; // Add this block
          searchWikipedia(inputArgs);
        } else {
                printUsage();
        }
}

void printUsage() {
        print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

void searchWikipedia(List<String>? arguments) { 
        print('searchWikipedia received arguments: $arguments');
}

Comando: dart bin/cli.dart

Voce devera ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.7

Comando: dart bin/cli.dart search

Voce deve ver: searchWikipedia received arguments: null

Comando: dart bin/cli.dart search Dart Programming

Voce deve ver: searchWikipedia received arguments: [Dart, Programming]

-------------------------------------------------------------------------------

Versao = '0.0.8'

Codigo:

import 'dart:io' ; // Add this entire line
const version = '0.0.8';

void main (List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI version $version');
        } else if (arguments.first == 'search') {
         final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null; // Add this block
          searchWikipedia(inputArgs);
        } else {
                printUsage();
        }
}

void printUsage() {
        print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

void searchWikipedia(List<String>? arguments) {
        final String articleTitle;
        if (arguments == null || arguments.isEmpty) {
                print('Please provide an article title.');
        // Await input  and provide a default empty string if the input is null.
              articleTitle = stdin.readLineSync() ?? '';
        } else {
         //  Otherwise, join the arguments into a single string.
          articleTitle = arguments.join('  ');
        }

        print('Current article title: $articleTitle');
}

Comando: dart bin/cli.dart 

Voce devera ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce devera ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart search

Voce devera ver: 
Please Provide an article title
--Insira seu article title--
current article title: $articleTitle

Comando: dart bin/cli.dart search dart programming

Voce devera ver: current article title: dart programming

-------------------------------------------------------------------------------
Versao = '0.0.9'

Codigo:

import 'dart:io' ; // Add this line
const version = '0.0.9';

void main (List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print('Dartpedia CLI $version');
        } else if (arguments.first == 'search') {
          final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
          searchWikipedia(inputArgs);
        } else {
                printUsage();
        }
}

void printUsage() {
        print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

void searchWikipedia(List<String>? arguments) {
        final String articleTitle;
// If the user didn't pass in arguments, request an article title.
        if (arguments == null || arguments.isEmpty) {
                print('Please provide an article title.');
        // Await input and provide a default empty string if the input is null.
                articleTitle = stdin.readLineSync() ?? '';
 } else {
           //  Otherwise, join the arguments into a single string.
                articleTitle = arguments.join('  ');
        }

        print('Looking up articles about "$articleTitle". Please wait.');
        print('Here ya go!');
        print('(Pretend this is an article about "$articleTitle")');
}

Comando: dart bin/cli.dart search Dart Programming

Voce deveria ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deveria ver: Please provide an article title.

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver: Dartpedia CLI version 0.0.9

-------------------------------------------------------------------------------

Versao: 0.0.10

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.10';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

void searchWikipedia(List<String>? arguments) { 
  final String articleTitle;
 
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
} 

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.10

Comando: dart bin/cli.dart search Dart Programming

Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao 0.0.11

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.11';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// Assinatura da função adicionada aqui
   Future<String> getWikipediaArticle(String articleTitle) async {
  return '';  
// You'll add more code here soon
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.11

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework 

-------------------------------------------------------------------------------

Versao 0.0.12

Codigo:
 
import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.12';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   return '';
   final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.12

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao 0.0.13

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.13';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.13

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.14

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.14';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// ... (your existing printUsage() function)

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.14

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.15

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.15';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.15

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.16

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.16';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
} 

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.16

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.17

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.17';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
} 

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.17

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"
Voce deve ver: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-------------------------------------------------------------------------------

versao 0.0.18

Codigo: 

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';
const version = '0.0.18';

void main(List<String> arguments) async {
  var runner = CommandRunner();
  await runner.run(arguments);
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.18

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"
Voce deve ver: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-------------------------------------------------------------------------------
Versao = 0.0.19

Codigo:

import 'package:command_runner/command_runner.dart';

const version = '0.0.19';

void main(List<String> arguments) {
  var commandRunner = CommandRunner(
    onOutput: (String output) async {
      await write(output);
    },
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
}
------------------------------------------------------------------------------
Versao: 0.0.20

Codigo: 
import 'package:cli/cli.dart';
import 'package:command_runner/command_runner.dart';

-------------------------------------------------------------------------------
Versao: 0.0.21

Codigo: 
*/
import 'package:cli/cli.dart';
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  final errorLogger = initFileLogger('errors');
  final app =
      CommandRunner(
          onOutput: (String output) async {
            await write(output);
          },
          onError: (Object error) {
            if (error is Error) {
              errorLogger.severe(
                '[Error] ${error.toString()}\n${error.stackTrace}',
              );
              throw error;
            }
            if (error is Exception) {
              errorLogger.warning(error);
            }
          },
        )
        ..addCommand(HelpCommand())
        ..addCommand(SearchCommand(logger: errorLogger))
        ..addCommand(GetArticleCommand(logger: errorLogger));

  app.run(arguments);
}
