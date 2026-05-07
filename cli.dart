/*
Informacoes:   

O aplicativo cli faz parte do projeto Dartpedia

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.

cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre o cli, nosso aplicativo.

 Site:
 
 Autor		: Fabricio Marcovich dos Reis <Email fabricio.m.reis@edu.senai.br >

 Manutencao:
 
 ---------------------------------------------------------------------------
 Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

Dentro da pasta dartpedia em home/fabricio.marcovich/dartpedia/cli rode o comando
dart run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

Obs. Importante ! Este aplicativo esta em desenvolvimento e ao longo do tempo
o comportamento do aplicativo pode mudar




 Data da criacao - 26/03/26

----------------------------------------------------------------------------
 Dicionario do versionamento:

 v = Versao

 0 = Inicio do versionamento

 . = Implementacao de versionamento

 1 = Proxima versao, 2, proxima versao, e assim por diante.

----------------------------------------------------------------------------

Historico do versionamento:

----------------------------------------------------------------------------


versao: 0.0.0

Data: 26/03/2026

Descricao do codigo: Codigo original....

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

Data: 09/04/2026

Descricao do codigo: Apague a primeira linha (voce nao precisa dessa declaracao
 de importacao) e altere a print declaracao para exibir uma saudacao simples:

 Codigo:
 
void main (List<String> arguments) {
	print ('Hello Dart!');
}

Saida Padrao ao executar o codigo:
Hello Dart!

Comando: dart run bin/cli.dart

-------------------------------------------------------------------------------


Versao: 0.0.2

Data: 09/04/2026

Descricao do codigo: Implemente o versioncomando em cli/bin/cli.dart: Adicione 
logica para lidar com um versioncomando que imprime a versao atual da CLI. Use 
um `if instruçao if` para verificar se o primeiro argumento fornecido eh `true`
 version. Voce tambem precisara de uma version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao. O
 valor de uma const variavel nunca pode ser alterado depois de ter sido definido:

const version = '0.0.2'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionargumento:

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

Data: 09/04/2026

Descricao do codigo: Adicione uma printUsage funcao: Para tornar a saida mais 
amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso.
Coloque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.

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

Data = 09/04/2026

Descricao do codigo: Implemente o help comando e refine main: Agora, integre o 
help comando usando uma else if instrucao e limpe o comportamento padrao para 
chamar a printUsage funcao.

Modifique sua main funcao para que fique assim:

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

 Entenda a if/else estrutura e as variaveis: Agora que voce implementou o fluxo de controle na main funcao, revise o codigo que foi adicionado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fornecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como nosso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhecido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pode mudar durante a execucao com base na entrada do usuario     .

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

Data = 16/04/2026

Descricao do codigo: Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/cli.dart para incluir um else iframo que lide com o search comando. Por enquanto, basta imprimir uma mensagem de espaÃ§o reservado.

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

Data = 16/04/2026

Descricao do codigo: Defina a searchWikipedia funcao: O search comando 
eventualmente executara a logica principal do seu aplicativo chamando uma 
funcao chamada searchWikipedia. Por enquanto, faca com que ela 
searchWikipedia imprima os argumentos passados para ela com o search comando. 

Coloque esta nova funcao abaixo de main.

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

Principais trechos do codigo anterior:

List<String>? arguments significa que a arguments propria lista pode ser null.

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

Data = 16/04/2026

Descricao do codigo: Chame a searchWikipedia funcao a partir da mainfuncao:
Agora, modifique o search bloco de comando main para chamar searchWikipedia e 
passar quaisquer argumentos que venham apos o search proprio comando. Use 
arguments.sublist(1) para obter todos os argumentos a partir do segundo. 
Se nenhum argumento for fornecido apos search, passe null para searchWikipedia.

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

Data = 23/04/2026

Descricao do codigo: Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando: Eh mais amigavel ao usuario solicitar o titulo caso ele nao o forneca na linha de comando. Use stdin.readLineSync() para isso.

Primeiro, adicione a importacao necessaria no inicio do seu cli/bin/cli.dart arquivo:

import 'dart:io'; // Add this line at the top

dart:io Eh uma biblioteca central no SDK do Dart e fornece APIs para lidar com arquivos, diretorios, sockets, clientes e servidores HTTP, e muito mais.

Agora, atualize sua searchWikipedia função.

Declara uma final String articleTitle variavel. Isso permite que a analise estatica detecte que ela articleTitle sera um valor Stringe nao sera nula.

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

Data: 23/04/2026

Descricao do codigo: Atualize searchWikipediapara exibir mensagens que indiquem
que nosso programa encontrou algo. Isso nos ajuda a visualizar o que nosso
programa final fará sem precisar compilá-lo completamente agora.
 
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
Versao = 0.0.10

Data = 27/04/2026

Descricao do codigo: Adicione a seguinte import declaração no início do arquivo,
 juntamente com a dart:io (importação existente):

// Codigo:

import 'dart:io' ;
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.10';

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

Voce deveria ver: Dartpedia CLI version 0.0.10

-------------------------------------------------------------------------------
Versao = 0.0.11

Data = 30/04/2026

Descricao do codigo: Agora, crie uma nova função chamada `getData`
getWikipediaArticleque lide com a busca de dados deuma API externa. Essa função será
chamada asyncde `getData` porque as requisições de rede são operações assíncronas.

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

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

Future<String> getWikipediaArticle(String articleTitle) async {
return '';  
// You'll add more code here soon
}

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver: Dartpedia CLI version 0.0.11

Comando: dart bin/cli.dart search Dart Programming

Voce deveria ver: 
Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deveria ver: 
Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------
Versao = 0.0.12

Data = 30/04/2026

Descricao do codigo: Construa a URL da API: Dentro da sua nova
getWikipediaArticlefunção, crie um Uriobjeto. O `url` Urirepresenta o endpoint
da API da Wikipédia que você chamará para obter um resumo do artigo.

Adicione estas linhas dentro da getWikipediaArticlefunção:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
  // ...
} 

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

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver: Dartpedia CLI version 0.0.12

Comando: dart bin/cli.dart search Dart Programming

Voce deveria ver: 
Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deveria ver: 
Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------
Versao = 0.0.13

Data = 30/04/2026

Descricao do codigo:  Faça a requisição HTTP e processe a resposta:get Agora, use a função de nível superior para package:http fazer uma GETrequisição HTTP para a URL que você acabou de construir. A awaitpalavra-chave `pause` pausa a execução de `request` getWikipediaArticle até que a getchamada seja concluída e retorne um http.Response objeto.

Após a conclusão da requisição, verifique o status response.statusCodepara garantir que a requisição foi bem-sucedida (um código de status 1 200significa OK). Se bem-sucedida, retorne o objeto response.body`request`, que contém os dados obtidos (neste caso, JSON bruto). Se a requisição falhar, retorne uma mensagem de erro informativa.

Adicione estas linhas após a Uriconstrução dentro de getWikipediaArticle:

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

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver:  Dartpedia CLI version 0.0.13

Comando: dart bin/cli.dart search Dart Programming

Voce deveria ver:
Looking up articles about "Dart Programming". Please wait.
Here Ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart 

Voce deveria ver:
Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------
Versao: 0.0.14

Data: 30/04/2026

Descricao do codigo: Atualização searchWikipediapara uso async: Localize sua
searchWikipediafunção e atualize sua assinatura para asyncque ela agora
execute operações assíncronas.

Sua searchWikipediafunção agora deve ter esta aparência (parte inicial):

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
Principais trechos do código anterior:

void searchWikipedia(List<String>? arguments) asyncA função agora é async. Isso é essencial porque ela chamará getWikipediaArticle, que asyncpor si só é uma função e precisará de await seu resultado.

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

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver:  Dartpedia CLI version 0.0.14

Comando: dart bin/cli.dart search Dart Programming
Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deveria ver:
Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------
Versao: 0.0.15

Data: 30/04/2026

Descricao do codigo: Adicione nullverificações de entrada do usuário para strings vazias: Dentro searchWikipediado ifbloco que trata o caso em que nenhum argumento é fornecido, refine-o. Se stdin.readLineSync()o resultado for nulo null(por exemplo, se o usuário pressionar Ctrl+D/Ctrl+Z) ou uma string vazia, imprima uma mensagem e saia da função.

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

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver:  Dartpedia CLI version 0.0.15

Comando: dart bin/cli.dart search Dart Programming

Voce deveria ver: 
Looking up articles about "Dart Programming". Please wait.
Here ya go
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deveria ver:
Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------
Versao: 0.0.16

Data: 30/04/2026

Descricao do codigo: Chame a função getWikipediaArticlee imprima o resultado:
Agora, modifique a searchWikipediafunção para chamar sua nova
getWikipediaArticlefunção e imprimir o resultado. Em seguida, substitua as
printinstruções de espaço reservado anteriores pela chamada de API real.

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

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Voce deveria ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Voce deveria ver:  Dartpedia CLI version 0.0.15

Comando: dart bin/cli.dart search Dart Programming

Voce deveria ver: 
Looking up articles about "Dart Programming". Please wait.
Here ya go
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Voce deveria ver:
Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao = 0.0.17

Data: 27/04/2026

Descricao do codigo: Por fim, atualize sua mainfunção para chamar a nova searchWikipediafunção quando o wikipediacomando for usado.

Localize o else ifbloco na sua mainfunção que atualmente lida com o searchcomando. Altere o nome do comando de searchpara wikipediae atualize a chamada da função.

No código de exemplo, mainnão há await chamada para searchWikipedia, o que significa que maino próprio não precisa ser marcado async.

Sua mainfunção agora deve ter esta aparência:

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
arguments.sublist(1)Esta função extrai todos os elementos da argumentslista, começando pelo segundo elemento (índice 1). Isso remove efetivamente o wikipediapróprio comando, de forma que searchWikipediaa lista receba apenas os argumentos do título do artigo.
searchWikipedia(inputArgs)Isso chama searchWikipediadiretamente. Como mainnão precisa fazer nada depois de searchWikipediaser concluído, você não precisa chamá await-lo de main. Portanto main, não precisa ser async.

Codigo:

import'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.11';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');

  } else if (arguments.first == 'wikipedia') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
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

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'wikipedia <ARTICLE-TITLE>'"
  );
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

Comando: dart bin/cli.dart

Voce deveria ver: The following commands are valid: 'help', 'wikipedia'. 'search <ARTICLE-TITLE>'"

Comando: dart bin/cli.dart help 

Voce deveria ver: The following commands are valid: 'help', 'wikipedia'. 'search <ARTICLE-TITLE>'"

Comando: dart bin/cli.dart version

Voce deveria ver: Dartpedia CLI version 0.0.17

Comando: dart bin/cli.dart wikipedia

Voce deveria ver:  // article inexistente(invalido)
Please provide an article
--(artigo invalido)-- // Nao existe na biblioteca
Looking up articles about "artigo invalido". Please wait.
Error: Failed to fetch article "artigo invalido". Status Code: 404
-------------------------------------------------------------------
// article existente(valido) como o "Flutter_(software)
Please provide an article
--(artigo valido)-- // Nao existe na biblioteca
Looking up articles about "artigo invalido". Please wait.
Conteudo do artigo...

Comando: dart bin/cli.dart wikipedia "Dart_(programming language)" // Ou outro valido

Voce deveria ver:
Looking up articles about "Dart_(programming_language)". Please wait.
Conteudo do artigo...

// Codigo valido ate agora

// Codigo:
*/
import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.17';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');

  } else if (arguments.first == 'wikipedia') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
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

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'wikipedia <ARTICLE-TITLE>' 
 );
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
