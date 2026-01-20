CREATE DATABASE ESTACIONAMENTO;
USE ESTACIONAMENTO;
CREATE TABLE CLIENTES (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    nome_completo VARCHAR(70) NOT NULL,
    data_nascimento DATE NOT NULL
    );
    ALTER TABLE CLIENTES RENAME COLUMN id_cliente TO idclientes;
CREATE TABLE MODELO (
	idmodelo INT PRIMARY KEY AUTO_INCREMENT,
    codigo VARCHAR(15) NOT NULL,
    descricao VARCHAR(60) NOT NULL
    );
CREATE TABLE PATIO (
	idpatio INT PRIMARY KEY AUTO_INCREMENT,
    numero INT,
    endereco VARCHAR(100),
    capacidade_maxima INT 
    );
CREATE TABLE VEICULOS (
	idveiculos INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(20),
    cor VARCHAR(20),
    ano_fabricacao INT,
    idClientes INT,
    idModelo INT,
    FOREIGN KEY (idClientes) REFERENCES CLIENTES(idclientes),
    FOREIGN KEY (idModelo) REFERENCES MODELO(idmodelo)
    );
CREATE TABLE ESTACIONAMENTO (
	idestacionamento INT PRIMARY KEY AUTO_INCREMENT,
    data_entrada DATE,
    hora_entrada TIME,
    data_saida DATE,
    hora_saida TIME,
    idVeiculos INT,
    idPatio INT,
    FOREIGN KEY (idVeiculos) REFERENCES VEICULOS(idveiculos),
    FOREIGN KEY (idPatio) REFERENCES PATIO(idpatio)
    );
RENAME TABLE ESTACIONAMENTO TO REGISTRO;
    
 SHOW TABLES;
 SELECT * FROM VEICULOS;
    
INSERT INTO CLIENTES (idcliente, CPF, nome_completo, data_nascimento) VALUES
(1, '082.913.609-60', 'Alessandra Chaves', 12-03-1998),
(2, '086.698.487-96', 'Betina Cardoso', 05-05-2008),
(3, '698.558.214-00', 'Adriana Antunes', 14-08-1992),
(4, '025.699.025-47', 'Carlos Moraes', 01-05-1978),
(5, '088.666.478-08', 'Fabricio Souza', 22-06-2000),
(6, '145.667.887-65', 'Marcela Figeri', 12-03-1965),
(7, '555.666.777-88', 'Ana Costa', '2000-01-15'),
(8, '999.888.777-66', 'Lucas Martins', '1995-11-02'),
(9, '321.654.987-00', 'Paula Ferreira', '1989-03-07'),
(10, '444.555.666-77', 'Carlos Lima', '1970-07-25');
