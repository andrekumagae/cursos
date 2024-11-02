-- Aula AS (ALIAS)

SELECT NomeLivro AS Livros FROM Livro;

SELECT A.NomeAutor AS Nome, A.SobrenomeAutor AS Sobrenome FROM Autor A;

SELECT TOP(3) L.NomeLivro AS 'Livros mais caros', L.PreçoLivro AS 'Preço do livro' FROM Livro L ORDER BY 'Preço do livro' DESC;
