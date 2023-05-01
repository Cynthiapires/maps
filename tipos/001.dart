void main() {
  //Declarando um Map
  Map<String, dynamic> agenda = {
    'John': {'idade': 50, 'email': 'john@example.com'},
    'Jane': {'idade': 40, 'email': 'jane@example.com'},
  };

   Map<String, dynamic> cadastro = {
    'nome': 'John Doe',
    'nascimento': 1970,
    'altura': 1.80,
    'est_civil': 'solteiro',
    'cidade': 'Juiz de Fora',
    'uf': 'MG'    
  };

  print('-' * 70);
  print('Minha Agenda');
  print(agenda);
  print('-' * 70);

print('-' * 70);
  print('Meu cadastro');
  print(cadastro);
  print('-' * 70);
}
