-- Aula AND, OR, NOT e BETWEEN

-- mostrar entre acima de IdLivro 103 e abaixo de IdEditora 107. Os dados devem atingir as duas condições para retornar
SELECT * FROM Livro WHERE IdLivro > 102 AND IdEditora < 108;

-- mostrar entre acima de IdLivro 103 ou abaixo de IdEditora 107. Nessa opção mostrará mais dados, pois o operador OR considera ou um outro para retornar a consulta
SELECT * FROM Livro WHERE IdLivro > 102 OR IdEditora < 108;

-- Podemos negar o OR
SELECT * FROM Livro WHERE IdLivro > 110 OR NOT IdEditora < 4 ORDER BY IdLivro;

-- Uso do BETWEEN para buscar intervalos
SELECT * FROM Livro WHERE DataPub BETWEEN '20040507' AND '20140507';

-- Uso do BETWEEN para buscar valores numéricos
SELECT NomeLivro Livro, PreçoLivro Preço FROM Livro WHERE PreçoLivro BETWEEN 50.00 AND 100.00;

-- Consulta mais complexa com todos os operadores
SELECT NomeLivro, DataPub, PreçoLivro FROM Livro where PreçoLivro >= 60.00 and DataPub BETWEEN '20050620' AND '20100620' OR DataPub BETWEEN '20160101' AND '20200101' ORDER BY DataPub DESC;