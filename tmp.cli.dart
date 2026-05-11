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
*/

// Codigo valido ate agora

// Codigo:


