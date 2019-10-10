create database petshop;

use petshop;

create table cliente(

id_cliente int primary key auto_increment,
nome_cliente varchar(30),
telefone_cliente varchar(20),
sexo_cliente char(1),
bairro_cliente varchar(40)
);

insert into cliente values
(null,'Italo Ferreira','11968118804','m','Rua Jardim das Olivas'),
(null,'Maria da Silva','11281792894','f','Rua 14'),
(null,'João Lucas','1118724989','m','Rua 16'),
(null,'João Vieira','1138974829','m','Rua 09'),
(null,'Mateus Felipe','113187489','m','Rua dos bandeirantes'),
(null,'Allan Lopes','11976853354','f','Rua marcelo mendez');

create table pet(

id_pet int primary key auto_increment,
nome_pet varchar(20),
tipo_pet varchar(30),
raca_pet varchar(30),
dt_nasc date,
fk_dono int,
foreign key (fk_dono) references cliente(id_cliente)
) auto_increment = 101;

insert into pet values
(null,'Yuna','Gato','Siamês','2019-01-02',1),
(null,'Neném','Passaro','Papagaio','2002-04-12',2),
(null,'Tobi','Cachorro','yorkshire','2000-01-20',3),
(null,'Malaquias','Gato','Persa','2019-01-20',4),
(null,'Sans','Cachorro','Vira lata','2004-07-18',3),
(null,'Jerry','Rato','Vira Lata','2012-07-10',3),
(null,'Yuna','Gato','Persa','2017-02-20',4),
(null,'José','Passaro','Papagaio','2019-03-28',5),
(null,'Sandra','Cachorro','Vira lata','2019-02-07',6),
(null,'Caio','pássaro','calopsita','2017-06-12',1);

select * from cliente;

select * from pet;

describe cliente;
alter table cliente modify column nome_cliente varchar(45);
describe cliente;

select * from pet where tipo_pet like 'Cachorro';

select nome_pet, dt_nasc from pet ;

select * from pet order by nome_pet;

select * from cliente order by bairro_cliente desc;

select * from pet where nome_pet like 'Y%';

select * from cliente where nome_cliente like '%Ferreira';

update cliente set telefone_cliente = '968118804' where id_cliente = '1'; 

select * from cliente where id_cliente like '1';

select * from cliente as cl, pet as pe where cl.id_cliente = pe.fk_dono; 

select * from cliente where sexo_cliente like 'f';

alter table cliente drop sexo_cliente;

delete from pet where id_pet = '103';

select * from pet;  

drop table pet;
drop table cliente;