-- Criando banco de dados
create database db_escola;

-- Criando tabela dentro do bando de dados
use db_escola;
create table tb_alunos(
id bigint(255) auto_increment,
nome varchar(100) not null,
idade int not null,
nota double not null,
periodo varchar(100) not null,
comportamento varchar(100) not null,
primary key(id)
);

-- Populando tabela
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Amanda", 12, 8.5, "Manhã", 6.8);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Joaquina", 13, 5.8, "Manhã", 4.9);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Roberta", 12, 9.5, "Manhã", 8.8);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Matheus", 14, 8.5, "Manhã", 9);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Kauan", 12, 7, "Tarde", 10);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Jackson", 14, 6.5, "Tarde", 7.8);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Jamily", 12, 3.5, "Tarde", 2);
insert into tb_alunos(nome, idade, nota, periodo, comportamento) values ("Luis", 13, 9, "Tarde", 9.5);

-- Query's
select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

-- Query de atualização de dado
update tb_alunos set nota = 5 where id = 7;
select * from tb_alunos;