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

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
O sistema poderá fornecer relatórios sobre a questão da vacinação nos bairros da cidade, como as vacinas são distribuídas por faixa etária, o local de vacinação que mais vacinou pessoas, qual vacina é mais utilizada e a quantidade de pessoas completamente imunizadas na cidade.<br>

Os principais relatórios gerados são:<br>
>1- Relatório que mostra todas as pessoas de cada bairro vacinadas.<br>
>2- Relatório que mostra a quantidade de pessoas completamente imunizadas na cidade.<br>
>3- Relatório que mostra todas como estão avançando as vacinações por faixa etária.<br>
>4- Relatório que mostra qual vacina mais está sendo utilizada.<br>
>5- Relatório que mostra qual o local onde as pessoas mais estão sendo vacinadas.<br>

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
    
    PESSOA: Tabela que armazena as informações do vacinado
    CPF: campo que armazena o número de Cadastro de Pessoa Física de cada vacinado
    NOME: campo que armazena o nome do vacinado
    DATA_NASC: campo que armazena a data de nascimento do vacinado
    DESCRICAO_LOGRADOURO: campo que armazena nome do logradouro do vacinado
    NUMERO_LOGRADOROU: campo que armazena numero da residencia do vacinado
    BAIRRO: campo que armazena o bairro do vacinado
    CEP: campo que armazena o cep do vacinado
    ENFERMEIRA: Tabela que armazena as informações da enfermeira
    COFEN: campo que armazena o cofen da enfermeira
    NOME: campo que armazena o nome da enfermeira
    VACINA: Tabela que armazenas as informações da vacina
    COD_VACINA: campo que armazena o código de uma determinada vacina no sistema
    DESCRICAO:  campo que armazena o nome da vacina
    LOCALIDADE: Tabela que armazena as informações dos locais de aplicação das vacinas
    ID_LOCAL: campo que armazena o codigo de um local de vacinação
    DESCRICAO: campo que armazena a descrição do local
    VACINACAO: Tabela que armazena dados de uma vacina aplicada
    ID_APLICACAO: campo que armazena o codigo no sistema de uma vacina aplicada
    DATA_DOSE: campo que armazena a data da aplicação
    NUM_DOSE: campo que armazena o numero da dose que foi aplicada
    fk_PESSOA_cpf: campo que armazena o CPF da pessoa vacinada
    fk_VACINA_cod: campo que armazena o codigo da vacina aplicada
    fk_ENFERMEIRA_cofen: campo que armazena o codigo da enfermeira que aplicou a vacina
    fk_LOCALIDADE_id_localidade: campo que armazena o codigo da localidade onde foi aplicada a vacina
    CONTATO: Tabela que armazena informações de contato de uma pessoa
    ID_CONTATO: campo que armazena o codigo no sistema referente a um numero de telefone de uma pessoa
    TIPO: campo que armazena o tipo de contato que se refere o registro
    DESCRICAO: campo que armazena um numero contato de uma pessoa
    fk_PESSOA_cpf: campo que armazena o CPF da pessoa dona do telefone de contato


### 6	MODELO LÓGICO<br>
Modelo Lógico baseado no Modelo Conceitual do projeto VaCard.<br>

![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/IMG-20210717-WA0023.jpg?raw=true "Modelo Lógico")<br>
![Arquivo BrModelo do Modelo Lógico](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/arquivos/Logico_1.brM3?raw=true "BR Modelo Lógico")<br> 

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
    create table PESSOA(
    cpf int PRIMARY KEY,
    nome varchar(50),
    data_nasc date,
    descricao_logradouro varchar(50),
    numero_logradouro int,
    bairro varchar(50),
    cep int
);

create table ENFERMEIRA(
    cofen int PRIMARY KEY,
    nome varchar(50)
);

create table VACINA(
    cod_vacina int PRIMARY KEY,
    descricao varchar(50)
);

create table LOCALIDADE(
    id_local int PRIMARY KEY,
    descricao varchar(50)
);

create table VACINACAO(
    id_aplicacao int PRIMARY KEY,
    data_dose date,
    num_dose int,
    fk_PESSOA_cpf int,
    fk_VACINA_cod_vac int,
    fk_ENFERMEIRA_cofen int,
    fk_LOCALIDADE_id_localidade int,

    FOREIGN KEY(fk_PESSOA_cpf) REFERENCES PESSOA(cpf),
    FOREIGN KEY(fk_VACINA_cod_vac) REFERENCES VACINA(cod_vacina),
    FOREIGN KEY(fk_ENFERMEIRA_cofen) REFERENCES ENFERMEIRA(cofen),
    FOREIGN KEY(fk_LOCALIDADE_id_localidade) REFERENCES LOCALIDADE(id_local)

);
create table CONTATO(
    id_contato int PRIMARY KEY,
    tipo varchar(30),
    descricao integer,
    fk_PESSOA_cpf,
    FOREIGN KEY(fk_PESSOA_cpf) REFERENCES PESSOA(cpf)
);
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
        insert into CONTATO (id_contato,tipo,descricao,fk_PESSOA_cpf) values 
        ('1','celular','998677631','111'),
        ('2','celular','998477631','222'),
        ('3','celular','998577631','333'),
        ('4','celular','998977631','444'),
        ('5','celular','998177631','555'),
        ('6','fixo','30604020','111'),
        ('7','fixo','30614020','222'),
        ('8','fixo','30624020','333'),
        ('9','fixo','30634020','444'),
        ('10','fixo','30644020','555');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','3','333','1','123','3');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','4','444','2','333','4');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','5','555','3','333','5');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','6','666','5','666','6');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-15','1','7','101','1','333','2');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','8','999','5','444','5');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','9','888','3','666','7');
        insert into VACINACAO (data_dose,num_dose,id_aplicacao,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16','1','10','777','1','555','9');
        insert into LOCALIDADE (id_local,descricao) values ('3','UBS Campinho da Serra');
        insert into LOCALIDADE (id_local,descricao) values ('4','UBS Carapebus');
        insert into LOCALIDADE (id_local,descricao) values ('5','UBS Campinho da Serra');
        insert into LOCALIDADE (id_local,descricao) values ('6','UBS Manoel Plaza');
        insert into LOCALIDADE (id_local,descricao) values ('7','UBS Manguinhos');
        insert into LOCALIDADE (id_local,descricao) values ('8','Sao Marcos');
        insert into LOCALIDADE (id_local,descricao) values ('9','UBS Oceania');
        insert into VACINA (cod_vacina,descricao) values ('3','Pfizer');
        insert into VACINA (cod_vacina,descricao) values ('4','Moderna');
        insert into VACINA (cod_vacina,descricao) values ('5','Sputnik V');
        insert into VACINA (cod_vacina,descricao) values ('6','Covishield');
        insert into VACINA (cod_vacina,descricao) values ('7','Janssen');
        insert into VACINA (cod_vacina,descricao) values ('8','Cansino');
        insert into VACINA (cod_vacina,descricao) values ('9','Covaxin');
        insert into VACINA (cod_vacina,descricao) values ('10','kovivac');
        insert into ENFERMEIRA(cofen, nome) values ('333','Carlos André');
        insert into ENFERMEIRA(cofen, nome) values ('444','Adriana Lima');
        insert into ENFERMEIRA(cofen, nome) values ('555','Brenda Costa');
        insert into ENFERMEIRA(cofen, nome) values ('666','Douglas Henrique');
        insert into ENFERMEIRA(cofen, nome) values ('777','Izabella Campos');
        insert into ENFERMEIRA(cofen, nome) values ('888','Tiago Pessoa');
        insert into ENFERMEIRA(cofen, nome) values ('999','Geovana Pires');
        insert into ENFERMEIRA(cofen, nome) values ('101','Geovane Ceolim');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('333','Miria Gomes','1981-02-16','Rua dos ipes','Santa luzia','301','29165757');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('444','Jonias de Paula','1956-11-01','Rua dos ipes','Santa luzia','301','29165757');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('555','Paulo Victor','1999-08-27','Rua dos ipes','Santa luzia','301','29165757');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('666','Izabella Campos','2000-05-25','Assembléia Estadual','Carapebus','256','12345678');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('777','Ana Clara Campos','2005-01-25','Assembléia Estadual','Carapebus','256','12345678');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('888','Elizangela Campos','1976-09-24','Assembléia Estadual','Carapebus','256','12345678');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('999','Jair Trarbach','1945-07-24','Assembléia Estadual','Carapebus','256','12345678');
        insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values ('101','George Matheus','1994-08-19','Rua Rio Grande do Sul','José de Anchieta','334','12345678');


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
    Select * from CONTATO;
 
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_contato.png?raw=true "Tabela Contato")<br>
    
    Select * from VACINA;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_vacina.png?raw=true "Tabela Contato")<br>

    Select * from LOCALIDADE;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_localidade.png?raw=true "Tabela Contato")<br>
    
    Select * from ENFERMEIRA;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_enfermeira.png?raw=true "Tabela Contato")<br>
 
    Select * from PESSOA;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_pessoa.png?raw=true "Tabela Contato")<br>   
    
    Select * from VACINACAO;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_vacinacao.png?raw=true "Tabela Contato")<br>   
    

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


