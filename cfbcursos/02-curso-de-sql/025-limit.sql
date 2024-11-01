-- Aula 25 - LIMIT

-- LIMIT = Pega os 5 primeiros
SELECT * FROM cliente LIMIT 5;

-- LIMIT com filtros e JOIN
SELECT s_nome_cliente, v.i_venda_venda, v.d_data_venda, v.f_valor_venda FROM venda v INNER JOIN cliente c ON c.i_cliente_cliente = v.i_cliente_cliente ORDER BY v.f_valor_venda DESC LIMIT 3;
