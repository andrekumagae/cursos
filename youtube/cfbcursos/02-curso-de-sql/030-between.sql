-- Aula 30
-- uso do in com intervalo grande
SELECT * FROM cliente c WHERE i_tipo_cliente IN (1,2,3,4,5,6,7,8,9);
-- simplificando a busca com o uso de between
SELECT * FROM cliente c WHERE i_tipo_cliente BETWEEN 1 AND 9;
-- busca de datas com between
SELECT * FROM cliente c WHERE d_nasc_cliente BETWEEN '2000%-01-01' AND '2010-01-01';
-- uso de between filtrando com mais de uma coluna
SELECT * FROM venda v WHERE 
(d_data_venda BETWEEN '2020-07-01' 
AND '2020-11-01') AND i_cliente_cliente NOT IN (3,10) AND f_valor_venda < 10;

