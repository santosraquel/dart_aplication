/*
Exercício 01 - implemente as funções

a) Função que solicite um número e realizar validações: (1) se é par; (2) maior que zero; (3) se é um número primo.
função "hospedeira" : solicitar um número 

b) Função que solicite a data inicial e retorne quanto tempo passou em: (1) anos; (2) dias; e (3) horas.

c) Função que solicite a quantidade de dias trabalhadas, valor que recebe por hora e calcule o salarário para: (1) auxiliar; (2) júnior; e (3) pleno.

Exercício 02 - para cada função "hospedeira", defina uma função anônima.
*/

import 'dart:io';

void show() {
  calcularSalario(() {
    print('''
        1) Auxiliar
        2) Júnior
        3) Pleno
    ''');
    String opcao = stdin.readLineSync()!;
    int converterOpcao = int.parse(opcao);
    return converterOpcao;
  });

  solicitarNumero(() {
    String numero = stdin.readLineSync()!;
    var convertertNumero = int.parse(numero);
    return convertertNumero;
  });
}

void solicitarNumero(Function numero) {
  int converterNumero = numero();

  if (converterNumero % 2 == 0) {
    print("O número é par!");
  }
  if (converterNumero > 0) {
    print("O número é maior que zero!");
  }
  if (converterNumero % 1 == 0 && converterNumero % converterNumero == 0) {
    print("O número é primo");
  }
}

// void solicitarData() {
//   String data = stdin.readLineSync()!;
// }

double calcularSalario(Function opcao) {
  String qtdDias = stdin.readLineSync()!;
  int dias = int.parse(qtdDias);

  String valorHora = stdin.readLineSync()!;
  double valor = double.parse(valorHora);

  int converterOpcao = opcao();

  if (converterOpcao == 1) {
    valor = valor * dias;
  }
  if (converterOpcao == 2) {
    valor = valor * dias;
  }
  if (converterOpcao == 3) {
    valor = valor * dias;
  }
  return valor;
}


// a função hospedeira recebe a função anônima