create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
	id bigint auto_increment,
    alimento varchar(255) not null,
    primary key (id)
);

insert into tb_categoria (alimento) values ("Com carne");
insert into tb_categoria (alimento) values ("Vegetariano");
insert into tb_categoria (alimento) values ("Vegano");

create table tb_pizza (
	id bigint auto_increment,
    sabor varchar (255) not null,
    tamanho varchar (255) not null,
    bordaRecheada boolean,
    valor decimal(8,2),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Mussarela", "grande", true, 70, 2);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Calabresa", "grande", false, 70, 1);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Quatro Queijos", "grande", true, 90, 2);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Palmito", "media", false, 60, 3);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Frango com Catupiry", "grande", true, 80, 1);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Portuguesa", "grande", true, 70, 1);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Tofu com Cogumelos", "grande", true, 70, 3);
insert into tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) values ("Marguerita", "grande", true, 75, 2);

select * from tb_pizza where valor > 70;
select * from tb_pizza where valor > 60 AND valor < 90;
select * from tb_pizza where sabor like "M%";
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select * from tb_pizza where categoria_id = 3;
