create database shopping;

use shopping;

CREATE TABLE Cliente (
 idCliente INTEGER PRIMARY KEY
AUTO_INCREMENT,
 cpf VARCHAR(11),
 nome VARCHAR(60),
 dtNasc DATE
);
CREATE TABLE Modelo (
 idModelo INTEGER PRIMARY KEY AUTO_INCREMENT,
 marca VARCHAR(40),
 modelo varchar(40)
);
CREATE TABLE Veiculo (
 idVeiculo INTEGER PRIMARY KEY
AUTO_INCREMENT,
 placa VARCHAR(8),
 ano INTEGER,
 cor VARCHAR(20),
 idModelo INTEGER,
 idCliente INTEGER,
 FOREIGN KEY (idModelo) REFERENCES
Modelo(idModelo),
 FOREIGN KEY (idCliente) REFERENCES
Cliente(idCliente)
);
CREATE TABLE Patio (
 idPatio INTEGER PRIMARY KEY AUTO_INCREMENT,
 localizacao varchar(2),
 capacidade INTEGER
);
CREATE TABLE Estacionamento (
 idEstacionamento INTEGER PRIMARY KEY
AUTO_INCREMENT,
 idPatio INTEGER,
 idVeiculo INTEGER,
 entrada DATETIME NOT NULL,
 saida DATETIME DEFAULT NULL,
 status VARCHAR(15) DEFAULT 'estacionado',
 FOREIGN KEY (idPatio) REFERENCES
Patio(idPatio),
 FOREIGN KEY (idVeiculo) REFERENCES
Veiculo(idVeiculo)
);
-- Clientes
INSERT INTO Cliente (cpf, nome, dtNasc) VALUES
('11122233344', 'João Silva', '1980-05-15'),
('55566677788', 'Maria Souza', '1992-11-20'),
('99988877766', 'Carlos Pereira', '1975-02-10'),
('12345678901', 'Ana Lima', '1988-07-30'),
('98765432100', 'Paulo Mendes', '1990-03-25');
-- Modelos
INSERT INTO Modelo (marca, modelo) VALUES
('Ford', 'Fiesta'),
('Toyota', 'Corolla'),
('Honda', 'Civic'),
('Chevrolet', 'Onix'),
('Volkswagen', 'Golf');
-- Veículos
INSERT INTO Veiculo (placa, ano, cor, idModelo,
idCliente) VALUES
('ABC1234', 2019, 'Preto', 1, 1),
('XYZ5678', 2021, 'Prata', 2, 2),
('QWE4321', 2015, 'Vermelho', 3, 3),
('LMN5678', 2018, 'Branco', 4, 4),
('FGR8765', 2017, 'Azul', 5, 5);
-- Pátios
INSERT INTO Patio (localizacao, capacidade)
VALUES
('A1', 50),
('B2', 40),
('C3', 60),
('D4', 55),
('E5', 45);
-- Estacionamento
INSERT INTO Estacionamento (idPatio, idVeiculo,
entrada, saida, status) VALUES
(1, 1, '2025-11-03 14:00:00', '2025-11-03 17:30:00', 'retirado'),
(2, 2, '2025-11-04 08:00:00', NULL, 'estacionado'), -- ainda estacionado
(1, 3, '2025-11-03 09:15:00', '2025-11-03 12:10:00', 'retirado'),
(4, 4, '2025-11-02 16:30:00', NULL, 'estacionado'), -- ainda estacionado
(3, 5, '2025-11-04 07:50:00', '2025-11-04 08:50:00', 'retirado');




