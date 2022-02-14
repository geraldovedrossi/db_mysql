create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria (
	id bigint auto_increment,
    origem varchar(255) not null,
    primary key (id)
);

insert into tb_categoria (origem) values ("Bovino");
insert into tb_categoria (origem) values ("Suíno");
insert into tb_categoria (origem) values ("Ave");

create table tb_produto (
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(8,2),
    quantidade bigint,
    validade varchar(255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, valor, quantidade, validade, categoria_id) values ("Maminha", 50, 100, "14/03", 1);
insert into tb_produto (nome, valor, quantidade, validade, categoria_id) values ("Asinha", 20, 100, "14/03", 3);
insert into tb_produto (nome, valor, quantidade, validade, categoria_id) values ("Bacon", 30, 100, "14/03", 2);
insert into tb_produto (nome, valor, quantidade, validade, categoria_id) values ("Peito de Frango", 30, 100, "14/03", 3);
insert into tb_produto (nome, valor, quantidade, validade, categoria_id) values ("Picanha", 100, 100, "14/03", 1);


select * from tb_produto where valor > 40;
select * from tb_produto where valor > 30 AND valor < 80;
select * from tb_produto where nome like "P%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto where categoria_id = 1;