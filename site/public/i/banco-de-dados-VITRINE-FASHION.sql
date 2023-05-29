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
constraint fkRegiao foreign key (fkRegiao) references regiao(idRegiao)
);

desc usuario;
select * from usuario;
select * from usuario join regiao on fkRegiao = idRegiao;
select usuario.nome, usuario.sobrenome, usuario.email, usuario.senha, usuario.telefone, regiao.regiao from usuario join regiao on fkRegiao = idRegiao;


create table quizResultado (
id int primary key auto_increment,
resultado varchar(45),
fkUsuario int,
constraint fkUsuario foreign key (fkUsuario) references usuario(idUsuario)
);
