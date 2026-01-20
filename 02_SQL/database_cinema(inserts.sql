sugirocreate database locadora;
use locadora;
create table Paises(
	idPaises int auto_increment primary key,
    nomePaises VARCHAR(45),
    siglaPaises VARCHAR(45)
);
create table Usuarios(
	idUsuarios int auto_increment primary key,
    nomeUsuarios VARCHAR(45),
    loginUsuarios VARCHAR(45),
    emailUsuarios VARCHAR(45),
    senhaUsuarios VARCHAR(45),
    Paises_idPaises int,
    foreign key (Paises_idPaises) references Paises(idPaises)
);
create table Imagens(
	idImagens INT auto_increment primary key,
    caminhoImagens VARCHAR(50),
    tipoImagens VARCHAR(20)
);
create table Categoria (
	id_categoria int auto_increment primary key,
    categoria varchar (50)
);
create table Filmes(
	idFilmes INT auto_increment primary key,
    tituloFilmes VARCHAR(50),
    subtituloFilmes VARCHAR(50),
    sinopseFilmes VARCHAR(250),
    dataLancamentoFilmes DATE,
    trailerFilmes VARCHAR(50),
    duracaoFilmes DATE,
    Imagens_idImagens INT,
    foreign key (Imagens_idImagens) references Imagens(idImagens)
);
create table Atores(
	idAtores int primary key not null auto_increment,
    nomeAtores varchar(50),
    biografiaAtores text,
    paises_idPaises int,
    imagens_idImagens int,
	foreign key (paises_idPaises) references paises(idPaises),
    foreign key (imagens_idImagens) references imagens(idPaises)
);
create table Diretores(
	idDiretores int primary key not null auto_increment,
    nomeDiretores varchar(45),
    biogradiaDiretores text,
    paises_idPaises int,
    imagens_idImagens int,
    foreign key (paises_idPaises) references paises(idPaises),
    foreign key (imagens_idImagens) references imagens(idImagens)
);
    
    
    
    
create table Filmes_Categoria(
	filmes_idFilmes int,
	categoria_idCategoria int,
	primary key (filmes_idFilmes, categoria_idCategoria),
	foreign key (filme_idFilmes) references Filmes(idFilmes),
	foreign key (categoria_idCategoria) references categoria(idCategoria)
);
insert into paises (idPaises, nomePais, siglaPais) values
	(1, "Brasil", "BR"),
	(2, "Estados Unidos", "USA"),
	(3, "Reino Unido", "RU"),
	(4, "França", "FRA");
insert into usuarios (idUsuarios, nomeUsuario, loginUsuario, emailUsuario, senhaUsuario, paises_idPaises) values
	(1, "joa.silva", "jsilva", "joaosilva@gmail.com", "senha123", 1),
	(2, "maria.souza", "msouza", "maria.souza@gmail.com", "senha456", 2),
	(3, "pedro.oliveira", "poliveira", "pedro.oliveira@gmail.com", "senha789", 3),
	(1, "ana.pereira", "apereira", "ana.pereira@gmail.com", "senha654", 4);
insert into imagens (idImagens, caminhoImagens, tipoImagens) values
	(1, "Filmes1_poster.jpg", "filme"),
	(2, "Filmes2_poster.jpg", "filme"),
	(3, "ator1_foto.jpg", "ator"),
	(4, "diretor1_foto.jpg", "diretor");
insert into categoria (idCategoria, categoria) values
	(1, "Acao"),
	(2, "Comédia"),
	(3, "Drama"),
	(4, "Animação");
insert into filmes (idFilmes, tituloFilmes, subtituloFilmes, sinopseFilmes, dataLancamentoFilmes, trailer, duracao, imagens_idFilmes) values
	(1, "O vingador", "A Historia de um Heroi", "Sinopse do filme de ação", "2023-01-15", "trailer1.mp4", "02:19:00", 1),
	(2, "A grande virada", "Uma comédia inesquecível", "Sinopse do filme de comédia", "2022-05-20", "trailer2.mp4", "01:45:00", 2),
	(3, "O Resgate", "Em busca da esperança", "Sinopse do filme de drama", "2021-08-10", "trailer3.mp4", "02:00:00", 3),
	(4, "A guerra estelar", "Batalha pela galáxia", "Sinopse do filme de ficção", "2020-11-25", "trailer1.mp4", "02:30:00", 4);
insert into atores (idAtores, nomeAtores, biografiaAtores, paises_idPaises, imagens_idImagens) values
	(1, "Chris Evans", "Ator famoso por interpretar Capitão América", 2, 3),
    (2, "Scarlet", "Atriz conhecida por seu papel como viúva negra", 2, 3),
    (3, "Leonardo Dicaprio", "Ator vencedor do oscar", 2, 3),
    (4, "Tom Hanks", "Ator Versatil, conhecido por papéis dramaticos e comicos", 2, 3);
insert into diretores (idDiretores, nomeDiretores, biogradiaDiretores, paises_idPaises, imagens_idImagens) values
	(1, "Steve Spilberg", "Diretor de filmes clássicos como E.T e Jurassic Park", 2, 4),
    (2, "", "", ),
    (3, "", "", ),
    (4, "", "", );
    
    insert into filmes_atores(filmes_idFilmes, atores_idAtores) values
    
    insert into filmes_diretores(filmes_idFilmes, diretores_idDiretores) values
    
    insert into filmes_categorias(filmes_idFilmes, categoria_idCategoria) values
    
    
    
	

