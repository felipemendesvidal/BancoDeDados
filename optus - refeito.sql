/*Criando o banco*/
CREATE DATABASE optus;
GO

	/*TABELA*/
	CREATE TABLE usuario(
		idUsuario INT IDENTITY PRIMARY KEY NOT NULL,
		Nome VARCHAR (100) NOT NULL,
		endereco VARCHAR (20),
		email VARCHAR (100),
		senha VARCHAR (20),
		tipoAcesso VARCHAR (20)
	);

	/*Criar a tabela estilo*/
	CREATE TABLE estilo(
	IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL
	);

	CREATE TABLE artista(
		idArtista INT IDENTITY PRIMARY KEY NOT NULL,
		Nome VARCHAR (100) NOT NULL,
		-- Adicionar o FK do estilo
		IdEstilo INT FOREIGN KEY REFERENCES estilo(IdEstilo)
	
	);

	CREATE TABLE cds(
		idcds INT IDENTITY PRIMARY KEY NOT NULL,
		Nome VARCHAR (100) NOT NULL,
		idArtista INT FOREIGN KEY REFERENCES artista (idArtista),
	);
	CREATE TABLE albuns(
		IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
		Nome VARCHAR(50) NOT NULL,
		DataLacamento DATETIME,
		QtdMinutos INT,

		-- Adicionar o FK do Artista
		IdArtista INT FOREIGN KEY REFERENCES artista(IdArtista),
		idcds INT FOREIGN KEY REFERENCES cds (idcds),

	);

	CREATE TABLE empresa(
		IdEmpresa INT PRIMARY KEY IDENTITY NOT NULL,
		NomeEmpresa VARCHAR (20),
		tipoAcesso VARCHAR (20),
		--CHAMANDO CHAVES ESTRANGEIRAS
		idUsuario INT FOREIGN KEY REFERENCES usuario (idUsuario),
		idArtista INT FOREIGN KEY REFERENCES artista (idArtista),
	);


