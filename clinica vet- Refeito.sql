/*Criando o banco clinicaVet*/
CREATE DATABASE clinicaVet;
GO
	/*Criando a tabela clinica*/
	CREATE TABLE clinica(
		idclinica INT IDENTITY PRIMARY KEY NOT NULL,
		NomeClinica VARCHAR (100) NOT NULL,
		enderecoClinica VARCHAR (100) NOT NULL
	);

	/*TABELA PARA VETERINARIO*/
	CREATE TABLE veterinario(
		IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
		Nome VARCHAR(50) NOT NULL,
		Identidade VARCHAR (20),
		CRVM INT,

		-- Adicionar a FK da Clinica
		idclinica INT FOREIGN KEY REFERENCES clinica(idclinica)
	);

	/*TABELA DE DONO*/
	CREATE TABLE  dono(
		IdDono INT PRIMARY KEY IDENTITY NOT NULL,
		Nome VARCHAR(100) NOT NULL
	);

	/*tabela Tipo pet*/
	CREATE TABLE tipopet(
		IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
		TipoAnimal VARCHAR(150)
	);

	/*tabela raca*/
	CREATE TABLE raca(
		IdRaca INT PRIMARY KEY IDENTITY NOT NULL,
		Raca VARCHAR(150),
		DescricaoRaca VARCHAR(150),

		-- Adicionar a FK do Tipo Pet
		IdTipoPet INT FOREIGN KEY REFERENCES tipopet(IdTipoPet)
	);

	/*tabela pet*/
	CREATE TABLE pet(
		IdPet INT PRIMARY KEY IDENTITY NOT NULL,
		Nome VARCHAR(80),
		DataNascimento DATETIME,

		-- Adicionar a FK do dono e da raça
		IdDono INT FOREIGN KEY REFERENCES dono(IdDono),
		IdRaca INT FOREIGN KEY REFERENCES raca(IdRaca)
	);
	/*CORE tabela Atendimento*/
	CREATE TABLE atendimento (
		IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
		NomeAtendente VARCHAR(150),
		DataAtendimento DATETIME,
		LaudoMedico VARCHAR(150),

		--Adicionar a FK VET E PET
		IdVeterinario INT FOREIGN KEY REFERENCES veterinario(IdVeterinario),
		IdPet INT FOREIGN KEY REFERENCES pet(IdPet)

	);

