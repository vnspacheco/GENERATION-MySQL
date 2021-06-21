create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
primary key (id)
);

insert into tb_categoria (nome, descricao) values ("Churrasco", "Boa para churrasco");
insert into tb_categoria (nome, descricao) values ("Carne casual", "Para almoçar/jantar em casa");
insert into tb_categoria (nome, descricao) values ("Carne de panela", "Perfeita para fazer caldo");
insert into tb_categoria (nome, descricao) values ("Carne de panela c/ osso", "Perfeita para fazer caldo");
insert into tb_categoria (nome, descricao) values ("Frango", "Cortes de frangos váriados");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco double not null,
primary key (id),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, descricao, preco, categoria_id) values ("Contrá filé", "Carne de primeira", 45, 1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Picanha", "Carne de primeira", 55, 1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Patinho", "Carne de primeira", 38, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Coxão duro", "Carne de primeira", 39, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Paleta", "Carne de segunda", 32, 3);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Muscúlo", "Carne de segunda", 30, 3);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Costela gaúcha", "Carne de segunda", 35, 4);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Filé de frango", "Carne de primeira", 16, 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_categoria.nome, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto where categoria_id = 1;
select * from tb_categoria;
select * from tb_produto;