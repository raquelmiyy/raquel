create database vitrineFashion;
use vitrineFashion;


create table regiao (
idRegiao int primary key auto_increment,
regiao varchar(45)
);

insert into regiao values
(null,'Sul'),
(null,'Sudeste'),
(null,'Centro-Oeste'),
(null,'Nordeste'),
(null,'Norte');

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
dtNasc date,
senha char(16),
telefone char(11),
fkRegiao int,
constraint fkRegiao foreign key (fkRegiao) references regiao(idRegiao),
fkEstilo int,
constraint fkEstilo foreign key (fkEstilo) references usuario(idUsuario)
);

desc usuario;
select * from usuario;
select * from usuario join regiao on fkRegiao = idRegiao;
select usuario.nome, usuario.sobrenome, usuario.email, usuario.senha, usuario.telefone, regiao.regiao from usuario join regiao on fkRegiao = idRegiao;


create table estilo (
id int primary key auto_increment,
estilo varchar(45)
);

insert into estilo values
(null,'Casual'),
(null,'Clássico'),
(null,'Criativo'),
(null,'Elegante'),
(null,'Dramático Urbano'),
(null,'Romântico'),
(null,'Sexy');

select count(usuario.fkEstilo) as Voto, estilo.estilo as Estilo from usuario join estilo on estilo.id = usuario.fkEstilo group by usuario.fkEstilo;
select count(usuario.fkRegiao) as Voto, regiao.regiao as Regiao from usuario join regiao on regiao.idRegiao = usuario.fkRegiao group by usuario.fkRegiao;


