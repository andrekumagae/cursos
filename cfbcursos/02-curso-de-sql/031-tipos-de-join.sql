-- Aula 31 - INNER JOIN, LEFT JOIN, RIGHT JOIN

-- INNER JOIN - Mostra a interseção entre as tabelas
SELECT c.i_cliente_cliente, c.s_nome_cliente, v.i_venda_venda FROM cliente c INNER JOIN venda v ON c.i_cliente_cliente = v.i_cliente_cliente;

-- LEFT JOIN - Mostra a interseção entre as tabelas + dados da tabela da esquerda 
SELECT c.i_cliente_cliente, c.s_nome_cliente, v.i_venda_venda FROM cliente c LEFT JOIN venda v ON c.i_cliente_cliente = v.i_cliente_cliente;

-- RIGHT JOIN - Mostra a interseção entre as tabelas + dados da tabela da direita 
SELECT c.i_cliente_cliente, c.s_nome_cliente, v.i_venda_venda FROM cliente c RIGHT JOIN venda v ON c.i_cliente_cliente = v.i_cliente_cliente;