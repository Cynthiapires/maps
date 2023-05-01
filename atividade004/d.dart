import 'dart:io';

void main() {
  // cria uma lista vazia para armazenar os produtos
  final produtos = <Map<String, dynamic>>[];
  
  // loop para pedir ao usuário o nome e o valor de 5 produtos
  for (var i = 0; i < 5; i++) {
    stdout.write('Digite o nome do produto ${i + 1}: ');
    final nome = stdin.readLineSync();
    stdout.write('Digite o valor do produto ${i + 1}: ');
    final valor = double.tryParse(stdin.readLineSync() ?? '');
    
    if (nome != null && nome.isNotEmpty && valor != null) {
      // adiciona o produto à lista de produtos
      produtos.add({'nome': nome, 'valor': valor});
    } else {
      // se o usuário digitou um valor inválido, exibe uma mensagem de erro e decrementa o contador i para repetir a iteração
      print('\nNome ou valor inválido!');
      i--;
    }
  }
  
  // exibe a tabela com os produtos e a soma dos valores
  print('\n+----------------------+');
  print('| Produto      | Valor |');
  print('+----------------------+');
  double soma = 0;
  produtos.forEach((produto) {
    print('| ${produto['nome'].padRight(12)} | R\$ ${produto['valor'].toStringAsFixed(2).padLeft(5)} |');
    soma += produto['valor'];
  });
  print('+----------------------+');
  print('| Total        | R\$ ${soma.toStringAsFixed(2).padLeft(5)} |');
  print('+----------------------+');
}
