-- Funções de agregação

-- COUNT
SELECT COUNT(*) Total FROM Autor;

-- MAX
SELECT MAX(PreçoLivro) 'Mais Caro' FROM Livro;

-- MIN
SELECT MIN(NumeroPaginas) 'Menor livro' FROM Livro;

-- AVG
SELECT AVG(PreçoLivro) 'Preço médio' FROM Livro;

-- SUM
SELECT SUM(PreçoLivro) 'Valor total' FROM Livro;

-- COUNT com filtro
SELECT COUNT(*) FROM Livro WHERE IdAssunto = 1;

-- Média fazendo operações
SELECT SUM(PreçoLivro) / COUNT(*) AS 'Preço médio' FROM Livro;

-- Mostrar valor máximo  e nome
SELECT NomeLivro, PreçoLivro FROM Livro WHERE PreçoLivro = (SELECT MAX(PreçoLivro) FROM Livro);