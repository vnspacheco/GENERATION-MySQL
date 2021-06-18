-- Criando banco de dados
create database db_ecommerce;

-- Criando tabela dentro do bando de dados
use db_ecommerce;
create table tb_estoque(
id bigint(255) auto_increment,
nome varchar(100) not null,
descricao varchar(250) not null,
valor double not null,
quantidade int,
categoria varchar(50) not null,
primary key(id)
);

-- Populando tabela
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Celular", "Touch Screen", 1250.00, 5, "Celulares e telefones");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Televisão", "49 polegadas, 4k", 2099.99, 8, "Televisores");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Fone de ouvido", "Gamer", 359.99, 3, "Informática");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Umidificador portátil", "3,7 litros", 150.01, 2, "Saúde");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Cadeira", "Gamer", 790.98, 5, "Casa, móveis e decoração");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("HD externo", "1 terabyte", 299.99, 5, "Informática");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Impressora", "Impressora térmica", 599.99, 2, "Informática");
insert into tb_estoque(nome, descricao, valor, quantidade, categoria) values ("Vídeo game", "última geração", 5999.99, 1, "Games");

-- Query's
select * from tb_estoque where valor > 500.00;
select * from tb_estoque where valor < 500.00;

-- Query de atualização de dado
update tb_estoque set valor = 6099.09 where id = 8;
select * from tb_estoque;