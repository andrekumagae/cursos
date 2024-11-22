-- Aula views
/*
CREATE [OR ALTER] VIEW nomeView AS
SELECT colunas
FROM tabelas
WHERE condições
*/

-- Criacação de view para puxar 5 livros por preço
CREATE OR ALTER VIEW vwLivroPreço AS SELECT TOP 5 NomeLivro, PreçoLivro FROM Livro ORDER BY PreçoLivro;

-- para busca, buscamos com se fosse uma tabela
SELECT * FROM vwLivroPreço;

-- Mostrar a definição da view
EXEC sp_helptext vwLivroPreço;

-- Excluir se nao for nula
IF OBJECT_ID('vwLivroAssunto', 'view') IS NOT NULL
	DROP VIEW vwLivroAssunto;
GO
-- criacao de view
CREATE VIEW vwLivroAssunto AS
	SELECT L.NomeLivro Livro, A.NomeAssunto Assunto FROM Livro L INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto;
GO

SELECT * FROM vwLivroAssunto;

-- Alterando view
ALTER VIEW vwLivroAssunto AS
	SELECT L.NomeLivro Livro, L.ISBN13 ISBN, A.NomeAssunto Assunto FROM Livro L INNER JOIN Assunto A ON L.IdAssunto = A.IdAssunto;
