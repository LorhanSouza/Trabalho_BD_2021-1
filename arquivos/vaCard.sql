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

create table CONTATO(
    id_contato serial PRIMARY KEY,
    tipo varchar(30),
    descricao varchar(70),
    fk_PESSOA_cpf int, /*Chave estrangeira - CPF Tabela Pessoa */
    FOREIGN KEY(fk_PESSOA_cpf) REFERENCES PESSOA(cpf)
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


/*Inserção de dados*/

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




