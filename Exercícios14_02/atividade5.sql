create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
	id bigint auto_increment,
    departamento varchar(255) not null,
    primary key (id)
);

insert into tb_categoria (departamento) values ("Ferramenta");
insert into tb_categoria (departamento) values ("Iluminação");
insert into tb_categoria (departamento) values ("Pintura");

create table tb_produto (
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(8,2),
    quantidade bigint,
    avaliacao bigint,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, valor, quantidade, avaliacao, categoria_id) values ("Tinta Azul", 50, 100, 4, 3);
insert into tb_produto (nome, valor, quantidade, avaliacao, categoria_id) values ("Cabo de cobre 2,5mm", 20, 100, 5, 2);
insert into tb_produto (nome, valor, quantidade, avaliacao, categoria_id) values ("Furadeira G3", 30, 100, 5, 1);
insert into tb_produto (nome, valor, quantidade, avaliacao, categoria_id) values ("Pincel", 30, 100, 2, 3);
insert into tb_produto (nome, valor, quantidade, avaliacao, categoria_id) values ("Chave de Fenda", 100, 100, 2, 1);


select * from tb_produto where valor > 40;
select * from tb_produto where valor > 30 AND valor < 80;
select * from tb_produto where nome like "P%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto where categoria_id = 1;