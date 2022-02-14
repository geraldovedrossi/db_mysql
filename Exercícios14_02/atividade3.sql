create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
	id bigint auto_increment,
    consumo varchar(255) not null,
    primary key (id)
);

insert into tb_categoria (consumo) values ("Comprimido");
insert into tb_categoria (consumo) values ("Líquido");
insert into tb_categoria (consumo) values ("Injeção");

create table tb_produto (
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(8,2),
    receita boolean,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, valor, receita, categoria_id) values ("Dorflex", 10, false, 1);
insert into tb_produto (nome, valor, receita, categoria_id) values ("Buscopan", 16, false, 1);
insert into tb_produto (nome, valor, receita, categoria_id) values ("Epocler", 15, false, 2);
insert into tb_produto (nome, valor, receita, categoria_id) values ("Bezetacil", 26, true, 3);
insert into tb_produto (nome, valor, receita, categoria_id) values ("Espironolactona", 40, true, 1);

select * from tb_produto where valor > 20;
select * from tb_produto where valor > 10 AND valor < 40;
select * from tb_produto where nome like "B%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto where categoria_id = 1;