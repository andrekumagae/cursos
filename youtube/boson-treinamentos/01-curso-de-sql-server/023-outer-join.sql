/*
OUTER JOINS
• LEFT JOIN: Retorna todas as linhas da tabela à
esquerda, mesmo se não houver nenhuma
correspondência na tabela à direita.
• RIGHT JOIN: Retorna todas as linhas da tabela à
direita, mesmo se não houver nenhuma
correspondência na tabela à esquerda.
• FULL JOIN: Retorna linhas quando houver uma
correspondência em qualquer uma das tabelas. É
uma combinação de LEFT e RIGHT JOINS.
*/

SELECT * FROM Editora E LEFT JOIN Livro L ON L.IdEditora = E.IdEditora;

SELECT * FROM LIVRO L  LEFT JOIN Editora E ON L.IdEditora = E.IdEditora;

SELECT * FROM Editora E RIGHT JOIN Livro L ON L.IdEditora = E.IdEditora;

SELECT * FROM Editora E FULL JOIN Livro L ON L.IdEditora = E.IdEditora;

/*
CROSS JOIN
Um CROSS JOIN ("junção cruzada") retorna um produto
cartesiano entre as tabelas, mostrando todas as
combinações possíveis entreps registros.
Sintaxe:
SELECT colunas
FROM tabelai
CROSS JOIN tabela2
*/

SELECT * FROM Livro CROSS JOIN Assunto;