Estágio [1915] - Avaliação da Robustez de Plataformas Cloud
=====


* [Orientadores](#orientadores)
* [Júri](#juri)
* [Opção Temática](#opcao-tematica)
* [Local do Estágio](#local-do-estagio)
* [Enquadramento](#enquadramento)
* [Objetivo](#objetivo)
* [Plano de Trabalhos - Semestre 1](#plano-de-trabalhos-semestre-1)
* [Plano de Trabalhos - Semestre 2](#plano-de-trabalhos-semestre-2)
* [Condiçoes](#condicoes)
* [Observações](#observacoes)

### Reuniões
* [Reunião do dia 26/03/2015](#reuniao-26032015)
* [Reunião do dia 17/03/2015](#reuniao-17032015)
* [Reunião do dia 03/03/2015](#reuniao-03032015)
* [Reunião do dia 26/02/2015](#reuniao-26022015)
* [Reunião do dia 13/02/2015](#reuniao-13022015)
* [Reunião do dia 05/02/2015](#reuniao-05022015)
* [Reunião do dia 20/01/2015](#reuniao-20012015)
* [Reunião do dia 12/01/2015](#reuniao-12012015)

### Orientadores
* Orientador DEI: Raul Barbosa (rbarbosa@dei.uc.pt) - RB
* Co-Orientador: Henrique Madeira(henrique@dei.uc.pt) - HM

### Juri
* Juri Arguente: Filipe Araújo (filipius@dei.uc.pt)
* Juri Vogal: António Jorge Silva Cardoso (jcardoso@dei.uc.pt)

#### Reuniao 26/03/2015

1 - Implementar os 18 OPERADORES da tabela dos mais representativos (Table 11).
2 - Continuar o estudo da API e quiçá, fazer um patch para conseguir reescrever a árvore
3 - Estudar melhor o resto dos operadores, principalmente os que o João Durães não especificou:
    - MFCT
    - WLEC
    - WALL
    - WSUT
    - EVAV


#### Reuniao 17/03/2015

Verificar se é possível implementar todos os operadores com a solução usada até agora, em que se implementa apenas o mifs.

Continuar com a solução encontrada, mas tentar perceber um pouco melhor a framework e a forma de a hackar para conseguir reescrever a árvore.

#### Reuniao 03/03/2015
Decisão entre:
 - Bison -
 - Yacc -
 - GCC Parser - Curva de aprendizagem bastante grande e dificilmente mantivel
 - API Eclipse CDT - API em Java, facilmente mantivel
 - MCPP - Anteriormente utilizado pelo Natella

2 Fluxos:
 - CDT - estudar o fluxo e fazer a aplicação de um operador na árvore
 - SAFE - Conhecer melhor o fluxo, e a forma que o Natella usa para injetar as falhas

#### Reuniao 26/02/2015

Continuar o estudo das diferentes ferramentas de parsing.
Examinar com maior detalhe a ferramenta do Natella.

#### Reuniao 13/02/2015

Vantagens e desvantagens GCC parser vs Bison/Yacc vs CDT Parser

GCC Parser
- mais limpo e sustentável que o Bison
- maior performance, melhor feedback de erros, capacidade de recuperar de problemas
- Recursive-descent parser
- Performance: something that you've hand-optimized for your particular task will almost always perform better than a general solution. Abstraction usually has a performance hit
- Timing: at least in the case of GCC, GCC predates a lot of free developer tools (came out in 1987). There was no free version of yacc, etc. at the time, which I'd imagine would've been a priority to the people at the FSF.

Bison
CDT Parser
MCPP - Portable C PreProcessor - Robert Natella - SAFE

#### Reuniao 05/02/2015
<b>Description</b># ## # ## # ## ## ## # # ##
Decisão: Injeção de falhas de software em ficheiros antes de compilar

Analisar os 13 tipos de falhas selecionadas pelo João Durães, relativamente à sua implementação em código antes de compilar, constraints, etc

Xen         vs      KVM
  +
Citrix ✔  (CentOS ✔-)


Foco em:

    Parser GCC
    .C (devido à seleção do tipo de falhas feita anteriormente pelo João Durães.)
.Java

Ratings das linguagens mais usadas:
[Comparação jan 2014 vs jan 2015](http://www.tiobe.com/index.php/content/paperinfo/tpci/index.html)
[Ultimo update 25 Outubro 2013](http://langpop.com/)

Validar/Verificar:
C semelhante/igual ao parser?

|    |   SW  |   HW  |
|:--:|-------|-------|
| HW |   ?   |  HWFI |
| SW | SWIFI | SWIFI |



#### Reuniao 20/01/2015

<b>Description</b>

Injeção de Falhas de software com 3 possibilidades:
    1 - <u> Ficheiro antes de compilar </u>
    2 - Ficheiros em código objeto
    3 - <u> Programa a executar </u>

Decidir entre a 1 e a 3. Ou injetar falhas de software em ficheiros antes de compilar
ou então injetar falhas em programas a executar.
Porquê?
Existe a mesma probabilidade de acontecimento de ambas as falhas?

HM direciona para a linguagem C ou C++, uma vez que são as linguagens nas quais eles
já trabalharam e obtiveram resultados.

Já existem 12? tipos de falhas de software documentadas no papper do Duraes.

Usar o compilador gcc ou o llvm? porque? vantagens e desvantagens?

    gcc
        + mais maduro
        + instalação fácil
        + compilador por defeito na maioria dos SO's
        + usado anteriormente
    llvm
        + bastante recente
        + melhor feedback de erros
        + por vezes executa mais rápido
        + sem qualquer tipo de conhecimentos prévios de utilização


[Robert Natella](http://wpage.unina.it/roberto.natella) desenvolveu uma ferramenta de injeção de falhas de software.
(enviado email no dia 27/01/2015)

Clarificar objetivos e decidir o caminho (2 a 3 semanas para estar traçado!!!)

#### Reuniao 12/01/2015

<b>Tasks</b>
    ☐ Leitura de documentos
    ☐ Escrita do estado da arte

<b>Description</b>
    Discussão relativamente aos objetivos e às tarefas que vão ser atribuídas:

    * Fred já tem grande parte do injetor de falhas de hardware feita
    * João também tem um injetor funcional (apesar de complexo) e está a fazer a interface web usando struts2

    HM: Direcionar o estágio para software uma vez que a parte de hardware está
    encaminhada ou ajudar ambos a integrar a aplicação de forma a meter tudo funcional?

    Definição de objetivos programada para Sexta, dia 16/01/2015

<b>Suggested modules</b>

    Bus, Cache, etc (HW)
    Software faults (muito trabalho)
    VM injection vs. host injection
    Web framework


### Opção Tematica

Engenharia de Software

### Local do Estagio

DEI-FCTUC

### Enquadramento

Tem-se assistido a um aumento da utilização de serviços em ambientes cloud, caracterizados pela colocação dos dados e do software em infraestruturas remotas. Apesar dos inúmeros benefícios, a fiabilidade destas plataformas não tem acompanhado as necessidades, sendo que os utilizadores confiam as suas aplicações a sistemas fora do controlo pessoal.

Neste contexto, surge naturalmente o problema da confiança depositada na entidade que gere a plataforma onde as aplicações executam. Qualquer organização que coloque uma aplicação na cloud (por exemplo, no EC2 da Amazon ou Azure da Microsoft) terá de aceitar as garantias dadas pelo fornecedor do serviço.

Este estágio aborda o desafio de avaliar a robustez de plataformas cloud. O fornecedor do serviço computacional usa virtualização para gerir e repartir o poder computacional em função das necessidades reais da aplicação. Apesar de existirem plataformas sólidas de virtualização, a tolerância a falhas é ainda um problema de investigação

### Objetivo

Este estágio tem dois objetivos fundamentais:

- Integração de ferramentas de avaliação da robustez, por forma a realizar testes em máquinas virtuais.

- Definição e implementação de modelos de falha para ambientes cloud, suportados por tecnologias de virtualização.

Por forma a avaliar a robustez de plataformas cloud, é importante determinar o tipo de testes que devem ser realizados, bem como a forma de os realizar. Numa primeira análise, as aplicações que executam na cloud estão sujeitas tanto a falhas de hardware como de software. É então necessário definir claramente os modelos de falha que serão posteriormente considerados para testar as plataformas virtualizadas.

O ambiente será então composto por um conjunto de máquinas virtuais, fazendo uso de Linux (por exemplo, Citrix ou CentOS) e uma plataforma de virtualização (por exemplo, Xen ou VMWare). Por forma a testar o sistema, pretende-se integrar um conjunto de ferramentas capazes de introduzir falhas e avaliar a resposta do sistema a essas mesmas falhas.

### Plano de Trabalhos - Semestre 1

<b>- Estudo do estado da arte e levantamento de requisitos (mês 1).

A primeira fase consistirá em tomar contacto com tecnologias de virtualização e aplicações para a cloud, bem como a familiarização com os desafios de segurança e confiabilidade acima referidos. Isto resultará numa clara formulação dos objetivos a alcançar por parte do estagiário.
</b>
- Construção do ambiente cloud (meses 2 a 4).

Esta tarefa consiste na seleção e instalação de uma plataforma de virtualização que permitirá realizar os testes para avaliar a sua robustez.

- Primeira fase de integração de ferramentas de avaliação (meses 2 a 4).

Durante o primeiro semestre, pretende-se que a ferramenta de avaliação de robustez seja capaz de introduzir falhas muito simples, simulando falhas de <strike>hardware</strike>. Esta primeira fase permitirá obter um conjunto de resultados para demonstrar as capacidades da ferramenta.

- Escrita do relatório intermédio (mês 5).

O estagiário deve apresentar as tarefas efetuadas durante o primeiro semestre e descrever o trabalho a realizar no segundo semestre, escrevendo para esse efeito um relatório intermédio e preparando uma apresentação pública para discussão.

### Plano de Trabalhos - Semestre 2

- Desenho e implementação de meios de avaliação avançados (meses 6 e 7).

Nesta tarefa o estagiário irá desenhar e implementar as primitivas que permitirão à ferramenta avaliar a robustez de aplicações virtualizadas em relação a falhas de software.

- Segunda fase de integração de ferramentas de avaliação (meses 8 e 9).

Esta tarefa consiste na continuação do desenvolvimento da ferramenta de avaliação, elevando o seu nível de sofisticação por forma a representar da melhor forma um ambiente cloud. No final, deverá obter-se um ambiente o mais próximo da realidade e ser-se capaz de avaliar esse mesmo ambiente.

- Escrita do relatório final (mês 10).

O estagiário deve apresentar todo o trabalho levado a cabo no decorrer do estágio. Para tal, deverá escrever uma tese descrevendo o problema e a sua solução, bem como preparar a sua apresentação e discussão pública.

### Condicoes

O trabalho irá ser realizado no Departamento de Engenharia Informática da Universidade de Coimbra e haverá possibilidade de candidatura a uma bolsa para estagiário com Licenciatura para apoiar os trabalhos do segundo semestre (745€ mensais).

### Observacoes

Dar-se-à preferência a alunos que tenham tido um bom desempenho às disciplinas no âmbito do trabalho proposto (nomeadamente Sistemas Distribuídos, Sistemas Operativos, e Integração de Sistemas).

#### Reuniao X/01/2015

<b>Tasks</b>
    ☐ task1

<b>Description</b>

<b>Suggested modules</b>
