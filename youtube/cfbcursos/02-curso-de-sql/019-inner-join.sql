SELECT
c.i_cliente_cliente,
c.s_nome_cliente, 
c.s_cpf_cliente,
c.d_nasc_cliente,
t.s_dsctipocliente_tipocliente
FROM cliente c
JOIN tipocliente t ON
c.i_tipo_cliente = t.i_tipocliente_tipocliente
;

SELECT 
v.i_venda_venda,
c.s_nome_cliente,
c.s_cpf_cliente,
v.d_data_venda,
v.f_valor_venda,
t.s_dsctipocliente_tipocliente 
FROM venda v 
JOIN cliente c ON
v.i_cliente_cliente = c.i_cliente_cliente
JOIN tipocliente t ON
t.i_tipocliente_tipocliente = c.i_cliente_cliente;