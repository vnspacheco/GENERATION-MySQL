create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
primary key (id)
);

insert into tb_categoria (nome, descricao) values ("Analgésico", "Tratar a dor");
insert into tb_categoria (nome, descricao) values ("Calmante", "Utilizado para acalmar ou tranquilizar");
insert into tb_categoria (nome, descricao) values ("Aspirina", "Tratar a dor, a febre e a inflamação");
insert into tb_categoria (nome, descricao) values ("Antiácido", "Combate a acidez gástrica");
insert into tb_categoria (nome, descricao) values ("Antibiótico", "Tratar infecções causadas por bactérias");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
validade date not null,
preco double not null,
primary key (id),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, validade, preco, categoria_id) values ("Novalgina", '2022-05-01', 13, 1);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Dorflex", '2023-05-01', 23, 1);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Maracujina", '2023-04-23', 20, 2);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Valeriana", '2022-07-05', 21, 2);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Prevent", '2021-12-30', 16,3);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Estomazil", '2024-02-28', 4, 4);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Eno B", '2024-03-31', 2, 4);
insert into tb_produto (nome, validade, preco, categoria_id) values ("Amoxicilina", '2023-11-14', 55, 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%b%";
select tb_produto.nome, tb_produto.preco, tb_categoria.nome, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto where categoria_id = 4;
select * from tb_categoria;
select * from tb_produto;