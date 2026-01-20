create database locaFacil;
use locaFacil;

create table cliente (
idcliente int primary key auto_increment,
nomeCliente varchar(100),
cpfCliente varchar(20),
dataNascimento date,
telefone varchar(15),
email varchar(100)
);

create table marca (
idMarca int primary key auto_increment,
nome varchar(100),
paisOrigem varchar(50)
);

create table departamento (
idDepartamento int primary key auto_increment,
nomeDepartamento varchar(100),
descricao text
);

create table veiculo (
idVeiculo int primary key auto_increment,
placa varchar(10),
modelo varchar(50),
anoFabricacao year,
cor varchar(30),
quilometragem int,
idMarca int,
foreign key (idMarca) references marca(idMarca)
);

create table multa (
idMulta int primary key auto_increment,
dataMulta date,
descricaoMulta text,
valorMulta decimal(10,2),
localOcorrencia varchar(100),
pago char(1),
idVeiculo int,
foreign key (idVeiculo) references veiculo(idVeiculo)
);

create table funcionario (
idFuncionario int primary key auto_increment,
nomeFuncionario varchar(100),
cpfFuncionario varchar(20),
cargoFuncionario varchar(50),
dataAdmissao date,
idDepartamento int,
foreign key (idDepartamento) references departamento(idDepartamento)
);

create table manutencao (
idManutencao int primary key auto_increment,
dataManutencao date,
descricaoManutencao text,
valorManutencao decimal(10,2),
idFuncionario int,
idVeiculo int,
foreign key (idFuncionario) references funcionario(idFuncionario),
foreign key (idVeiculo) references veiculo(idVeiculo)
);

create table locacao (
idLocacao int primary key auto_increment,
dataInicio date,
dataFim date,
valorTotal decimal(10,2),
idVeiculo int,
idFuncionario int,
idCliente int,
foreign key (idVeiculo) references veiculo(idVeiculo),
foreign key (idFuncionario) references funcionario(idFuncionario),
foreign key (idCliente) references cliente(idCliente)
);
create table seguro (
idSeguro int primary key auto_increment,
seguradora varchar(100),
valorApolice decimal (10,2),
dataInicio date,
dataFim date,
cobertura text,
idVeiculo int unique,
foreign key (idVeiculo) references veiculo(idVeiculo)
);

INSERT INTO cliente (idCliente, nomeCliente, cpfCliente, dataNascimento, telefone, email) VALUES
(1, 'Ana Silva', '123.456.789-00', '1985-06-15', '11999990000', 'ana.silva@email.com'),
(2, 'Carlos Souza', '987.654.321-00', '1990-08-22', '11988881111', 'carlos.souza@email.com'),
(3, 'Mariana Lima', '456.789.123-00', '1988-01-10', '11977772222', 'mariana.lima@email.com'),
(4, 'Pedro Oliveira', '321.654.987-00', '1979-12-05', '11966663333', 'pedro.oliveira@email.com'),
(5, 'Julia Santos', '789.123.456-00', '1995-03-30', '11955554444', 'julia.santos@email.com');
INSERT INTO marca (idMarca, nome, paisOrigem) VALUES
(1, 'Ford', 'EUA'),
(2, 'Chevrolet', 'EUA'),
(3, 'Volkswagen', 'Alemanha'),
(4, 'Hyundai', 'Coreia do Sul'),
(5, 'Toyota', 'Japão');
INSERT INTO departamento (idDepartamento, nomeDepartamento, descricao) VALUES
(1, 'Administração', 'Departamento responsável pela gestão administrativa'),
(2, 'Financeiro', 'Departamento responsável pelas finanças'),
(3, 'Manutenção', 'Responsável pela manutenção dos veículos'),
(4, 'Vendas', 'Responsável pelas locações'),
(5, 'Recursos Humanos', 'Gestão de pessoal');
INSERT INTO veiculo (idVeiculo, placa, modelo, anoFabricacao, cor, quilometragem, idMarca) VALUES
(1, 'ABC1234', 'Ford Ka', 2018, 'Vermelho', 50000, 1),
(2, 'DEF5678', 'Chevrolet Onix', 2020, 'Preto', 30000, 2),
(3, 'GHI9012', 'Volkswagen Golf', 2017, 'Branco', 60000, 3),
(4, 'JKL3456', 'Hyundai HB20', 2019, 'Azul', 40000, 4),
(5, 'MNO7890', 'Toyota Corolla', 2021, 'Prata', 10000, 5);
INSERT INTO multa (idMulta, dataMulta, descricaoMulta, valorMulta, localOcorrencia, pago, idVeiculo) VALUES
(1, '2024-01-10', 'Excesso de velocidade', 150.00, 'Rua A', 'N', 1),
(2, '2023-12-20', 'Estacionamento irregular', 100.00, 'Avenida B', 'S', 2),
(3, '2024-02-15', 'Farol vermelho', 200.00, 'Rua C', 'N', 3),
(4, '2023-11-05', 'Direção perigosa', 250.00, 'Rodovia D', 'S', 4),
(5, '2024-03-01', 'Estacionamento em local proibido', 120.00, 'Rua E', 'N', 5);
INSERT INTO funcionario (idFuncionario, nomeFuncionario, cpfFuncionario, cargoFuncionario, dataAdmissao, idDepartamento) VALUES
(1, 'Lucas Pereira', '111.222.333-44', 'Gerente', '2015-05-10', 1),
(2, 'Fernanda Costa', '555.666.777-88', 'Analista Financeiro', '2017-08-20', 2),
(3, 'Ricardo Alves', '999.888.777-66', 'Mecânico', '2016-03-15', 3),
(4, 'Patrícia Gomes', '444.333.222-11', 'Vendedora', '2018-11-01', 4),
(5, 'Marcos Silva', '222.111.000-99', 'RH', '2019-01-25', 5);
INSERT INTO manutencao (idManutencao, dataManutencao, descricaoManutencao, valorManutencao, idFuncionario, idVeiculo) VALUES
(1, '2024-01-05', 'Troca de óleo e filtro', 300.00, 3, 1),
(2, '2023-12-15', 'Revisão dos freios', 450.00, 3, 2),
(3, '2024-02-20', 'Troca de pneus', 600.00, 3, 3),
(4, '2023-11-25', 'Alinhamento e balanceamento', 200.00, 3, 4),
(5, '2024-03-10', 'Reparo do sistema elétrico', 350.00, 3, 5);
INSERT INTO locacao (idLocacao, dataInicio, dataFim, valorTotal, idVeiculo, idFuncionario, idCliente) VALUES
(1, '2024-01-01', '2024-01-10', 1000.00, 1, 4, 1),
(2, '2024-02-05', '2024-02-15', 1200.00, 2, 4, 2),
(3, '2024-03-10', '2024-03-20', 1100.00, 3, 4, 3),
(4, '2024-04-01', '2024-04-10', 1300.00, 4, 4, 4),
(5, '2024-05-05', '2024-05-15', 1400.00, 5, 4, 5);
INSERT INTO seguro (idSeguro, seguradora, valorApolice, dataInicio, dataFim, cobertura, idVeiculo) VALUES
(1, 'Seguradora A', 1200.00, '2024-01-01', '2025-01-01', 'Cobertura completa', 1),
(2, 'Seguradora B', 1500.50, '2024-02-15', '2025-02-15', 'Cobertura contra terceiros', 2),
(3, 'Seguradora C', 1100.75, '2024-03-10', '2025-03-10', 'Cobertura contra roubo', 3),
(4, 'Seguradora D', 1300.00, '2024-04-20', '2025-04-20', 'Cobertura completa com assistência 24h', 4),
(5, 'Seguradora E', 1400.25, '2024-05-05', '2025-05-05', 'Cobertura para danos a terceiros', 5);
select * from seguro;











