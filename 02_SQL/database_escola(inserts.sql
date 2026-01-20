create database Escolinha;
use Escolinha;

create table cursos (
idCursos int primary key auto_increment,
nomeCurso varchar(45),
cargaHorariaCurso int,
valorCurso decimal(10,2),
dataCriacaoCurso date);

create table modulos (
idModulos int primary key auto_increment,
nomeModulo varchar(45),
cargaHorariaModulo int,
idCursos int, 
foreign key (idCursos) references cursos(idCursos)
);
create table professores (
idProfessores int primary key auto_increment,
cpf varchar(11),
nomeProfessor varchar(45),
especialidadeProfessor varchar(45),
telefoneProfessor varchar(15),
dataContratacaoProfessor date
);
create table alocacao (
dataAlocacao date,
idAlocacao int primary key auto_increment,
idProfessores int,
idModulos int,
foreign key (idProfessores) references professores(idProfessores),
foreign key (idModulos) references modulos(idModulos)
);
insert into cursos (idCursos, nomeCurso, cargaHorariaCurso, valorCurso, dataCriacaoCurso) values
(1001, 'desenvolvimento web', 200, 1500, '2025-02-10'),
(1002, 'banco de dados', 180, 1200, '2025-03-20'),
(1003, "ingles", 120, 800, '2025-04-02');

insert into modulos (idModulos, nomeModulo, cargaHorariaModulo, idCursos) values
(1, 'HTML/CSS', 40, 1001),
(2, 'JavaScrpt', 60, 1001),
(3, 'React', 50, 1001),
(4, 'SQL basico', 50, 1002),
(5, 'Modelagem', 40, 1002),
(6, 'SQL avancado', 60, 1002),
(7, 'Ingles', 50, 1003);

insert into professores (idProfessores, cpf, nomeProfessor, especialidadeProfessor, telefoneProfessor, dataContratacaoProfessor) values
(11, '12345678900', 'Vanessa Blomer', 'Front-End', '(49)9999-1111', '2025-01-15'),
(22, '98765432100', 'Fernando Sagaz', 'Back-End', '(49)8888-22222', '2025-01-15'),
(33, '24681011123', 'Rodrigo', 'Ingles', '(48)7777-3333', '2025-01-15');

insert into alocacao (dataAlocacao, idAlocacao, idProfessores, idModulos) values
('2025-06-04', 1, 11, 1),
('2025-06-04', 2, 11, 3),
('2025-06-04', 3, 22, 2),
('2025-06-04', 4, 22, 4),
('2025-06-04', 5, 22, 5),
('2025-06-04', 6, 33, 7);

show tables;
desc cursos;
select * from  

 



