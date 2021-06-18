-- Criando banco de dados
create database db_recursoshumanos;

-- Criando tabela dentro do bando de dados
use db_recursoshumanos;
create table tb_funcionarios(
id bigint(255) auto_increment,
nome varchar(100) not null,
idade int not null,
cargo varchar(100) not null,
salario double(10,2) not null,
admissao date not null,
primary key (id)
);

-- Populando tabela
insert into tb_funcionarios(nome, idade, cargo, salario, admissao) values ("Rodrigo", 19, "Auxiliar contábil", 1700.01, "2020-04-14");
insert into tb_funcionarios(nome, idade, cargo, salario, admissao) values ("Marcela", 21, "Assistente contábil", 2500.01, "2019-02-23");
insert into tb_funcionarios(nome, idade, cargo, salario, admissao) values ("Beatriz", 24, "Analista contábil", 3500.01, "2018-05-11");
insert into tb_funcionarios(nome, idade, cargo, salario, admissao) values ("Victor", 22, "Assistente fiscal", 2800.01, "2019-12-14");
insert into tb_funcionarios(nome, idade, cargo, salario, admissao) values ("Maria", 28, "Analista fiscal", 3800.01, "2017-07-05");

-- Query's
select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

-- Query de atualização de dado
update tb_funcionarios set nome = "Rodinei" where id = 1;
select * from tb_funcionarios;