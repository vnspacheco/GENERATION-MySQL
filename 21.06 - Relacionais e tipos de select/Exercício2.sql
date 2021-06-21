create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
observacao varchar(500) not null,
primary key (id)
);

insert into tb_categoria (nome, descricao, observacao) values ("Pizza doce", "Pizza recheada de doce", "Ótimo para quem gosta de comer algo doce");
insert into tb_categoria (nome, descricao, observacao) values ("Pizza", "Pizza de recheios variados", "Ótimo para quem gosta do tradicional");
insert into tb_categoria (nome, descricao, observacao) values ("Pizza mista", "Pizza de recheios variados", "Ótimo para quem gosta de misturar sabores");
insert into tb_categoria (nome, descricao, observacao) values ("Broto", "Broto de recheios variados", "Ótimo para quem gosta não vai comer muito");
insert into tb_categoria (nome, descricao, observacao) values ("Esfiha", "Esfiha de recheios variados", "Ótimo para quem gosta não vai comer muito");

create table tb_pizza(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco double not null,
tempo_preparacao int(4) not null,
promocao boolean not null,
primary key (id),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Americana", "Mussarela, bacon e ovos", 29, 12, 1, 2);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Bacon", "Bacon, mussarela e cebola", 30, 12, 1, 2);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Brigadeiro", "Chococalate ao leite e granulado", 31, 15, 0, 1);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Rosa branca", "Chocolate branco, morangos e cereja", 46, 18, 0, 1);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Mussarela", "Mussarela e tomate", 15, 10, 0, 4);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Misturela", "Frango, bacon, milho e mussarela", 31, 15, 0, 3);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Carne", "Carne muida bem temperada", 1.5, 7, 0, 5);
insert into tb_pizza (nome, descricao, preco, tempo_preparacao, promocao, categoria_id) values ("Quatro queijos", "Mussarela, parmesão, provolone e catupiry", 33, 15, 1, 2);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%C%";
select tb_pizza.nome, tb_pizza.descricao, tb_pizza.preco, tb_pizza.promocao, tb_categoria.nome
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_pizza where categoria_id = 1;
select * from tb_categoria;
select * from tb_pizza;