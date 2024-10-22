-- utilizando select dentro de um from
SELECT 
	c.s_nome_cliente
FROM (SELECT i_cliente_cliente, s_nome_cliente from cliente) c ;
