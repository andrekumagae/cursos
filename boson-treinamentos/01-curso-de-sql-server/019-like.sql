-- Aula LIKE e NOT LIKE

-- Uso de metacaracteres para filtrar com LIKE

-- % substitui quaisquer caracteres antes, no meio ou depois
SELECT * FROM Livro WHERE NomeLivro LIKE 'F%';
SELECT NomeAutor FROM Autor WHERE NomeAutor NOT LIKE 'S%';

-- [] adiciona mais de um caracter. No exemplo abaixo, busque na coluna NomeLivro que começam com F ou D. Podemos usar o caracter ^ para negação.
SELECT * FROM Livro WHERE NomeLivro LIKE '[FD]%';
SELECT * FROM Livro WHERE NomeLivro LIKE '[^F^D]%';

-- Busca que começam ou terminam com vogal
SELECT * FROM Livro WHERE NomeLivro LIKE '[aeiou]%';
SELECT * FROM Livro WHERE NomeLivro LIKE '%[aeiou]';

-- Busca por livros que começam com números
SELECT * FROM Livro WHERE NomeLivro LIKE '[0-9]%';

-- Busca com começo e fim definido
SELECT * FROM Livro WHERE NomeLivro LIKE 'A%o';

-- uso de mais de um LIKE
SELECT NomeAutor, SobrenomeAutor FROM Autor WHERE NomeAutor LIKE 'R%' AND SobrenomeAutor LIKE 'B%';

-- _ (underscore) limita para uma quantidade de caracteres definida. No primeiro exemplo abaixo, buscamos vogais entre quaisquer caracteres. No segundo exemplo, depois das vogais, deve haver apenas um caracter. Ou seja, serve para buscar vogais no penúltimo caracter.
SELECT * FROM LIVRO WHERE NomeLivro LIKE '%[aeiou]%';
SELECT * FROM LIVRO WHERE NomeLivro LIKE '%[aeiou]_';

-- Busca por intervalo de letras
SELECT NomeEditora FROM Editora WHERE NomeEditora LIKE '[o-t]%';

-- Buscar por autor que começa com a letra J e tenha mais 4 caracteres
SELECT NomeAutor, SobrenomeAutor FROM Autor WHERE NomeAutor LIKE 'J____';

-- Buscar livros que o nome não comece com vogais ou números
SELECT * FROM Livro WHERE NomeLivro NOT LIKE '[aeiou0-9]%';