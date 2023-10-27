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
select*from Usuario
SELECT Id, Nome, Preco, Estoque, CodigoDeBarras FROM Produto

DECLARE @ID INT
SET @ID = 2

select *from Cliente

INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Arroz',28.68,35,'0004589870351')
INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Feijão',8.49,24,'0804589870300')
INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Açúcar',5.80,65,'0045500254008')
INSERT INTO Produto(Nome, Preco, Estoque, CodigoDeBarras) VALUES('Macarrão',3.90,12,'0254005874009')

select*from Cliente

insert into Cliente values('Pedro Paulo Cardoso','(63)99985-3654')
insert into Cliente values('Laura Rodrgues Castro','(65)98495-3622')
insert into Cliente values('Lucas Souza Moura','(63)99236-2024')
insert into Cliente values('Pedro Henrique Matias','(63)99285-3364')
insert into Cliente values('Paula Souza Meireles','(63)99125-8777')
insert into Cliente values('Ana Maria Santos','(63)98465-8975')
