-- Aula TRUNCATE

CREATE TABLE Teste (
	IdTeste SMALLINT PRIMARY KEY IDENTITY,
	ValorTeste SMALLINT NOT NULL
);

-- Rotina para inserir dados da tabela
DECLARE @Contador INT = 1

WHILE @Contador <= 100
BEGIN
	INSERT INTO Teste (ValorTeste) VALUES (@Contador * 3)
	SET @Contador = @Contador + 1
END

SELECT * FROM Teste;
TRUNCATE TABLE Teste;

SELECT IDENT_CURRENT('Teste');
