create database escola;

use escola;
drop database escola;

create table Aluno(
id_aluno int primary key auto_increment,
nome varchar(50),
fkempresa int,
foreign key(fk_empresa) references Empresa(idempresa),
fk_instituição int,
foreign key(fk_instituição) references Instituição (id_inst));

select * from Aluno;

insert into Aluno values
(null,"Alan",1,1),
(null,"Pedro",2,2),
(null,"Alex",3,3);

create table Empresa(
id_empresa int primary key auto_increment,
nome_empresa varchar(50),
representante varchar(50));

insert into Empresa values
(null,"Valid","Jorge"),
(null,"Stefanini","Thiago"),
(null,"Deloitte","Roberto");

create table Instituição(
id_inst int primary key auto_increment,
nome_inst varchar(50),
bairro varchar(50));

insert into Instituição values
(null,"Etec zl","Zona Leste"),
(null,"Band Tec","Consolação"),
(null,"Jardim das Olivas","Vila Any");

select * from Instituição;
select * from Aluno;
select * from Empresa;
select * from Aluno, Empresa, Instituição where id_inst = fk_instituição and id_empresa = fk_empresa;
