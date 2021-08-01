# TRABALHO 01:  Controle de Vacinação
Trabalho desenvolvido durante a disciplina de BD1 no semestre 2021/1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Matheus Henrique:email_primeiro_componente@dominio.com<br>
George Matheus:matheuss308@gmail.com<br>
Lorhan Souza:lorhan.s160@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados do VaCard 
<br>e motivação da escolha realizada. <br>

> O projeto "VaCard foi realizado como forma avaliativa do aprendizado em Banco de Dados I. Sabendo-se dos desafios para gerenciar informações sobre a vacinação e visando unir as informações relativas a cidadãos da cidade e prefeito, ficamos motivados com o desenvolvimento deste sistema. O Sistema "VaCard" tem como objetivo gerenciar todas as informações à vacinação dos cidadãos. Para que a vacinação dos cidadãos de forma adequada a prefeitura necessita que sistema que armazene informações relativas à vacinação e cidadãos , além de também armazenar dados sobre  os cidadãos, enfermeiros e as vacinas. O sistema deverá gerar um conjunto de relatórios que por sua vez atenderá os anseios da prefeitura.
 

### 3.MINI-MUNDO<br>
 
Controle de vacinação COVID

> O prefeito de uma cidade deseja um sistema que sirva de base para saber o andamento da vacinação em sua cidade. Para isso ele deseja que o sistema armazene o cpf, nome, telefone e endereço do cidadão vacinado, além de sua data de nascimento. Devido à quantidade de casos de falsa aplicação da vacina, o secretário quer,como método de segurança, que seja salvo a data do ato da vacinação, a dose tomada e os dados (cofen e nome) da(o) enfermeira(o) de plantão no posto de saúde em que foi vacinado juntamente com o cpf do vacinado. Quanto às vacinas, deve ser armazenado o tipo(marca). Vale lembrar que as pessoas devem ser vacinadas com as duas doses da mesma vacina. 

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Este é o rascunho do nosso projeto.<br>
Abaixo estão a primeira tela do projeto e o arquivo PDF navegável para explorar o projeto.<br>
<br>
![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/Login.png?raw=true "Entrada")
![Arquivo PDF do Protótipo Balsamiq feito para o VaCard](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/arquivos/Protótipo.pdf?raw=true "Projeto VaCard")<br>

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> 

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
### 5.MODELO CONCEITUAL<br>  
Modelo Conceitual feito a partir das informações retiradas do MiniMundo.<br>

![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/IMG-20210717-WA0024.jpg?raw=true "Modelo Conceitual")<br>
![Arquivo BrModelo do Modelo Conceitual](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/arquivos/br_ModeloV3.brM3?raw=true "BR Modelo")<br>    
    
           
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    PESSOA: Tabela que armazena as informações relativas ao cliente.
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.
    


### 6	MODELO LÓGICO<br>
Modelo Lógico baseado no Modelo Conceitual do projeto VaCard.<br>

![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/IMG-20210717-WA0023.jpg?raw=true "Modelo Lógico")<br>
![Arquivo BrModelo do Modelo Lógico](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/arquivos/Logico_1.brM3?raw=true "BR Modelo Lógico")<br> 

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


