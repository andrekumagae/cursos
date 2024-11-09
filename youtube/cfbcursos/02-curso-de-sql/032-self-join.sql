-- Aula 32

-- SELF JOIN compara a tabela com ela própria, para podermos comparar dados similares. No exemplo abaixo, comparamos quem é do mesmo tipo que o usuário com o nome Bruno.
SELECT * FROM cliente c1, cliente c2 WHERE c1.i_tipo_cliente = c2.i_tipo_cliente AND c1.s_nome_cliente = 'Bruno' ORDER BY c1.i_tipo_cliente;