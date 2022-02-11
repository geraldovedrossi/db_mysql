create database db_ecomm;

use db_ecomm;

create table tb_ecomm (
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal(8,2),
    quantidade bigint,
    marca varchar (255) not null,
    primary key (id)
);

insert into tb_ecomm (nome, preco, quantidade, marca) values ("Tênis cano alto", 749.99, 10, "Nike");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Sapatilha", 309.99, 20, "Lilica Repilica");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Papete", 89.99, 50, "Seninha");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Sapato Social", 449.99, 5, "Armani");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Tênis de corrida", 249.99, 15, "Adidas");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Tênis de basquete", 999.99, 7, "Nike");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Regata DryFit", 129.99, 85, "Track&Field");
insert into tb_ecomm (nome, preco, quantidade, marca) values ("Boné aba reta", 49.99, 90, "KondZilla");

select * from tb_ecomm where preco > 500;
select * from tb_ecomm where preco <= 500;

update tb_ecomm set preco = 510 where id = 4;

