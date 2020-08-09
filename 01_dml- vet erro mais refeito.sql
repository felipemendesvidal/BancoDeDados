--inserindo dados
INSERT INTO clinica (NomeClinica, enderecoClinica) VALUES ('teste vet', 'Av logo ali');
INSERT INTO tipopet (TipoAnimal) VALUES ('gato');
INSERT INTO dono (Nome) VALUES ('testenome');
INSERT INTO raca (DescricaoRaca, IdTipoPet) VALUES ('teste', 2);
INSERT INTO pet (Nome, DataNascimento, IdDono, IdRaca) VALUES ('Testenomepet', '2020-08-21', 1, 2);
INSERT INTO atendimento (IdVeterinario, DataAtendimento, IdPet) VALUES ( 1, '2020-06-22', 'OK', 1);
INSERT INTO veterinario (IdVeterinario,idclinica, Nome) VALUES (1,1, 'Dr.teste');
--alterando dados
UPDATE veterinario SET
CRVM = 43551
WHERE IdVeterinario = 1; 

