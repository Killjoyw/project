drop database if exists Tianguis;

create database Tianguis;

use Tianguis;

create table usuario(
Nombre varchar(30) primary key,
Apell_P varchar(30),
Apell_M varchar(30),
Phone varchar(30),
Email varchar(30),
Estado varchar(30),
Municipio varchar(30)
);

create table productos(
Id_prod varchar (20) primary key,
prod1 varchar(20)
 
);

create table tianguis(
Id_tianguis varchar (20) primary key,
nom_tng varchar(15),
direc_tng varchar(15)
);

create table Ayuda(
Nombre varchar (20),
Email varchar (40),
Sug varchar (80)); 

create table gratis(
Email varchar (40) primary key not null
);

select * from gratis;