void main() {
  Map<String, int> meuMap = {'a': 1, 'b': 2, 'c': 3, 'd': 4};

  // Usando entries
  print('-' * 70);
  print('FILTRAGEM COM MÉTODO REDUCE()');
  print('-' * 70);
  dynamic somatorio = meuMap.values.reduce((v, e) => v + e);
  /*
  Como Funciona
  Valor (v) - Elemnto (e)
          1 + 2 = 3
          3 + 3 = 6
          6 + 4 = 10
  */

  print('A soma dos valores é: ${somatorio}');
    print('-' * 70);

}
