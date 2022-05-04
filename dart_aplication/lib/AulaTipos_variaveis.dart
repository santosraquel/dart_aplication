import 'dart:io';

void executar() {
  print('Tipos de Variáveis');

  String nomeProduto = 'Lacta';
  String tipoProduto = 'Chocolate';
  double precoProduto = 10;
  int quantidade = 2;
  double total = precoProduto * quantidade;
  bool disponivel = true;

  // as attribuições aqui são feitas em tempo de execução

  print('Nomde do produto é ' + nomeProduto + ' descrição é: ' + tipoProduto);

  print('Nome do produto é ${nomeProduto} descrição é ${tipoProduto}');

  print(
      'Nome do produto é $nomeProduto descrição é $tipoProduto'); // chaves é recomendado em caso onde há duas variaveis sendo interpolada

  //Quebra de linha
  print('''
      Nome do produto é: $nomeProduto,
      Descrição: $tipoProduto,
      Quantidade: $quantidade,
      Total: $total,
      Disponível: $disponivel,
''');

  dynamic produto = 'Prestigio';
  print(produto);

  produto = 10.0;
  print(produto);

  // a partir do dart 2.12 null safety - por padrão todas as variáveis não podem ser nulas
  String? nome = null;

  var nomeProduto2 = 'Lacta';
  var tipoProduto2 = 'Chocolate';
  var precoProduto2 = 10.05;
  var quantidade2 = 2;
  var total2 = precoProduto * quantidade;
  var disponivel2 = true;

  print('Digite o nome: ');

  var nomePessoa = stdin.readLineSync(); // adiciona quando pressiona enter
  String nomePessoa2 = stdin.readLineSync()!; // o metodo readLineSync() pode retornar null, porém, para garantir que não será retornado nulo colocamos o ponto de exclamação
  print('O nome digitado é: $nomePessoa');


  print('Digite a idade: ');
  String entrada = stdin.readLineSync()!; // adiciona quando pressiona enter
  int idade = int.parse(entrada);
  // parse.double
  print('O nome digitado é: $nomePessoa');
}
