-- Aula null

-- Calculando valores de vendas
SELECT *, ROUND((f_precoun_produtovenda * i_qtde_produtovenda), 2) as "Total" FROM produtovenda;

-- deixando valores nulos
UPDATE produtovenda SET i_qtde_produtovenda=NULL WHERE i_produtovenda_produtovenda between 1 and 6;

-- deixando condição para que a coluna Total fique com  valor zero se a coluna de quantidade de vendas esteja nula
SELECT *, ROUND((f_precoun_produtovenda * IFNULL(i_qtde_produtovenda, 0)),2) as "Total" FROM produtovenda;
