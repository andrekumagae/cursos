-- Aula 33 - UNION

SELECT 'Cliente' AS Tabela, i_cliente_cliente, s_nome_cliente FROM cliente c UNION SELECT 'Cliente Aux' AS Tabela, i_cliente_cliente, s_nome_cliente FROM cliente_aux ca;