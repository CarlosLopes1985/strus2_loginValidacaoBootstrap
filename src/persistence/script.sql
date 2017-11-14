create database strutslogin;
use strutslogin;

create table usuario(
	idUsuario int primary key auto_increment,
	login varchar(50) not null unique,
	senha varchar(50) not null,
	nome varchar (35) not null
);