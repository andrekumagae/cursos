SELECT NomeLivro, IdEditora
FROM Livro
ORDER BY idEditora;

SELECT NomeLivro, PreçoLivro
FROM Livro
Order BY PreçoLivro DESC;

SELECT NomeLivro, PreçoLivro, IdEditora
FROM Livro
Order BY IdEditora ASC, PreçoLivro DESC;
