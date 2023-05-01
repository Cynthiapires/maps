import 'dart:io';

void main() {
  // cria uma lista vazia para armazenar os nomes digitados
  final nomes = <String>[];
  
  // loop que solicita 10 nomes ao usuário e adiciona cada um na lista
  for (var i = 1; i <= 10; i++) {
    // solicita o nome e aguarda a entrada do usuário
    stdout.write('Digite o ${i}º nome: ');
    final nome = stdin.readLineSync();
    
    // verifica se o nome foi digitado e adiciona na lista
    if (nome != null && nome.isNotEmpty) {
      nomes.add(nome);
    }
  }
  
  // verifica se a lista de nomes não está vazia
  if (nomes.isNotEmpty) {
    // cria um mapa a partir da lista de nomes, onde a chave é o nome e o valor é a quantidade de vezes que ele aparece na lista
    final mapNomes = Map.fromIterable(nomes, key: (nome) => nome, value: (nome) => nomes.where((n) => n == nome).length);
    
    // imprime a lista de nomes e a quantidade de vezes que cada um aparece
    print('Nomes digitados:');
    mapNomes.forEach((nome, quantidade) {
      print('${nome} - ${quantidade}x');
    });
  } else {
    // se a lista de nomes estiver vazia, imprime uma mensagem informando isso
    print('Nenhum nome foi digitado!');
  }
}
