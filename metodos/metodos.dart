void main() {
  
//Length, retorna o tamanho do Map
Map<String, int> mapLength = ('a': 1, 'b': 2, 'c': 3);
print ('Este Map tem tamanho: ${mapLength.length}');
print('-' * 70);

//isEmpty: Retorna true se o Map não contém nenhum par chave/valor.
//isNotEmpty: Retorna true se o Map contém pelo menos um par chave/valor.

dynamic mapVazio = {};
dynamic mapCheio = {'a': 1};

print ('Map vazio? ${mapVazio.isEmpty}'); //true
print('Map cheio? ${mapCheio.isEmpty}'); //false

print ('Map não vazio? ${mapVazio.isNotEmpty}'); //false
print ('Map não cheio? ${mapCheio.isNotEmpty}'); //true
print('-' * 70);

//keys: Retorna um Iterable contendo as chaves do Map.
//values: Retorna um Iterable contendo os valores do Map.
Map<String, int> mapChaveValor = {'a': 1, 'b': 2, 'c': 3};

print (mapChaveValor.keys); // Saída: (a, b, c)
print (mapChaveValor.values); // Saída: (1, 2, 3)
print('-' * 70);

//containsKey: Retorna true se o Map contém a chave especificada.
//containsValue: Retorna true se o Map contém o valor especificado.
Map<String, int> mapContain = {'a': 1, 'b': 2, 'c': 3};
print('O Map contem a chave a: ${mapContain.containsKey('a')}'); //true
print('0 Map contem a chave d: ${mapContain.containsKey ('d')}'); //false

print('0 Map contem o valor 1: ${mapContain.containsValue(1)}'); //true
print('O Map contem o valor 4: ${mapContain.containsValue(4)}'); //false
print('-' * 70);

//putIfAbsent:
//Adiciona um novo par chave/valor ao Map se a chave não existir.
Map<String, int> testeAbsent = ('a': 1, 'b': 2, 'c': 3);
print ('Map original:');
print (testeAbsent);

print ('Adicionando o par chace/valor d:4');
testeAbsent.putIfAbsent('d', () => 4) ; // A chave não existe, adiciona nova
print(testeAbsent); // Saída: {a: 1, b: 2, c: 3, d: 4}
print ('Tentando adicionar o par chace/valor d:5*);
testeAbsent.putIfAbsent('d', () => 5) ; // A chave já existe, não adiciona
print(testeAbsent); // Saída: {a: 1, b: 2, c: 3, d: 4}
print('-' * 70);
//remove: Remove o par chave/valor
Map‹String, int› testeRemove = {'a': 1, 'b': 2, 'c': 3};
print ('Map original: $testeRemove");
testeRemove.remove ('b'); // Remove o par chave/valor com a chave 'b'
print ('Map novo: $testeRemove');
print(testeRemove); // Saída: {a: 1, c: 3}
print('-' * 70);
//update: Atualiza o valor correspondente à chave especificada
Map<String, int› mapUpdate = {'a': 1,
'b': 2, 'c': 3};
print ('Map original: $mapUpdate');
mapUpdate.update('b', (value) => value + 1); // Atualiza o valor para 3
print('Map com o valor da chave b alterado: $mapUpdate');
//A chave d não existe para o Update
//O 2° parâmetro do Update (ifAbsent) vai garantir a inclusão
//caso a chave não exista
mapUpdate. update ('d', (value) => value + 1,
ifAbsent: () =› 4); // Adiciona um novo par chave/valor
print ('Map novo inclusão d:4: $mapUpdate");


}