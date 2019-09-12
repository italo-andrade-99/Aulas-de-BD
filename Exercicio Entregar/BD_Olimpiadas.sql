Create database Olimpiadas;
use Olimpiadas;

create table pais(
id_pais int primary key auto_increment,
nome_pais varchar (50),
capital varchar (30)
);

insert into pais values (null, 'Brasil','Brasilia'),
(null,'Canada','Ottawa'),
(null,'Estados Unidos','Washington'),
(null,'Japão','Tóquio');

create table atleta (
id_atleta int primary key auto_increment,
nome varchar (50),
medalha varchar (10),
esporte varchar (30)
);

alter table atleta add column fk_pais int;
describe atleta;

insert into atleta values 
(null, 'Allan','Bronze','Salto com vara',1),
(null,'Emely','Prata','Corrida de 50km', 2),
(null,'Amanda','Ouro','Nado sincronizado', 3),
(null,'Brunao','Ouro','Corrida dos 100km','4');

select * from atleta as atl, pais as pa where atl.fk_pais = pa.id_pais;

select * from atleta as atl, pais as pa where atl.fk_pais = pa.id_pais and pa.nome_pais ='Brasil';

