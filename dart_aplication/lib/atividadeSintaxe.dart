import 'dart:io';
// Atividade II → Realize as atividades abaixo

//Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.

//Exercício 2 - refaça o exe anterior, convertendo a named function em anonymous function.

//Exercício 3  - refaça o exe anterior, utilizando a arrow function.

//Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.

//Exercício 5  - refaça o exe c porém fazendo uma validação sua.

//Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.

/*
  Exercício - Conseguiu entender:
    1) O contexto em que é útil utilizar funções anônimas?
    
    2) Os requisitos necessários para usar funções anônimas? 

    3) diferença entre função nomeada e anônimas?

    4) diferença entre anonymous function e arrow function?
    
    5)Em que caso devemos utilizar Arrow Function? O que devemos considerar?
*/

void show() {
  adicionarSalario(1000.00, 200.5, eValido(2.5));
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}

double eValido(double valor) {
  double valorRecebido = valor;
  return valorRecebido;
}
