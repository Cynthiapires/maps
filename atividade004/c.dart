import 'dart:io';

void main() {
  // cria um mapa vazio para armazenar os nomes e telefones
  final mapa = <String, String>{};
  
  // loop principal do programa
  while (true) {
    // exibe as opções do menu e solicita que o usuário escolha uma
    stdout.write('\nMenu\n----\n1 - Inserir nome e telefone\n2 - Exibir lista de nomes e telefones\n3 - Sair\n\nEscolha uma opção: ');
    final opcao = stdin.readLineSync();
    
    // verifica se o usuário digitou uma opção válida
    if (opcao != null && opcao.isNotEmpty && '123'.contains(opcao)) {
      switch (opcao) {
        case '1':
          // opção para inserir nome e telefone
          stdout.write('\nDigite o nome: ');
          final nome = stdin.readLineSync();
          stdout.write('Digite o telefone: ');
          final telefone = stdin.readLineSync();
          mapa[nome] = telefone;
          print('\nNome e telefone inseridos com sucesso!');
          break;
        
        case '2':
          // opção para exibir lista de nomes e telefones
          if (mapa.isEmpty) {
            print('\nA lista de nomes e telefones está vazia!');
          } else {
            print('\nLista de nomes e telefones:');
            mapa.forEach((nome, telefone) {
              print('${nome}: ${telefone}');
            });
          }
          break;
        
        case '3':
          // opção para sair do programa
          print('\nSaindo...');
          return;
      }
    } else {
      // se o usuário digitou uma opção inválida, exibe uma mensagem de erro
      print('\nOpção inválida!');
    }
  }
}
