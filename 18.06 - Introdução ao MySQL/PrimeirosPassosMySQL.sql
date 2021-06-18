-- Criar banco de dados
create database db_quitanda;

-- Entra no banco de dados para criar a tabela
use db_quitanda;

-- Criando a tabela passando seus atributos
create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (2) not null,
primary key (id)
);

-- Adicionando dados aos atributos da tabela
insert into tb_produtos(nome, preco) values("Maçã", 5.00);
insert into tb_produtos(nome, preco) values("Banana", 3.00);
insert into tb_produtos(nome, preco) values("Batata", 4.50);
insert into tb_produtos(nome, preco) values("Cheiro-verde", 2.50);
insert into tb_produtos(nome, preco) values("Morango", 8.00);

insert into tb_produtos(nome, preco) values("Kiwi", 15.00);

-- Gerar a tabela
select * from tb_produtos;

-- Modificar um atributo
alter table tb_produtos modify preco decimal(5,2);

alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao;

-- Modificar um dado de um atributo
update tb_produtos set preco = 4.50 where id = 3;
update tb_produtos set preco = 2.50 where id = 4;

-- Deletar um dado da tabela
delete from tb_produtos where id = 5;

-- Gerar a tabela de maneira especifica
select nome from tb_produtos;
select * from tb_produtos where id = 1;
select * from tb_produtos where preco >= 5.00;
select * from tb_produtos where nome = "maca";