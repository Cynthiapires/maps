void main() {
  Map<String, int> meuMap = {'a': 1, 'b': 2, 'c': 3};

  // Usando entries
  print('-' * 70);
  print('VARREDURA COM FOR IN');
  print('-' * 70);
//Não confundir o método map() com o tipo Map<>
  var resultado =
      meuMap.entries.map((entrada) => '${entrada.key}: {$entrada.value}');

  print(resultado.join(', ')); //Saída: a: 1, b: 2, c: 3
  print('-' * 70);

//Transformação utilizanso uma lista
  List<int> numeros = [1, 2, 3, 4, 5];
  var doubleNumbers = numeros.map((number) => number * 2);

  print(doubleNumbers); //Saída: (2, 4, 6, 8, 10)
  print('-' * 70);
}
