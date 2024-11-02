-- Aula Update

SELECT IdLivro, NomeLivro FROM Livro;

UPDATE Livro SET NomeLivro = 'Eu, Robô' WHERE IdLivro = 116;

SELECT IdLivro, NomeLivro FROM Livro WHERE IdLivro = 116;

SELECT IdLivro, NomeLivro, PreçoLivro FROM Livro;

UPDATE Livro SET PreçoLivro = 60.00 WHERE IdLivro = 105;

SELECT IdLivro, NomeLivro, PreçoLivro FROM Livro WHERE IdLivro = 105;

-- update utilizando porcentagem
-- aumento de 10%
UPDATE Livro SET PreçoLivro = PreçoLivro * 1.1 WHERE IdLivro = 105;
-- desconto de 20%
UPDATE Livro SET PreçoLivro = PreçoLivro * 0.8 WHERE IdLivro = 105;

SELECT IdLivro, NomeLivro, PreçoLivro, NumeroPaginas FROM Livro;

-- Alterando mais de 1 coluna de uma vez
UPDATE Livro SET PreçoLivro = 60.00, NumeroPaginas = 320 WHERE	IdLivro = 105;
