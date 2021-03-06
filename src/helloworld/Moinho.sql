/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Harrison
 * Created: 06/06/2018
 */


-- a linha abaixo cria o banco de dados moinho
create database moinho;

-- a linha abaixo seleciona o banco de dados moinho
use moinho;

-- a linha abaixo cria a tabela usuario_sistema
create table usuario_sistema (
id int not null primary key auto_increment,
login varchar(45) not null,
senha varchar (8) not null,
perfil varchar(10)
);

-- a linha abaixo faz a inserção da tabela usuario_sistema
insert into usuario_sistema(login,senha,perfil) values ('admin','admin','administrador'), ('renan','132','diretor');

-- a linha abaixo cria a tabela colaborador
create table colaborador(

idcolaborador int not null primary key auto_increment,
ano_de_ingresso date,
area_de_atuacao varchar(50),
turmas_ministradas varchar(50)

);

-- a linha abaixo cria a tabela turno
create table turno(
idturno int not null primary key auto_increment,
turnoo enum('M','V','N')

);

-- a linha abaixo insere valores na tabela horario
insert into horario(hora_inicio,hora_fim) values ('07:00','11:00');

-- a linha abaixo cria a tabela de horario
create table horario (
idhorario int not null primary key auto_increment,
hora_inicio time,
hora_fim time

);


-- a linha abaixo insere valores na tabela horario
insert into horario(hora_inicio,hora_fim) values ('07:00','11:00');

-- a tabela abaixo cria a tabela cadastro_universal
create table cadastro_universal (
idcadastro int not null primary key auto_increment,
nome varchar(50),
data_nascimento date,
telefone varchar(15),
email varchar(40)

);

-- a linha abaixo cria a tabela ficha de avaliacao
create table ficha_de_avaliacao (
id_ficha_avaliacao int not null primary key auto_increment,
data_avaliacao date,
avaliacao_musical int(10),
danca int(10),
desenvoltura int(10),
tecnologia int(10)

);

-- a linha abaixo cria a tabela usuario
create table usuario (

idusu int not null primary key auto_increment,
nome varchar(50),
sexo enum('M','F'),
data_nascimento date,
naturalidade varchar(45),
nacionalidade varchar(45),
escola enum('M','E','F','P'),
rendafamiliar decimal(6,2),
responsaveis text,
email varchar(45),
profissao varchar(45),
raca varchar(30),
religiao varchar(45),


);

create table endereco (
idend int not null primary key auto_increment,
pais varchar(45),
unidade_federativa varchar(45),
municipio varchar(45),
bairro varchar(45),
rua varchar(50),
complemento varchar(50),
num_da_residencia varchar(50)


);



-- a linha abaixo cria a tabela pais(mae,pai)
create table pais (
idpais int not null primary key auto_increment,
nome_pai varchar(45),
nome_mae varchar(45)
);

-- essa linha insere valores a tabela acima
insert into pais (nome_pai,nome_mae) values ('joao fernando silva','maria lucia silva');
insert into pais (nome_pai,nome_mae) values ('carlos fonseca souza','clara ana souza');
insert into pais (nome_pai,nome_mae) values ('jose douglas santos','antonia santos');
                                             
                                             
-- a linha abaixo cria a tabela ocorrencias
create table ocorrencias (
idocorrencias int not null primary key auto_increment,
advertencia enum ('L','M','G'),
data_ocorencia date,
motivo text,
abuso text

);

insert into ocorrencias (advertencia,data_ocorrencia,motivo,abuso) values ('G','11/05/2016','aluno jogou pedra no professor');
insert into ocorrencias (advertencia,data_ocorrencia,motivo,abuso) values ('M','05/05/2018','aluno pixou a carteira com tinta');
insert into ocorrencias (advertencia,data_ocorrencia,motivo,abuso) values ('L','25/04/2017','aluno desrespeitou outros participantes');;;
-- a linha abaixo cria a tabela turma
create table turma (
idturma int not null primary key auto_increment,
tipoturma enum('B1','B2','B3','I')

);

-- a linha abaixo cria a tabela participantes
create table participantes(
idparticipantes int not null primary key auto_increment,
status_participante enum('D','M'),
serie varchar(45),
tipo_de_transporte varchar(45),
advertencia text,
desempenho varchar(45),
beneficio_social varchar(50),
ano_de_entrada date


);

-- a linha abaixo cria a tabela frequencia
create table frequencia(
idfrequencia int not null primary key auto_increment,
presenca enum ('F','P'),
data_aula date,
justificar_falta text

);

-- a linha abaixo cria a tabela eventos
create table eventos (
idevento int not null primary key auto_increment,
nome varchar(45),
tipo_evento enum('A','C','R'),
descricao text,
responsaveis varchar(45),
dataeven date


);
