-- Aula 26 - MAX e MIN

-- selecionando apenas o valor da venda
SELECT max(f_valor_venda) FROM venda v;
SELECT min(f_valor_venda) FROM venda v;

-- retornando todos os dados utilizando sub-select

SELECT * FROM venda WHERE f_valor_venda = ( SELECT max(f_valor_venda) FROM venda);

SELECT * FROM venda WHERE f_valor_venda = ( SELECT min(f_valor_venda) FROM venda);

-- mostrar dados da maior venda das 2 tabelas com inner join e sub-select

SELECT c.s_nome_cliente, v.i_venda_venda, v.d_data_venda, v.f_valor_venda FROM venda v INNER JOIN cliente c ON c.i_cliente_cliente = v.i_cliente_cliente WHERE f_valor_venda = (SELECT max(f_valor_venda) FROM venda);
