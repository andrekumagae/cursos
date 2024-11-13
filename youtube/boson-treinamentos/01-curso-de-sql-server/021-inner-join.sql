-- Aula INNER JOIN
SELECT NomeLivro, NomeAssunto FROM Livro INNER JOIN Assunto ON Livro.IdAssunto = Assunto.IdAssunto;

-- INNER JOIN + WHERE + ORDER BY
SELECT NomeLivro AS Livros, NomeEditora AS Editoras FROM Livro INNER JOIN Editora ON Livro.IdEditora = Editora.IdEditora WHERE Editora.NomeEditora LIKE '[Mh]%' ORDER BY Livro.NomeLivro;

-- Não é necessário utilizar AS e INNER
SELECT L.NomeLivro AS Livros, E.NomeEditora AS Editoras FROM Livro L JOIN Editora E ON L.IdEditora = E.IdEditora WHERE E.NomeEditora LIKE '[Mh]%' ORDER BY L.NomeLivro;

-- Juntando mais de uma tabela
SELECT L.NomeLivro Livro, A.NomeAutor Autor, A.SobrenomeAutor Sobrenome FROM LivroAutor LA INNER JOIN Autor A ON LA.IdAutor = A.IdAutor INNER JOIN Livro L ON L.IdLivro = LA.IdLivro ORDER BY Livro;

SELECT L.NomeLivro Livro, A.NomeAutor Autor, A.SobrenomeAutor Sobrenome, E.NomeEditora Editora FROM LivroAutor LA JOIN Autor A ON LA.IdAutor = A.IdAutor JOIN Livro L ON L.IdLivro = LA.IdLivro JOIN Editora E ON E.IdEditora = L.IdEditora ORDER BY Livro;
