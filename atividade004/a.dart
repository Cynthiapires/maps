import 'dart:io';

void main() {
  // Criando um Map para armazenar os números
  Map<int, int> numeros = {};

  // Solicitando os 10 números inteiros aos usuarios
  for (int i = 1; i <= 10; i++) {
    stdout.write("Insira o ${i}º número inteiro: ");
    int numero = int.parse(stdin.readLineSync()!);

    // Armazenando o número no Map
    numeros[i] = numero;
  }

  // Print da lista de números inseridos
  print("Números inseridos:");
  numeros.forEach((indice, numero) => print("$indice - $numero"));
}
