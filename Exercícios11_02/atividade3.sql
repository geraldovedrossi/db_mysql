create database db_escola2;

use db_escola2;

create table tb_escola2(
	id bigint auto_increment,
    aluno varchar (255) not null,
    cadastro bigint,
    ano int,
    nota decimal(8,2),
    primary key (id)
);

insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Pedro",(id+1000),2,4);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Maria", (id+1000), 5, 7);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Joana", (id+1000), 4, 8.5);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Rodrigo", (id+1000), 2, 3);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Carol", (id+1000), 6, 9.5);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Alessandro", (id+1000), 9, 2.5);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Jacque", (id+1000), 8, 10);
insert into tb_escola2 (aluno, cadastro, ano, nota) values ("Rafael", (id+1000), 8, 10);

select * from tb_escola2 where nota >= 7;
select * from tb_escola2 where nota < 7;

update tb_escola2 set nota = 7 where id = 1;