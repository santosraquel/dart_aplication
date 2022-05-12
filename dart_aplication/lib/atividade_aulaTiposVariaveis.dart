import 'dart:io';

/* 
http://dontpad.com/ifpraulahj

>>>> REGRA PARA TODOS: não pode solicitar valores calculados

*/

/* 1) solicitar os dados de um curso. Imprima o nome do curso a carga horária do Curso, quantidade de série, % mínimo de presença,
 a quantidade máxima de faltas e a média para a aprovação do curso. */

void curso() {
  print('Nome do Curso: ');
  String nomeCurso = stdin.readLineSync()!;

  print('Carga horária: ');
  String cargaHoraria = stdin.readLineSync()!;
  double converterCargaHoraria = double.parse(cargaHoraria);

  print('Quantidade de Série: ');
  String quantidadeSerie = stdin.readLineSync()!;
  int converterQuantidadeSerie = int.parse(quantidadeSerie);

  print('% Mínima de presença: ');
  String quantidadeMinPresenca = stdin.readLineSync()!;
  int converterQuantidadeMinPresenca = int.parse(quantidadeMinPresenca);

  print('Quantidade Máxima de faltas: ');
  String quantidadeMaxFaltas = stdin.readLineSync()!;
  int converterQuantidadeMaxFaltas = int.parse(quantidadeMaxFaltas);

  print('Média para aprovação: ');
  String mediaAprovacao = stdin.readLineSync()!;
  int converterMediaAprovacao = int.parse(mediaAprovacao);

  print('''
    ---------------------- DADOS DO CURSO $nomeCurso ---------------------------
      Curso: $nomeCurso,
      Carga Horária: $converterCargaHoraria,
      Quantidade de Série: $converterQuantidadeSerie,
      % Mínima de Presença: $converterQuantidadeMinPresenca,
      Quantidade Máxima de Faltas: $converterQuantidadeMaxFaltas,
      Media para Aprovação: $converterMediaAprovacao,      
    ----------------------------------------------------------------------------
''');
}

/*2) solicitar os dados de um aluno. Imprima o nome, RA, a série atual e idade. */

void aluno() {
  print('Nome do Aluno: ');
  String nomeAluno = stdin.readLineSync()!;

  print('R.A do aluno: ');
  String raAluno = stdin.readLineSync()!;
  int converterRaAluno = int.parse(raAluno);

  print('Série Atual: ');
  String serieAtual = stdin.readLineSync()!;

  print('Informe o ano do seu nascimento: ');
  String anoNascimento = stdin.readLineSync()!;
  int converterIdade = int.parse(anoNascimento);
  converterIdade = 2022 - converterIdade;

  print('''
    ---------------------- DADOS DO Aluno $nomeAluno ---------------------------
      Nome: $nomeAluno,
      R.A: $converterRaAluno,
      Série Atual: $serieAtual,
      idade: $converterIdade,     
    ----------------------------------------------------------------------------
''');
}

/* 3) solicitar os dados de uma disciplina. Imprima o nome da disciplina, a carga horária da disciplina, 
% mínimo de presença e a quantidade mínima de presença.*/

void disciplina() {
  print('Nome da Disciplina: ');
  String nomeDisciplina = stdin.readLineSync()!;

  print('Carga horária: ');
  String cargaHoraria = stdin.readLineSync()!;
  int converterCargaHoraria = int.parse(cargaHoraria);

  print('% Mínima de presença: ');
  String presensaMinima = stdin.readLineSync()!;
  int converterPresensaMinima = int.parse(presensaMinima);

  print('% Mínima de presença: ');
  String quantidadeMinPresenca = stdin.readLineSync()!;
  int converterQuantidadeMinPresenca = int.parse(quantidadeMinPresenca);

  print('''
    ---------------------- DADOS DA $nomeDisciplina ---------------------------
      Disciplina: $nomeDisciplina,
      Carga Horária: $converterCargaHoraria,
      % Presença Mínima: $converterPresensaMinima %,
      Quantidade Mínima de Presença: $converterQuantidadeMinPresenca,     
    ----------------------------------------------------------------------------
''');
}
