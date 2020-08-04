



/*TABELA*/
CREATE TABLE clinica(
	idclinica INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (100) NOT NULL,
	endereco VARCHAR (20)
);
--insrir
INSERT INTO clinica (Nome,endereco) VALUES ('afonso','ruaLogoAli');
SELECT * FROM clinica;

/*TABELA MATERIA*/
CREATE TABLE veterinario(
	IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL

);
INSERT INTO veterinario (Nome) VALUES ('arlindovaldo2');
SELECT * FROM veterinario;
UPDATE veterinario SET Nome = 'testeupdate' WHERE IdVeterinario = 2;
delete from veterinario WHERE IdVeterinario = 3;

/*TABELA MATERIA*/
CREATE TABLE dono(
	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL

);
INSERT INTO dono (Nome) VALUES ('rodolfo');
SELECT * FROM dono;

/*TABELA TRABALHO*/
CREATE TABLE pets(
	IdPets INT PRIMARY KEY IDENTITY NOT NULL,
	--CHAMANDO CHAVES ESTRANGEIRAS
	IdDono INT FOREIGN KEY REFERENCES dono (IdDono)
);

/*TABELA TRABALHO*/
CREATE TABLE atendimento(
	IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
	--CHAMANDO CHAVES ESTRANGEIRAS
	IdPets INT FOREIGN KEY REFERENCES pets (IdPets),
	IdVeterinario INT FOREIGN KEY REFERENCES veterinario (IdVeterinario)

);
INSERT INTO atendimento (IdVeterinario) VALUES (1);
SELECT * FROM atendimento;

CREATE TABLE racas(
	IdRacas INT PRIMARY KEY IDENTITY NOT NUll

);

CREATE TABLE tipopet(
	IdPets INT PRIMARY KEY IDENTITY NOT NUll

);