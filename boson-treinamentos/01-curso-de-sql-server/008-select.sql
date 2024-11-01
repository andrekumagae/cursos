use Biblioteca;
SELECT * FROM Livro;

SELECT NomeLivro, PreçoLivro
FROM Livro;

SELECT DISTINCT IdEditora FROM Livro;

-- select into para criar uma sub tabela
SELECT NomeLivro, ISBN13
INTO LivroISBN
FROM Livro;

SELECT * FROM LivroISBN;

DROP TABLE LivroISBN;

-- Exercícios

-- 1. Retornar os nomes de livros, preços e datas de publicação.
SELECT NomeLivro, PreçoLivro, DataPub FROM Livro;

-- 2. Mostrar apenas os sobrenomes dos autores
SELECT SobrenomeAutor FROM Autor;

-- 3. Retornar a lista de assunto
SELECT * FROM Assunto;

-- 4. Mostrar a lista de editoras cada uma, com a coluna de nomes de editoras à esquerda da coluna de IDs.
SELECT NomeEditora, IdEditora FROM Editora;

-- 5. Mostrar os IDS de assuntos dos quais existem livros cadastrados na tabela de livros, sem repetição.
SELECT DISTINCT IdAssunto FROM Livro;

-- 6. Criar uma nova tabela chamada "LivrosFiccao" que contenha todos os dados dos livros relacionados ao assunto de ID 1
SELECT * 
INTO LivrosFiccao
FROM Livro WHERE IdAssunto = 1;

SELECT * FROM LivrosFiccao;

