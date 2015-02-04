Stage
=====

Leituras
1 - [Resilience Assessment and Evaluation of Computing Systems](#1)
2 - [Emulation of Software Faults - A Field Data Study and a Practical Approach](#2)
3 - [Basic Concepts and Taxonomy of Desendable and Secure Computing](#3)


#### 1 <b>Resilience Assessment and Evaluation of Computing Systems</b>
Cloud Computing - novo paradigma
providencia recursos prontos para entregar (disponiveis)

promete reduzir significativamente os custos (lower voltage levels, reduce noise margins and increase clock rates)

Resiliencia - Capacidade do sistema recuperar de falhas
QOS - quality of Service
"Server sprawl" - referencia o crescimento do numero de servidores com uma utilização muito reduzida

Lawrence Berkley estudou que o consumo de energiia dos servidores duplicou de 2000 a 2005
Em 2006 so os USA gastaram 61TW-h

TCO - Total-Cost-of-Ownership
IDC - Estudos e planeamento estratégico, desenvolvimento e Markting em tecnologias de informação
ICT - Information and Communications Technology

Hoje em dia ICT 2 - 4 % CO2
                10% daqui a 5 - 10 anos

Reduzir os custos do ICT e o seu impacto no meio ambiente enquanto se mantem o alto crescimento da taxa de serviços de ICT é um dos grandes desafios da sociedade

Cloud Computing - novo paradigma que providencia processamento, rede e armazenamento

3 niveis de Cloud Computing:
    i) Infrastructure-as-a-Service (IaaS)
    ii) Platform-as-a-Service (PaaS)
    iii) Software-as-a-Service (SaaS)

Confiança nos serviçoes da cloud:
    - disponibilidade
    - responsabilidade
    - segurança

Perturbações externas: 
    -  Ataques de segurança
    -  Acidentes
    -  Picos de corrente inesperados
    -  Falhas de carga / funcionamento
    -  Worms e DDOS attacks

SLA's - Service Level Agreement

#### 2
<b>Emulation of Software Faults - A Field Data Study and a Practical Approach</b>
COTS - Components of the shelf

Important emulation requirements
 - Fault representativeness
 - Emulation accuracy

3 usos importantes relativamente a falhas de software:
 - Validação dos mecanismos de tolerancia a falhas
 - Previsão dos piores cenarios possiveis e a avaliação dos riscos das experiencias
 - Dependability benchmarking

O problema principal relacionado com a injecção de falhas de software é a representação das mesmas.
Para além da emulação precisa dos defeitos escondidos num programa, que obviamente não é possivel, uma vez que os mesmos não são conhecidos anteriormente (se fossem conhecidos, já tinham sido corrigidos). 

Dada esta impossibilidade:
 1 - Identificação e caraterização das mais importantes classes de falhas de software e a sua estimação.
 2 - ...

The most difficult problem is clearly the identification of the most likely classes of software faults

851 - ODC - Orthogonal Defect Classification
is intended to provide feedback to the development process, provides useful defect classification (paper do duraes)

Tandem systems- O que é? são sistemas baseados na tolerancia a falhas, usados em ATM networks, banks, stock exchanges, telephone switching centers and other similar commercial transaction processings applications requiring maximum uptime and zero data loss.

85% dos erros gerados por mutações são produzidos por falhas reais

Abordagens a sistemas de injecção de falhas:
 - baseados em hardware especifico
 - simulação de sistemas
 - software

851 - Generic Software Fault Injection Technique G-SWFIT - o que é?
    recria erros do programador
    modifica o ready-to-run binary code


 SWIFI - Software Implemented Fault Injection
 Tornou-se muito popular devido à sua baixa complexidade e à baixa necessidade de conhecimentos de programação, quando comparada com outras abordagens de injeção de falhas.

    Ferramentas:
        - Ferrari
        - FTAOPE
        - Xception
        - Goofi

 Outras tecnicas injetam falhas atraves da corrupção de parametros das chamadas API -> pode ser consederada como uma possivel consequencia de uma falha de software.

 A injeção de falhas é usada em muitas investigações onde as falhas de software sao a classe de falhas dominantes.

 Emulação dos erros mais comuns dos programadores é proposto como o melhor esforço "best-effort. usado no 9 e no 41.

IMPORTANTE
 the software faults that we would like to emulate by fault injection are the faults originated during the coding phase that have not been detected by the testing procedures.

Classificação de falhas:
1 - ODC
2 - agrupar consoante a natureza da falha - missing, wrong, superfluous
3 - refinar as falhas e classificadas em tipos especificos

de acordo com o ODC ,19 , 27, uma falha de software é caraterizada por uma mudança no código, em que seja necessário corrigir o mesmo

Escolha de aplicações:
 - não muito simples
 - devem produzir output deterministico
 - o codigo deve estar disponivel

#### 3
<b>Basic Concepts and Taxonomy of Desendable and Secure Computing</b>
Taxonomy Paper
Definição de conceitos base:
- dependability encompasses:
    - reliability
    - availability
    - safety
    - integrity
    - maintainability

    additional attribute:
    - confidentiality

Sistemas de comunicação e computadores caraterizados por:
- functionality
- performance
- dependability & security
    - usability
    - manageability
    - adaptability
- cost

Fault prevention,  prevenção
Fault tolerance,   tolerancia
Fault removal,     remoção
Fault forecasting, previsão

http://sebokwiki.org/wiki/FAA_Advanced_Automation_System_%28AAS%29_Vignette

Primary security attributes:
- confidentiality
- integrity
- availability

Robustness -> Dependability with respect to external faults, which characterizes a system reaction to a specific class of faults.

Testes que necessitam de falhas ou erros para fazerem parte dos testes de padroes, usualmente denominado de INJECÇÃO DE FALHAS!!!