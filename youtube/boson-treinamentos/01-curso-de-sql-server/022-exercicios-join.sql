-- Exercícios INNER JOIN
-- 1. Escreva uma consulta que retorne os nomes dos livros e suas respectivas assuntos.


-- 2. Precisamos descobrir os nomes e sobrenomes dos autores, livros escritos por eles e os assuntos dos livros.

-- 3. Escreva uma consulta que retorne os nomes dos livros, seus preços, a editora e o assunto, em ordem alfabética de nomes de livros.

-- 4. Retornar os nomes de livros e datas de publicação dos livros cujo sobrenome do autor se inicia com a letra B.

-- 5. Retornar os assuntos e sobrenomes de autores de livros que custam mais do que R$ 80,00.

-- 6. Consultar preços, assuntos e nomes dos livros que custam entre R$ 70,00 e R 170 00 ordenando do mais caro ara o mais barato.

-- RESPOSTAS

-- 01
SELECT NomeLivro, NomeAssunto FROM Livro L JOIN Assunto A ON L.IdAssunto = A.IdAssunto;

-- 02
SELECT NomeAutor, SobrenomeAutor, NomeLivro, NomeAssunto FROM Autor AU JOIN LivroAutor LA ON AU.IdAutor = LA.IdAutor JOIN  Livro L ON LA.IdLivro = L.IdLivro JOIN Assunto AST ON L.IdAssunto = AST.IdAssunto;

-- 03
SELECT NomeLivro, PreçoLivro, NomeEditora, NomeAssunto FROM LIVRO L JOIN Editora E ON L.IdEditora = E.IdEditora JOIN Assunto AST ON L.IdAssunto = AST.IdAssunto ORDER BY NomeLivro;

-- 04
SELECT NomeLivro, DataPub, SobrenomeAutor FROM Livro L JOIN LivroAutor LA ON L.IdLivro = LA.IdLivro JOIN AUTOR A ON LA.IdAutor = A.IdAutor WHERE SobrenomeAutor LIKE 'B%';

-- 05
SELECT NomeAssunto, SobrenomeAutor, PreçoLivro FROM Assunto A JOIN Livro L ON A.IdAssunto = L.IdAssunto JOIN LivroAutor LA ON L.IdLivro = LA.IdLivro JOIN AUTOR AU ON AU.IdAutor = LA.IdAutor WHERE PreçoLivro > 80;

-- 06
SELECT PreçoLivro, NomeAssunto, NomeLivro FROM Livro L JOIN Assunto A ON L.IdAssunto = A.IdAssunto WHERE PreçoLivro BETWEEN 70 AND 170 ORDER BY PreçoLivro DESC;