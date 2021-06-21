create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
primary key (id)
);

insert into tb_categoria (nome, descricao) values ("Programação", "Aprenda a programar");
insert into tb_categoria (nome, descricao) values ("Front-End", "Aprenda tudo sobre frontend");
insert into tb_categoria (nome, descricao) values ("Data Science", "Aprenda tudo sobre Data Science");
insert into tb_categoria (nome, descricao) values ("Devops", "Aprenda tudo sobre Devops");
insert into tb_categoria (nome, descricao) values ("Mobile", "Aprenda tudo sobre Mobile");

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco double not null,
primary key (id),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (nome, descricao, preco, categoria_id) values ("Java", "Programação orientada a objetos", 40, 1);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("Python", "Linguagem em alta", 30, 1);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("HTML", "Se aprimore no essencial", 35, 2);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("CSS", "Se aprimore no essencial", 35, 2);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("AWS", "Estude oque mais está sendo pedido nas empresas", 55, 4);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("SQL", "Tenha no radar um banco de dados", 28, 3);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("IOS e Swift", "Mundo mobile sempre em alta", 40, 5);
insert into tb_curso (nome, descricao, preco, categoria_id) values ("Android", "Mundo mobile sempre em alta", 40, 5);

select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where nome like "%j%";
select tb_curso.nome, tb_curso.descricao, tb_curso.preco, tb_categoria.nome, tb_categoria.descricao
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso where categoria_id = 1;
select * from tb_categoria;
select * from tb_curso;