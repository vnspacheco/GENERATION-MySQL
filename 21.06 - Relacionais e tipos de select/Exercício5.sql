create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
primary key (id)
);

insert into tb_categoria (nome, descricao) values ("Pintura", "Tudo para pintura");
insert into tb_categoria (nome, descricao) values ("Construção", "Materiais diversos para construção");
insert into tb_categoria (nome, descricao) values ("Materiais elétricos", "Tudo para fiação elétrica");
insert into tb_categoria (nome, descricao) values ("Materiais hidráulicos", "Encanação em geral");
insert into tb_categoria (nome, descricao) values ("Manutenção", "Materias para manutenção diversas");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco double not null,
primary key (id),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, descricao, preco, categoria_id) values ("Parafuso", "Diversos tamanhos", 0.50, 5);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Maderite", "Resistente e tamanhos diversos", 25, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Tinta", "Tinta branca", 150, 1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Cano", "Para instalação residencial", 50, 4);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Fio encapado", "Para instalação residencial", 50, 3);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Prego", "Diversos tamanhos", 0.50, 5);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Tijolo", "Melhor qualidade", 0.89, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Cimento", "Melhor qualidade", 30, 2);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_categoria.nome, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto where categoria_id = 1;
select * from tb_categoria;
select * from tb_produto;