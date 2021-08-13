# TRABALHO 01:  Controle de Vacinação
Trabalho desenvolvido durante a disciplina de BD1 no semestre 2021/1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Matheus Henrique:matheushenriquegv11@gmail.com<br>
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
    
![Simulação dos dados armazenados](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/arquivos/TabelaSistemaVaCard_sample.xlsx?raw=true "Tabela - VaCard")
    
    
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
    
    /*Exclusão das tabelas caso elas existam*/

    drop table if exists ENFERMEIRA cascade;
    drop table if exists PESSOA cascade;
    drop table if exists VACINA cascade;
    drop table if exists LOCALIDADE cascade;
    drop table if exists VACINACAO cascade;
    drop table if exists CONTATO cascade;
    
    /* Criação das tabelas */
    
    create table PESSOA(
      cpf int PRIMARY KEY,
      nome varchar(50),
      data_nasc date,
      descricao_logradouro varchar(50),
      bairro varchar(50),
      numero_logradouro int,
      cep int
    );

     create table ENFERMEIRA(
        cofen int PRIMARY KEY,
        nome varchar(50)
     );

    create table VACINA(
      cod_vacina serial PRIMARY KEY,
      descricao varchar(50)
    );

    create table LOCALIDADE(
      id_local serial PRIMARY KEY,
      descricao varchar(50)
    );

    create table VACINACAO(
       id_aplicacao serial PRIMARY KEY,
       data_dose date,
       num_dose int,
	      fk_PESSOA_cpf int, /*Chave estrangeira - CPF Tabela pessoa */
	      fk_VACINA_cod_vac int, /*Chave estrangeira - COD Tabela Vacina */
	      fk_ENFERMEIRA_cofen int, /*Chave estrangeira - Cofen Tabela Enfermeira */
  	    fk_LOCALIDADE_id_localidade int, /*Chave estrangeira - Cod Tabela Localidade */

       FOREIGN KEY(fk_PESSOA_cpf) REFERENCES PESSOA(cpf),
       FOREIGN KEY(fk_VACINA_cod_vac) REFERENCES VACINA(cod_vacina),
       FOREIGN KEY(fk_ENFERMEIRA_cofen) REFERENCES ENFERMEIRA(cofen),
       FOREIGN KEY(fk_LOCALIDADE_id_localidade) REFERENCES LOCALIDADE(id_local)
     );
       
    create table CONTATO(
       id_contato serial PRIMARY KEY,
       tipo varchar(30),
       descricao integer,
       fk_PESSOA_cpf int, /*Chave estrangeira - CPF Tabela Pessoa */
       FOREIGN KEY(fk_PESSOA_cpf) REFERENCES PESSOA(cpf)
    );
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
    Arquivo .SQL com drop das tabelas caso elas existam, criação de todas as tabelas e inserção de todas as informações.
        
        
### Tabela PESSOA
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (1111,'Marcos Guilherme','2000-06-23','Rua das Palmeiras','Cidade Pomar',301,29165562);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (2222,'Matheus Henrique','2000-06-23','Rio Formoso','Eldorado',7,29163657);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (3333,'Miria Gomes','1981-02-16','Rua Pinho','Santa luzia',60,29167527);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (4444,'Jonias de Paula','1956-11-01','Rua Itaciba','Novo Horizonte',456,29789767);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (5555,'Paulo Victor','1999-08-27','Rua Paulo Gusmão','Cidade Continental',95,22665987);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (6666,'Izabella Campos','2000-05-25','Assembléia Estadual','Carapebus',256,12345678);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (7777,'Ana Clara Campos','2005-01-25','Assembléia Estadual','Carapebus',256,12345678);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (8888,'Elizangela Reis','1976-09-24','Rua 12 de Julho','Carapina',45,12345752);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (9999,'Jair Trarbach','1945-07-24','Assembléia Estadual','Carapebus',10,12485678);
    insert into PESSOA (cpf,nome,data_nasc,descricao_logradouro,bairro,numero_logradouro,cep) values (1001,'Mario Sergio','1994-08-19','Av Rio de Janeiro','Serra',35,12344568);
### Tabela CONTATO
    insert into CONTATO (tipo,descricao,fk_PESSOA_cpf) values 
    ('celular','998677631',1001),
    ('celular','998477631',2222),
    ('celular','998577631',3333),
    ('celular','998977631',4444),
    ('celular','998177631',5555),
    ('fixo','30604020',6666),
    ('fixo','30614020',7777),
    ('fixo','30624020',8888),
    ('fixo','30634020',9999),
    ('fixo','30644020',1001);
### Tabela LOCALIDADE
    insert into LOCALIDADE (descricao) values ('UBS Carapina');
    insert into LOCALIDADE (descricao) values ('URS Feu Rosa');
    insert into LOCALIDADE (descricao) values ('UBS Campinho da Serra');
    insert into LOCALIDADE (descricao) values ('UBS Carapebus');
    insert into LOCALIDADE (descricao) values ('UBS Oceania');
    insert into LOCALIDADE (descricao) values ('UBS Manoel Plaza');
    insert into LOCALIDADE (descricao) values ('UBS Manguinhos');
    insert into LOCALIDADE (descricao) values ('URS Jacaraipe');
    insert into LOCALIDADE (descricao) values ('URS Boa Vista');
    insert into LOCALIDADE (descricao) values ('UBS Serra Dourada');
### Tabela VACINA
    insert into VACINA (descricao) values ('Astrazeneca');
    insert into VACINA (descricao) values ('Coronavac');
    insert into VACINA (descricao) values ('Pfizer');
    insert into VACINA (descricao) values ('Moderna');
    insert into VACINA (descricao) values ('Sputnik V');
    insert into VACINA (descricao) values ('Covishield');
    insert into VACINA (descricao) values ('Janssen');
    insert into VACINA (descricao) values ('Cansino');
    insert into VACINA (descricao) values ('Covaxin');
    insert into VACINA (descricao) values ('kovivac');
### Tabela ENFERMEIRA
    insert into ENFERMEIRA(cofen, nome) values (1101,'Brenda Lemos');
    insert into ENFERMEIRA(cofen, nome) values (2020,'Giselda Marques');
    insert into ENFERMEIRA(cofen, nome) values (3030,'Carlos André');
    insert into ENFERMEIRA(cofen, nome) values (4040,'Adriana Lima');
    insert into ENFERMEIRA(cofen, nome) values (5050,'Brenda Costa');
    insert into ENFERMEIRA(cofen, nome) values (6060,'Douglas Henrique');
    insert into ENFERMEIRA(cofen, nome) values (7070,'Izabella Campos');
    insert into ENFERMEIRA(cofen, nome) values (8080,'Tiago Pessoa');
    insert into ENFERMEIRA(cofen, nome) values (9090,'Geovana Pires');
    insert into ENFERMEIRA(cofen, nome) values (1010,'Geovane Ceolim');
### Tabela VACINACAO
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen, fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,1111,1,2020,2);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen, fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,2222,2,2020,2);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,3333,3,1101,3);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,4444,1,3030,4);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,5555,2,3030,5);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,6666,3,6060,6);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-07-16',1,7777,1,3030,2);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-08-16',2,1111,1,4040,5);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-08-16',2,2222,2,6060,7);
    insert into VACINACAO (data_dose,num_dose,fk_PESSOA_cpf,fk_VACINA_cod_vac,fk_ENFERMEIRA_cofen,fk_LOCALIDADE_id_LOCALIDADE) values ('2021-08-16',2,3333,3,5050,9);
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
    Select * from CONTATO;
 
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_contato.png?raw=true "Tabela Contato")<br>
    
    Select * from VACINA;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_vacina.png?raw=true "Tabela Vacina")<br>

    Select * from LOCALIDADE;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_localidade.png?raw=true "Tabela Localidade")<br>
    
    Select * from ENFERMEIRA;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_enfermeira.png?raw=true "Tabela Enfermeira")<br>
 
    Select * from PESSOA;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_pessoa.png?raw=true "Tabela Pessoa")<br>   
    
    Select * from VACINACAO;
    
 ![Alt text](https://github.com/LorhanSouza/Trabalho_BD_2021-1/blob/master/images/select_todos_vacinacao.png?raw=true "Tabela Vacinacao")<br>   
    

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
    select * from vacinacao where num_dose=2;
    select * from pessoa where cpf=123;
    select * from contato where tipo='celular';
    select * from enfermeira where nome='matheus';
    select * from pessoa where bairro='Santa luzia';
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not<br>

    select * from vacinacao where fk_enfermeira_cofen=333 and num_dose=1
    select * from contato where 1=1 and not tipo = 'fixo'
    select * from vacinacao where fk_vacina_cod_vac =1 or fk_vacina_cod_vac =2
    select * from pessoa where numero_logradouro = 301 and bairro= 'Santa luzia'
    select * from vacinacao where data_dose > '2021-07-15' and fk_localidade_id_localidade = 4

b) Criar no mínimo 3 consultas com operadores aritméticos<br>

c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

    select cpf,nome, descricao_logradouro as rua , numero_logradouro as numero from pessoa
    select fk_pessoa_cpf, descricao as numero, tipo from contato 
    select descricao as nome_vacina from vacina

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
a) Criar outras 5 consultas que envolvam like ou ilike

    select * from pessoa where nome like '%clara%'
    select * from pessoa where bairro like 'C%'
    select * from pessoa where bairro like 'C%' 
    select * from pessoa where nome like '%Campos'
    select * from localidade where descricao not like 'UBS%' 
 
b) Criar uma consulta para cada tipo de função data apresentada.

    select * from vacinacao where data_dose > '2021-07-15'
    select * from pessoa where data_nasc > '1999-12-31'

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
a) Criar minimo 3 de exclusão

    delete from contato where fk_pessoa_cpf = 999 
    delete from enfermeira where cofen = 101
    delete from localidade where id_local = 8

b) Criar minimo 3 de atualização

    update pessoa set numero_logradouro = 55 where bairro = 'Carapebus' and descricao_logradouro ilike 'Assemblé%'
    update contato set descricao = 998416953 where id_contato = 1
    update vacina set descricao = 'KoviVac' where cod_vacina = 10

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


