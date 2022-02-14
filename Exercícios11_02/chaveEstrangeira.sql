create database db_loja;

use db_loja;

create table tb_marcas (
	id bigint auto_increment,
    marca varchar(255) not null,
    primary key (id)
);

insert into tb_marcas (marca) values ("Adidas");
insert into tb_marcas (marca) values ("Nike");
insert into tb_marcas (marca) values ("Lilica Repilica");

create table tb_loja (
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal(8,2),
    quantidade bigint,
    marcas_id bigint,
    primary key (id),
    foreign key (marcas_id) references tb_marcas(id)
);

insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Tênis cano alto", 749.99, 10, 2);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Sapatilha", 309.99, 20, 3);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Papete", 89.99, 50, 3);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Sapato Social", 449.99, 5, 1);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Tênis de corrida", 249.99, 15, 1);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Tênis de basquete", 999.99, 7, 2);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Regata DryFit", 129.99, 85, 2);
insert into tb_loja (nome, preco, quantidade, marcas_id) values ("Boné aba reta", 49.99, 90, 1);

select * from tb_marcas;
select * from tb_loja;
select * from tb_loja where nome like "T%";
select * from tb_loja where nome like "T%" OR nome like "%a";
select count(id) from tb_loja;
select sum(preco) as ValorTotal from tb_loja;
select * from tb_loja left join tb_marcas on tb_loja.marcas_id = tb_marcas.id;
select * from tb_loja inner join tb_marcas on tb_loja.marcas_id = tb_marcas.id order by tb_loja.nome asc;