/* 

01) O que é e para que serve o tratamento de erros?
    RESPOSTA: O desenvolvimento de sistemas de software é um processo bastante 
    suscetível a erros, visto que, não é possível garantir que um sistema esteja 
    100% livre de bugs e incorreções, mesmo que sejam realizadas as fases de 
    análise, implementação e testes de software. Em vista disso, tratar esses 
    erros é de suma importância para que o programa siga seu fluxo normal. 
    Em outras palavras, o tratamento de erros é um mecanismo para tratar exceções 
    de maneira geral. 


02) Quais são as formas de tratamentos de erros?
    RESPOSTA: 
    - Erro em tempo de compilação: são erros usualmente acusados pelo compilador. 
        Exemplo: A atribuição errada de tipos de dados e escrever errado o nome de uma variável.
    - Erro em tempo de execução: erros que ocorrem durante a execução do programa.
        Exemplo: erros de lógica de programação e cálculos incorretos.
    - Condições Excepcionais: quando se apresenta alguma situação fora do fluxo normal de execução
      do programa.
        Exemplo: O usuário digita um CPF inválido.


03) Qual a diferença entre erro e exceção? 
    RESPOSTA: Um erro é uma condição que pode ser considerada irrecuperável, 
    como por exemplo um programa que exija uma quantidade maior de memória do 
    que a disponível. Esses erros não podem ser tratados em tempo de execução. 
    Sendo assim, se ocorrer um erro o programa é encerrado.
    Já a exceção é um evento que pode alterar o fluxo normal do programa.
    Em outras palavras, uma exceção representa um comportamento anormal, 
    indesejado, que ocorre raramente e requer alguma ação imediata, um tratamento
    adequado, em uma parte do programa.
    Tanto os erros quanto às exceções são ocorrências indesejadas durante a execução 
    do programa. Porém a grande diferença entre eles é que as exceções podem ser 
    previstas pelo programador e os erros não. Além disso, as exceções podem ser 
    marcadas ou desmarcadas, porém os erros estão sempre desmarcados. As exceções 
    geralmente indicam um erro causado pelo programador, enquanto que os erros 
    ocorrem devido a um erro do sistema ou no uso inadequado de um recurso. Sendo 
    assim, as exceções devem ser tratadas a nível de programação enquanto que os 
    erros devem ser tratados a nível de sistema. 


04) Qual a diferença entre exceção implícita (contornável) e explícita (incontornável)? 
    RESPOSTA:
    - Exceção implícita: são exceções que não precisam ser tratadas, portanto 
      demonstrar ser contornáveis.
    - Exceção explícita: são exceções que precisam ser tratadas, portanto apresentam
      condições incontornáveis.


05) O que são: (1) throwables; (2) Checked Exception; e (3) Unchecked (Runtime)?
    RESPOSTA: 
    - throwables: é a classe é a superclasse de todos os erros e exceções na 
      linguagem Java. Somente objetos que são instâncias desta classe (ou uma de suas subclasses)
      são lançados pela Java Virtual Machine (JVM) ou podem ser lançados pela throw instrução Java.
    - Checked Exception: são erros que acontecem fora do controle do programa, mas que devem ser
      tratados pelo desenvolvedor para o programa funcionar.
    - unchecked (runtime): são erros que podem ser evitados se forem tratados e analisados pelo
      desenvolvedor. Caso haja um tratamento para esse tipo de erro, o programa acaba parando
      em tempo de execução (Runtime).


06) Quais são os tratamentos de erros existentes no Dart?
    RESPOSTA: 
    - AssertionError: este erro é lançado quando uma instrução assert falha, isto é, 
      nunca deveria ter acontecido.
        Exemplo: não podemos passar dentro de um construtor um valor nulo ou uma string vazia.
    - ArgumentError: Erro lançado quando uma função recebe um argumento inválido.
    - StateError:  erro lançado quando a operação não é permitida pelo estado atual do objeto.
    - TypeError: Erro gerado pelo sistema em tempo de execução quando uma declaração de tipo falha.


07) Quais são as principais exceções existentes no Dart?
    RESPOSTA: 
    - DefferedLoadException: é lançado quando uma biblioteca adiada falha ao carregar.
    - FromatException: é lançada quando uma string ou algum outro dado não tem um formato esperado.
    - IntegerDivisionByZeroException: É lançado quando o número é dividido por zero.
    - IOEException: É a classe base das exceções relacionadas a entradas e saídas.
    - IsolateSpawnException: Ele é lançado quando um isolado não pode ser criado.
    - Tempo esgotado: É acionado quando ocorre um tempo limite programado durante a 
      espera por um resultado assíncrono.


08) O que é e como funciona o try/catch? Em que caso devemos utilizar? 
Há uma camada da aplicação correta em utilizá-lo? Exemplifique.
    RESPOSTA: O bloco try/catch é utilizado para tratar exceções. Este conjunto 
    atua capturando as possíveis exceções em seu código e, com o objetivo de impedir
    fluxos inesperados, ele mesmo determina o que fazer na ocorrência de exceções.
    O bloco try tenta processar o código que está dentro, sendo que se ocorrer uma 
    exceção, a execução do código pula para a primeira captura do erro no bloco catch.
    O uso do try serve para indicar que o código está tentando realizar algo arriscado no sistema.
    O objeto de exceções é o objeto gerado pelo método/função em que ocorreu o erro. 
    O objeto de exceção contém informação sobre a exceção incluindo seu tipo e o 
    estado do programa quando o erro ocorreu.
    Já o bloco catch trata a exceção lançada. Caso a exceção não seja esperada, 
    a execução do código pula para o próximo catch, se existir. Portanto, se 
    nenhum do bloco catch conseguir capturar a exceção, dependendo o tipo que for, 
    é causada a interrupção ao sistema, lançando a exceção do erro.
    O objeto StackTrace é o segundo parâmetro do bloco catch. Este objeto traz 
    todas as informações sobre o erro/exceção.

     Sintaxe: 

        private void Rotina( ) {
          try {
            // Codigo a ser tratado
          } catch (e, s) {
            // tratamento de erro
          }
        }


09) O que é e como funciona o on e final no tratamento de erros? 
Em que caso devemos utilizar? Há uma camada da aplicação correta em utilizá-lo? Exemplifique.
    RESPOSTA: Se você não usa uma instrução On Error, qualquer erro de tempo de 
    execução que ocorrer será fatal; ou seja, uma mensagem de erro é exibida e a 
    execução é interrompida.
   - On: On the block é usado quando há 100% de certeza de que tipo de exceção será lançada.
   - Final: A parte final é sempre executada, mas não é obrigatória.


10) O que é e como funciona o rethrow? Em que caso devemos utilizar? Exemplifique.
    RESPOSTA: O rethrow é o comando para lançar novamente uma exceção capturada, 
    sendo assim utilizamo quando queremos relançar uma exceção.
    Sintaxe: 
        private void Rotina( ) {
          try {
            // Codigo a ser tratado
          } catch (e) {
            // tratamento de erro rethrow;
          } 
        }


11) No try/catch, o que é captura de erros? Como é realizada - sintaxe? 
Quais são os tipos de capturas possíveis? Quais são as diferenças? 
    RESPOSTA: Um bloco catch:
                – Captura, isto é, recebe e trata uma exceção.
                – Começa com a palavra-chave catch.
                – Parâmetro de exceção entre parênteses – o parâmetro de exceção
                identifica o tipo de exceção e permite que o bloco catch interaja
                com o objeto da exceção capturada.
                – Bloco do código entre chaves que executa quando uma exceção
                do tipo adequado ocorre.
                - Bloco catch correspondente – o tipo do parâmetro de exceção
                corresponde exatamente ao tipo de exceção lançado ou é uma
                superclasse dele.
                - Exceção não-capturada – uma exceção que ocorre para a qual
                não há nenhum bloco catch correspondente.
    Sintaxe: 
        private void Rotina( ) {
          try {
            // Codigo a ser tratado
          } catch (e) {
            // tratamento de erro
          } 
        }

12) Explique e exemplifique o uso das cláusulas on e finally no bloco try-cath. 
    RESPOSTA:  A cláusula on é utilizada para especificar o tipo de erro/exceção 
    que está sendo tratado.
    Já o bloco finally sempre finaliza a sequência de comandos do sistema, 
    independente de ocasionar algum erro no sistema. Esse bloco é opcional, 
    não sendo obrigatório sua inserção na sequência try/catch. É usado em ações 
    que sempre precisam ser executadas independente se gerar erro. Um exemplo é 
    o fechamento da conexão de um banco de dados.
  Sintaxe: 

        private void Rotina( ) {
          try {
            // Codigo a ser tratado
          } on Exception catch (e, s) {
            // tratamento de erro
          } finally {
            // operação de limpeza
          }
        }

13) É possível criar exceções específicas? Se sim, em que caso podem ser utilizas? 
Quais são os cuidados que devemos ter. Exemplifique.
    RESPOSTA: Sim, é possível. Criamos nossa própria exceção quando não existe 
    uma exceção específica para tratar um determinado erro. 
      Exemplo: Se quisermos lançar uma exceção toda vez que determinada letra 
      não estiver presente em uma frase. Criamos uma exceção para isso.

14) Implemente o try-catch (com relevância) nas funções do seu projeto – pelo menos 5 funções. 
Faça o tratamento de erro específico e geral. 
    RESPOSTA: https://github.com/santosraquel/projeto_software/tree/master

15) Analise o seu projeto e crie exceções específicas que facilite a localização e a
manutenção do projeto.
    RESPOSTA:  https://github.com/santosraquel/projeto_software/tree/master


16) O que é e para que serve o Either? Qual a relação e qual a diferença com o try-cath? 
Faça um exemplo no contexto do seu projeto.
    RESPPOSTA: Either é uma classe que possibilita retornarmos dois valores distintos.
    Ambos funcionam exatamente como Option, com a diferença de que com Ou você pode retornar uma String que descreve o problema que ocorreu.

    O Either tem dois filhos que são nomeados como  Direita  e  Esquerda, onde 
    Direita é semelhante à  classe Alguns e Esquerda é igual à classe Nenhum. 
    Esquerda é usada para a falha onde, podemos retornar o erro ocorrido dentro 
    do filho Esquerda de Qualquer e Direita é usada para Sucesso.
    https://github.com/santosraquel/projeto_software/tree/master
*/