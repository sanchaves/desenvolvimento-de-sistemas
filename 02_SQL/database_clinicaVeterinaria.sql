create database clinicaVet;
use clinicaVet;
create table cliente (
id_cliente INT PRIMARY KEY auto_increment,
nome varchar(45),
telefone varchar(20));
create table animal (
id_animal INT PRIMARY KEY auto_increment,
nome_animal varchar(45),
especie varchar(45),
id_cliente int,
foreign key (id_cliente) references cliente(id_cliente));
CREATE TABLE Veterinario (
  id_veterinario INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  especialidade VARCHAR(100));
create table consulta (
id_consulta int primary key auto_increment,
data_consulta date,
observaoces varchar(150),
id_animal int,
id_veterinario int,
foreign key (id_animal) references animal(id_animal),
foreign key (id_veterinario) references veterinario(id_veterinario));


