/* Funções Anônimas

Contexto 
 A função anônima geralmente é utilizda quando uma função que tem dados mas tem várias ações que variam.

 funções que precisam dos dados e das ações.

*/

// import 'dart:io';

String verificarAprovacaoCompleto(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    // aprovação pela média
    double media = (nota1 + nota2) / 2;
    if (media >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  } else if (opcao == 2) {
    // aprovação pela maior nota
    double maior = nota1;
    if (nota2 > nota1) {
      maior = nota2;
    }
    if (maior >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  } else {
    // aprovação pela menor nota
    double menor = nota1;
    if (nota2 < nota1) {
      menor = nota2;
    }
    if (menor >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  }
}

void show() {
  String resultado = verificarAprovacao(1, 5.5, 6.0);
  print(resultado);

  verificarAprovacao2(10, 5, verificarPelaMedia);
}

// FUNÇÃO ANÔNIMAS: utilizada quando temos uma função que será executada somente uma única vez

// String show2() {
//   verificarAprovacao2(10, 5, (nota1, nota2) {
//     double media = (nota1 + nota2) / 2;
//     if (media >= 6) {
//       return 'Aprovado';
//     } else {
//       return 'Reprovado';
//     }
//   });
// }

// ARROW FUNCTIONS: Quando temos uma função com uma única linha de código
// String show3() {
//   verificarAprovacao2(
//       10,
//       5,
//       (nota1, nota2) =>
//           (((nota1 + nota2) / 2) >= 6) ? 'aprovado' : 'reprovado');
// }

String verificarAprovacao(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return verificarPelaMedia(nota1, nota2);
  } else if (opcao == 2) {
    return verificarPelaMaiorNota(nota1, nota2);
  } else {
    return verificarPelaMenorNota(nota1, nota2);
  }
}

String verificarAprovacao2(double nota1, double nota2, Function acao) {
  return acao(nota1, nota2);
}

String verificarPelaMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  if (media >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarPelaMaiorNota(double nota1, double nota2) {
  double maior = nota1;
  if (nota2 > nota1) {
    maior = nota2;
  }
  if (maior >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

String verificarPelaMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) {
    menor = nota2;
  }
  if (menor >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

/*

GitProfessor: https://github.com/heliokamakawa/flutter_course/blob/master/module4/b_anonymous_functions/lib/e_atividade_aprendizagem.dart

Atividade I 

Arquivo a - Conseguiu entender o contexto? Explique.

Arquivo b 
1). Qual a diferença entre a 1º e a 2º forma? Na sua opinião, o que melhorou 
e o que piorou?

  RESPOSTA: 
  OBS: Separando as ações em outras funções
  A diferença entre a 1ª e a 2ª forma é que no primeiro exemplo temos uma função
  que dificulta o entendimento por conter várias ações, o dificulta também a manutenção do software.
  Já na 2ª forma com as ações separadas em funções o código fica mais legivel, além de também facilitar a 
  manutenção do código. Pois se caso surgir um bug o programador saberá onde extamente ocorreu o erro
  devido as funcionalidades estarem separadas. Além disso, separando o código em funções facilita o desenvolvimento 
  de testes unitários.

  OBS: Passando outra função como parâmetro de outras função
  A diferença entra a 1ª e a 2ª forma é que no primeiro exemplo nossa função recebia somente como parâmetro
  atributos normais (opcao, nota1 e nota2), já na 2ª forma além dos atributos normais (nota1 e nota2) recebemos como 
  parâmetro uma outra função. A vantagem de passar uma função como parâmetro de outra é que podemos utilizar dados
  que estão sendo manipulados em uma outra função de forma indireta.

2). O que é e para que serve parâmetros do tipo função? Em que caso utilizamos? OBS: Passar uma função como parâmetro
  Parâmetros do tipo função é quando temos uma função que recebe como parâmetro/argumento outra função.
  Utilizamos isso, quando necessitamos que uma função trabalhe com dados que estão em outra função.

3) O que é função nomeada? Para que serve? Quando utilizamos?
  Uma função nomeada como o próprio nome sugere é uma função que possui nome.
  A função nomeada serve para que possamos chamá-la em qualquer parte do nosso código
  sempre que desejarmos por meio do seu nome.

Arquivo c 
1) Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?

  FALTA RESPONDER 
2) Entendeu melhor o objetivo do parâmetro do tipo função?
  Sim.

3) O que é e para que serve uma função anônima?
  Uma função anônima é uma função que não possui nome. Ela é utilizada quando temos um bloco de código
  que precisará ser executado uma única vez.

4) Qual a diferença entre função anônima e nomeada? Em qual situção utilizamos cada uma? 
Pode-se utilizar ambas no mesmo contexto? Explique.
  A diferença entre a função nomeada e a função anônima é que a função nomeada conseguimos chamá-la em qualquer parte
  do nosso programa, já a função anônima por não possui nome não conseguimos chamála.
  Utilizamos a função nomeada sempre que tivermos um bloco de código que será executado diversas vezes, já a função 
  anônima quando temos um bloco de código que será executado uma única vez.
  Sim, conseguimos 

Arquivo d - 
1) Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?
*/

/*
Exercício II - Defina 3 funções do mesmo contexto e um menu para estas funções
Nesta prática, eu já estou definindo o contexto. Assim, o objetivo é você entender e treinar a sintaxe.
→ Receber salario e um valor. Adicionar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargo de 10%. Adicionar o bônus
(já com o desconto do encargo) no salário e informar o % adicioando em relação ao salário.
→ Menu para acesso das funções
*/

void show2() {
  opcoes(1, 1000.00, 10.0);
  opcoes(2, 1000.00, 10.0);
  opcoes(3, 1000.00, 10.0);
}

double opcoes(int opcao, double salario, double valor) {
  if (opcao == 1) {
    return bonificar(salario, valor);
  }
  if (opcao == 2) {
    return descontar(salario, valor);
  } else {
    return encargo(salario, valor);
  }
}

double bonificar(double salario, double valor) {
  double bonificacao = salario * (valor / 100);
  salario = salario + bonificacao;
  return salario;
}

double descontar(double salario, double valor) {
  double desconto = salario * (valor / 100);
  salario = salario - desconto;
  return salario;
}

double encargo(double salario, double valor) {
  double desconto = salario * (valor / 100);
  salario = salario - desconto;
  return salario;
}


/*
Atividade III
Pensar em um projeto único 
Fazer um exemplo seu

OBS: Está no meu repositório do GitHub:

https://github.com/santosraquel/projeto_software/tree/master

*/


