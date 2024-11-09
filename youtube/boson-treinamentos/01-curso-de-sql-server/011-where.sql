SELECT NomeLivro, DataPub FROM Livro WHERE IdEditora = 3;

SELECT IdAutor, NomeAutor FROM Autor WHERE SobrenomeAutor = 'Verne';

Select NomeLivro, PreçoLivro FROM Livro WHERE PreçoLivro > 100;

Select NomeLivro, PreçoLivro FROM Livro WHERE PreçoLivro > 100 ORDER BY PreçoLivro DESC;

SELECT NomeLivro, DataPub FROM Livro WHERE IdEditora = (SELECT IdEditora FROM Editora WHERE NomeEditora = 'Aleph') ORDER BY NomeLivro;
