-- Criando o DB para alura;
create database bitebank;

use bitebank;

create table tb_conta(
	id bigint auto_increment,
    titular varchar (255) not null,
    agencia int,
    numero int,
    saldo decimal,
    primary key (id)
);

insert into tb_conta (titular, agencia, numero, saldo)
	
values ("Pedro", 1555, 11111, 500);
    
select * from tb_conta;

alter table tb_conta modify saldo decimal(8,2);

update tb_conta set titular = "Ana", numero = 22222, saldo = 299.99 where id = 2;

insert into tb_conta (titular, agencia, numero, saldo)
values ("Joana", 1555, 33333, 700);
insert into tb_conta (titular, agencia, numero, saldo)
values ("Marcos", 1555, 44444, 74.99);


update tb_conta set titular = "Roberto", numero = 55555 where id = 4;

delete from tb_conta where id = 4;