import 'dart:io';

void estruturaIf() {
  var idade = 20;

  if (idade > 18) {
    print('É maior');
  } else {
    print('É menor');
    print('...');
  }
}

/*estrutura de decisão*/

// 1)solicitar o quantitativo de presença e informar se o aluno está reprovado por falta.

void quantidadePresenca() {
  print('Informe a quantidade de presença: ');
  String quantidade = stdin.readLineSync()!;
  int converterQuantidade = int.parse(quantidade);

  if (converterQuantidade > 50) {
    print("ALUNO APROVADO");
  } else {
    print("ALUNO REPROVADO");
  }
}

// 2) solicite 3 notas e informe: (1) a maior nota, (2) a média e a (3) menor nota.

void notas() {
  print("Nota 1: ");
  String nota1 = stdin.readLineSync()!;
  double converterNota1 = double.parse(nota1);

  print("Nota 2: ");
  String nota2 = stdin.readLineSync()!;
  double converterNota2 = double.parse(nota2);

  print("Nota 3: ");
  String nota3 = stdin.readLineSync()!;
  double converterNota3 = double.parse(nota3);

  double resultado = (converterNota1 + converterNota2 + converterNota3) / 3;

  if (converterNota1 > converterNota2 && converterNota1 > converterNota3) {
    print("A maior nota é: $converterNota1");
  }
  if (converterNota2 > converterNota1 && converterNota2 > converterNota3) {
    print("A maior nota é: $converterNota2");
  }
  if (converterNota3 > converterNota1 && converterNota3 > converterNota2) {
    print("A maior nota é: $converterNota3");
  } else {
    print("Média aritmética das notas: $resultado");
  }
}

void imprimirNumeros() {
  for (int cont = 1; cont < 100; cont++) {
    if (cont % 5 == 0) {
      if (cont % 2 != 0) {
        print(cont);
      }
    }
  }
}

void lista() {
  var lista = <String>[];
  lista.add("Raquel");
  lista.add("Lucas");

  // for (var nome in lista) {
  //   print(nome);
  // }

  // for (var cont = 0; cont <= lista.length; cont++) {
  //   print(lista[cont]);
  // }

  var cont = 0;
  // while (cont < lista.length) {
  //   print(lista[cont]);
  //   cont++;
  // }

  do {
    print(lista[cont]);
    cont++;
  } while (cont < lista.length);
}


// função anonima

// lista.forEach({
//   (nome) {
//     print(nome);
//   }
// });

// arrow function
// lista.forEach({(nome) => print(nome);});