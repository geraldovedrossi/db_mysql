create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
	id bigint auto_increment,
    area varchar(255) not null,
    primary key (id)
);

insert into tb_categoria (area) values ("Exatas");
insert into tb_categoria (area) values ("Humanas");
insert into tb_categoria (area) values ("Biológicas");

create table tb_curso (
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(8,2),
    duracao bigint,
    avaliacao bigint,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso (nome, valor, duracao, avaliacao, categoria_id) values ("Curso de JAVA", 300, 80, 5, 1);
insert into tb_curso (nome, valor, duracao, avaliacao, categoria_id) values ("Curso de Enfermagem", 500, 150, 4, 3);
insert into tb_curso (nome, valor, duracao, avaliacao, categoria_id) values ("Curso de Radiologia", 400, 60, 5, 3);
insert into tb_curso (nome, valor, duracao, avaliacao, categoria_id) values ("Curso de História", 450, 100, 3, 2);
insert into tb_curso (nome, valor, duracao, avaliacao, categoria_id) values ("Curso de GIT", 600, 20, 3, 1);

select * from tb_curso where valor > 40;
select * from tb_curso where valor > 30 AND valor < 80;
select * from tb_curso where nome like "%a";
select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id;
select * from tb_curso where categoria_id = 1;