create database db_rh;

use db_rh;

create table tb_rh(
	id bigint auto_increment,
    nome varchar (255) not null,
    salario decimal(8,2),
    cadastro bigint,
    mesesDeEmpresa bigint,
	primary key (id)
);

insert into tb_rh (nome, salario, cadastro, mesesDeEmpresa) values ("Pedro", 3500, 1111, 24);
insert into tb_rh (nome, salario, cadastro, mesesDeEmpresa) values ("Ana", 3000, 2222, 12);
insert into tb_rh (nome, salario, cadastro, mesesDeEmpresa) values ("João", 1900, 3333, 4);
insert into tb_rh (nome, salario, cadastro, mesesDeEmpresa) values ("Maria", 5000, 4444, 64);
insert into tb_rh (nome, salario, cadastro, mesesDeEmpresa) values ("Carol", 7290.50, 5555, 72);

select nome from tb_rh where salario > 2000;
select nome from tb_rh where salario < 2000;

update tb_rh set salario = 1900, mesesDeEmpresa = 5 where id = 3;