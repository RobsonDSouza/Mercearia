use Mercearia
GO

DECLARE @Nome VARCHAR(150)
DECLARE @NomeUsuario VARCHAR(150)
DECLARE @Senha VARCHAR(50)
DECLARE @Ativo BIT

SET @Nome = 'Maria Am�lia'
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

select *from Usuario

INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Arroz',28.68,35,'0004589870351')
INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Feij�o',8.49,24,'0804589870300')
INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('A��car',5.80,65,'0045500254008')
INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Macarr�o',3.90,12,'0254005874009')