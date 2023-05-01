void main() {
  print('-' * 70);
  print('EXEMPLO DE WHERE(), MAP() e REDUCE() NA FILTRAGEM');
  print('-' * 70);

  Map<String, int> numeros = {
    'Um': 1,
    'Dois': 2,
    'Três': 3,
    'Quatro': 4,
    'Cinco': 5
  };

  int soma = numeros.values
      .where((num) => num % 2 == 0)
      .map((num) => num * 2)
      .reduce((soma, num) => soma + num);

// Saída
  print(soma); //Imprime o resultado (12)
  print('-' * 70);
}
