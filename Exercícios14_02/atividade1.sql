create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	id bigint auto_increment,
    classe varchar(255) not null,
    modAtaque int,
    modDefesa int,
    modVida int,
    primary key (id)
);

insert into tb_classe (classe,modAtaque,modDefesa,modVida) values ("Guerreiro",30,40,40);
insert into tb_classe (classe,modAtaque,modDefesa,modVida) values ("Arqueiro",50,30,30);
insert into tb_classe (classe,modAtaque,modDefesa,modVida) values ("Mago",70,20,20);
insert into tb_classe (classe,modAtaque,modDefesa,modVida) values ("Ladino",60,30,20);
insert into tb_classe (classe,modAtaque,modDefesa,modVida) values ("Clérigo",10,50,50);

create table tb_personagem (
	id bigint auto_increment,
    nome varchar(255) not null,
    nivel int,
    ataque bigint,
    defesa bigint,
    vida bigint,
    classe_id bigint,
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Barash", 6, 1, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Sol", 5, 2, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Wander", 7, 3, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Hermes", 3, 4, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Cylas", 4, 5, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Ellcrys", 10, 5, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Luna", 8, 3, 10*nivel, 10*nivel, 10*nivel);
insert into tb_personagem (nome, nivel, classe_id, ataque, defesa, vida) values ("Cedric", 9, 1, 10*nivel, 10*nivel, 10*nivel);

UPDATE tb_personagem
INNER JOIN tb_classe ON tb_personagem.id = tb_classe.id
SET tb_personagem.ataque = tb_personagem.ataque * tb_classe.modAtaque
WHERE  tb_personagem.id = tb_classe.id;

UPDATE tb_personagem
INNER JOIN tb_classe ON tb_personagem.id = tb_classe.id
SET tb_personagem.defesa = tb_personagem.defesa * tb_classe.modDefesa
WHERE  tb_personagem.id = tb_classe.id;

update tb_personagem inner join tb_classe on tb_personagem.id = tb_classe.id
set tb_personagem.vida = tb_personagem.vida * tb_classe.modVida where tb_personagem.id = tb_classe.id;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "C%";
select * from tb_personagem;
select * from tb_classe;


select * from tb_personagem right join tb_classe on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem right join tb_classe on tb_personagem.classe_id = tb_classe.id where classe_id = 1 OR classe_id = 5;
select * from tb_personagem where classe_id = 1 OR classe_id = 5;

  
