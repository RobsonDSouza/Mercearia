use Mercearia
GO

DECLARE @Nome VARCHAR(150)
DECLARE @NomeUsuario VARCHAR(150)
DECLARE @Senha VARCHAR(50)
DECLARE @Ativo BIT

SET @Nome = 'Maria Amélia'
SET @NomeUsuario = 'MariNex'
SET @Senha = 'ES254DTR'
SET	@Ativo = 1

INSERT INTO Usuario(Nome, NomeUsuario, Senha, Ativo) VALUES(@Nome, @NomeUsuario, @Senha, @Ativo)
GO

DECLARE @ID INT
DECLARE @Nome VARCHAR(150)
DECLARE @NomeUsuario VARCHAR(150)
DECLARE @Senha VARCHAR(50)
DECLARE @Ativo BIT

SET @ID = 1 
SET @Nome = 'Robson DSouza'
SET @NomeUsuario = 'RobIN'
SET @Senha = '08RO1088'
SET	@Ativo = 1

UPDATE Usuario SET	Nome = @Nome, NomeUsuario = @NomeUsuario, Senha = @Senha, Ativo = @Ativo WHERE ID = @ID
GO

DECLARE @ID INT
SET @ID = 2

DELETE FROM Usuario WHERE Id = @ID
go


SELECT*FROM Usuario

DELETE FROM Usuario