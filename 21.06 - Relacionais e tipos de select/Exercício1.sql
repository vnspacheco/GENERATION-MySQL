create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(500) not null,
observacao varchar(500) not null,
primary key (id)
);

insert into tb_classe (nome, descricao, observacao) values ("Duelista", "Classe de personagem que inicia a jogada", "Ótimo para quem gosta de rushar");
insert into tb_classe (nome, descricao, observacao) values ("Iniciador", "Classe de personagem que inicia a jogada", "Ótimo para quem gosta de rushar");
insert into tb_classe (nome, descricao, observacao) values ("Controlador", "Classe de personagem que da suporte", "Ótimo para quem gosta de jogar recuado");
insert into tb_classe (nome, descricao, observacao) values ("Sentinela", "Classe de personagem que da suporte", "Ótimo para quem gosta de jogar recuado");
insert into tb_classe (nome, descricao, observacao) values ("Arqueiro", "Classe de personagem que inicia a jogada", "Ótimo para quem gosta de rushar");

create table tb_personagem(
id bigint(5) auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
ataque int(4) not null,
defesa int(4) not null,
velocidade int(4) not null,
primary key (id),
classe_id bigint,
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Jett", "Coreia do Sul", 4000, 2000, 5000, 1);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Brech", "Suécia", 3000, 3000, 2500, 2);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Omen", "Desconhecido", 2500, 2500, 3000, 3);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Brimstone", "Estados Unidos", 3000, 3000, 2500, 3);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Sage", "China", 1500, 5000, 3500, 4);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Sova", "Rússia", 4000, 2000, 4000, 5);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Killjoy", "Alemanha", 2500, 4000, 2000, 4);
insert into tb_personagem (nome, descricao, ataque, defesa, velocidade, classe_id) values ("Reyna", "México", 5000, 4500, 4000, 1);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%";
select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.velocidade, tb_classe.nome, tb_classe.descricao
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem where classe_id = 5;
select * from tb_classe;
select * from tb_personagem;