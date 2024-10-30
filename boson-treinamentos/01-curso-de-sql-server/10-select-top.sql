-- SELECT TOP para restringir número de consultas
-- selecionar 2 primeiros
SELECT TOP(2) NomeLivro FROM Livro Order BY NomeLivro;

-- selecionar 15% dos meus dados
SELECT TOP(15) PERCENT NomeLivro FROM Livro Order BY NomeLivro;

-- selecionar 3 últimos utilizando DESC
SELECT TOP(3) NomeLivro FROM Livro Order BY NomeLivro DESC;

-- ordenar 4 livros mais caros
SELECT TOP(4) NomeLivro, PreçoLivro FROM Livro Order BY PreçoLivro DESC;

-- ordenar 3 id de forma decrescente, porém aceitando valores repetidos
SELECT TOP(3) WITH TIES NomeLivro, IdAssunto FROM Livro Order BY IdAssunto DESC;
