create database escola;
use escola;

create table aluno (
	ra int primary key auto_increment,
    nome varchar(50),
    telefone varchar(12),
    fk_projeto int,
    fk_aluno int,
    foreign key (fk_projeto) references projeto (id_Projeto),
    foreign key (fk_aluno) references aluno (ra)
) auto_increment = 10006;
describe aluno;

create table projeto(
	id_Projeto int primary key auto_increment,
    nome varchar(20),
	descricao varchar(200)
);
describe projeto;


create table acompanhante(
	id_Acompanhante int primary key auto_increment,
    relacao varchar(15),
    nome varchar (20),
    fk_aluno int,
    foreign key (fk_aluno) references aluno (ra),
    check (relacao = 'amigo' or relacao = 'namorada' or relacao = 'pai' or relacao = 'mãe')
);

describe acompanhante;
insert into projeto values
(null,'graostech','projeto sobre armazenamento de graos'),
(null,'manajj','projeto sobre um acessório de saltar sobre os muros');

select * from aluno;

insert into aluno values 
(null,'Amanda','123214123',1,null),
(null,'Daniel','124124142',2,10007),
(null,'Sandra','515121414',2,10007),
(null,'Mailom','214131414',1,10007),
(null,'Pedro','123212412',1,10007);

insert into acompanhante values
(null,'amigo','Alex',10007),
(null,'namorada','Luna',10007),
(null,'pai','João',10007),
(null,'mãe','Viuma',10007);

select * from aluno as al, projeto as pr where al.fk_Projeto = pr.id_Projeto;

select * from aluno as al, acompanhante as ac where ac.fk_Aluno = al.ra;

select * from aluno as al where al.fk_aluno = al.ra;

select * from aluno as al, projeto as pr where al.fk_projeto = pr.id_Projeto and pr.nome = 'graostech';

select * from aluno as al, projeto as pr, acompanhante as ac where al.fk_projeto = pr.id_Projeto and ac.fk_Aluno = al.ra;