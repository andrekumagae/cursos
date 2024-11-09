-- O Operador UNION serve para agrupar SELECTs classificando cada dado em uma segunda coluna.

-- No Exemplo abaixo, NomeAutor e NomeEditora ficam na primeira coluna 'Nome' e a segunda coluna 'Tipo' carrega o alias de cada um deles.
SELECT NomeAutor Nome, 'Autor' AS Tipo FROM Autor UNION SELECT NomeEditora Nome, 'Editora' AS Tipo FROM Editora;

-- Exemplo juntando mais de 2 tabelas
SELECT NomeAutor Nome, 'Autor' AS Tipo FROM Autor UNION SELECT NomeEditora Nome, 'Editora' AS Tipo FROM Editora UNION SELECT NomeLivro Nome, 'Livro' AS Tipo FROM Livro UNION SELECT NomeAssunto Nome, 'Assunto' AS Tipo FROM Assunto ORDER BY Tipo;