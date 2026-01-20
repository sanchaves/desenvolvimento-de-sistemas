use shopping;
-- a) Exiba a placa e o nome dos donos de todos os veículos.
select v.placa, c.nome from veiculo v join cliente c on c.idCliente = v.idCliente;

-- b) Exiba o CPF e o nome do cliente que possui o veículo de placa “QWE4321”.
select c.cpf, c.nome from cliente c join veiculo v on c.idCliente = v.idCliente where placa = 'QWE4321';

-- c) Exiba a placa e a cor do veículo que possui o código de estacionamento 1.
select v.placa, v.cor from veiculo v join estacionamento e on v.idVeiculo = e.idVeiculo where idEstacionamento = 1;

-- d) Exiba a placa e o ano do veículo que possui o código de estacionamento 3.
select v.placa, v.ano from veiculo v join estacionamento e on v.idVeiculo = e.idVeiculo where idEstacionamento = 3;

-- e) Exiba a placa, o ano do veículo e a descrição de seu modelo, se ele possuir ano a partir de 2000.
select v.placa, v.ano, m.modelo from veiculo v, modelo m where ano >=2000;

-- f) Exiba o Localização, a data de entrada e de saída dos estacionamentos do veículo de placa “LMN5678”.
select p.localizacao, e.entrada, e.saida from Patio p join estacionamento e on p.idPatio = e.idPatio where placa = 'LMN5678';

-- g) Exiba a quantidade de vezes que os veículos de cor vermelho estacionaram.
select count(*) as total_vermelhos from estacionamento e join veiculo v on e.idVeiculo = v.idVeiculo where cor = 'vermelho';

-- h) Liste todos os clientes e modelo que possuem carro de modelo Golf.
select c.nome, m.modelo from cliente c join veiculo v on v.idCliente = c.idCliente join modelo m on v.idModelo = m.idModelo where modelo = 'golf';

-- i) Liste as placas, os horários de entrada e saída dos veículos de cor branco.
select v.placa, e.entrada, e.saida from veiculo v join estacionamento e on v.idVeiculo = e.idVeiculo where cor = 'branco';
-- j) Liste todos os estacionamentos do veículo de placa “ABC1234”.
   ?
   
-- k) Exiba o nome do cliente que possui o veículo cujo código do estacionamento é 2.
select c.nome from cliente c join veiculo v ON v.idCliente = c.idCliente join estacionamento e ON e.idVeiculo = v.idVeiculo WHERE e.idEstacionamento = 2;

-- l) Exiba o CPF do cliente que possui o veículo cujo código do estacionamento é 3.
select c.CPF from cliente c join;
-- m) Exiba a descrição do modelo do veículo cujo código do estacionamento é 2.

-- n) Exiba a placa, o nome dos donos e a descrição dos modelos de todos os veículos.







select e.idEstacionamento, v.placa, c.nome, e.entrada, e.saida, ceil (timestampdiff(minute, e.entrada, e.saida)/60) as horas_cobradas
from estacionamento e
join veiculo v on v.idVeiculo = e.idVeiculo 
join cliente c on c.idCliente = v.idCliente
where e.saida is not null;











