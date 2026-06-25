CREATE DATABASE tiendalibros;
use tiendaLibros;

create table categoria (
    cod_categoria int auto_increment primary key,
    nombre_categoria varchar(50) not null unique,
    descripcion varchar(500)
    );

create table ubicacion (
    cod_ubicacion int auto_increment primary key,
    pasillo varchar(20) not null,
    estante varchar(20) not null,
    UNIQUE (pasillo, estante)
    );

create table editorial (
    cod_editorial int auto_increment primary key,
    nit varchar(20) not null unique,
    nombre_editorial varchar(50) not null,
    direccion_editorial varchar(50) not null,
    telefono varchar(20) not null,
    ciudad varchar(100) not null
    );

create table autor (
    cod_autor int auto_increment primary key,
    nombre_autor varchar(50)
    );

create table cliente (
    cod_cliente int auto_increment primary key,
    nombre_cliente varchar(50) not null,
    direccion_cliente varchar(50) not null,
    correo_cliente varchar(50) not null,
    telefono_cliente int(10) not null
    );

create table libro (
    cod_libro int auto_increment primary key,
    cod_autor int not null
    cod_editorial int not null
    cod_categoria int not null
    ISBN int auto_increment UNIQUE,
    titulo varchar(50) not null,
    foreign key (cod_autor) references autor(cod_autor) primary key,
    foreign key (cod_editorial) references editorial(cod_editorial) primary key,
    fecha_publicacion varchar(20) not null,
    foreign key (cod_categoria) references categoria(cod_categoria) primary key,
    );

