-- Aula 27 - SUM, AVG, COUNT e ROUND

-- somandos valores de vendas
SELECT sum(f_valor_venda) FROM venda v;

-- arredondando com 2 casas decimais
SELECT round(sum(f_valor_venda),2) FROM venda v;

-- utilizando filtro de data
SELECT round(sum(f_valor_venda),2) FROM venda v WHERE d_data_venda > '2020-05-01';

-- tirando a média arredondada
SELECT round(avg(f_valor_venda),2) FROM venda v;

-- contando as vendas e mostrando a média arredondada
SELECT count(f_valor_venda) as 'Qtde de vendas', round(avg(f_valor_venda),2) as 'Valor médio das vendas' FROM venda v WHERE f_valor_venda > (SELECT min(f_valor_venda) FROM venda) AND f_valor_venda < (SELECT max(f_valor_venda) FROM venda);
