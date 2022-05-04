import 'dart:io';

void show() {
  print('\n***exemplo de função sem retorno e sem parâmetro***');
  /*
  as funções sem retorno e sem parâmetros geralmente são utilizadas para definir módulos locais 
  exemplo: (1) funções específicas de interface, (2) funções de persistência de dados
  */

  //chamada da função sem retorno e sem parâmetro que definimos logo abaixo...
  // verificarAprovacao();
  salario();

  /*
  *ERRO de sintaxe - atribuição em uma variável da nossa função que não tem retorno
  var valor = calcularMedia();
  */
}

/*
Atividade I
→ descontar - receber salario e o valor do desconto. Realizar o cálculo e informar se o total é positivo.
*/
void salario() {
  double salario, desconto, resultado;

  stdout.write('Salário: ');
  var entradaSalario = stdin.readLineSync()!; //o usuário poderá informar null
  salario = double.parse(entradaSalario);

  stdout.write('Desconto: ');
  var entradaDesconto = stdin.readLineSync()!; //o usuário poderá informar null
  desconto = double.parse(entradaDesconto);

  resultado = salario * (desconto / 100);

  if (resultado > 0) {
    print('Resultado positivo');
  } else {
    print('Resultado Negativo');
  }
}

//definindo uma função sem retorno e sem parâmetro
void verificarAprovacao() {
  double nota1, nota2, media;

  stdout.write('1º nota: '); //stdout.write - imprime sem a quebra de linha
  var entrada = stdin.readLineSync(); //o usuário poderá informar null
  if (entrada != null) {
    nota1 = double.parse(entrada); //se não é nulo, convertemos
  } else {
    nota1 = 0.00;
  }

  stdout.write('2º nota: ');
  nota2 = double.parse(
      stdin.readLineSync()!); //desta forma se é nulo, o cóigo não funciona

  media = (nota1 + nota2) / 2;

  if (media > 6) {
    print('aprovado');
  } else {
    print('reprovado');
  }
}
