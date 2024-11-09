SELECT 
t.s_dsctipocliente_tipocliente,
COUNT(c.i_tipo_cliente) 
FROM 
cliente c
join tipocliente t on
t.i_tipocliente_tipocliente = c.i_tipo_cliente
GROUP BY
c.i_tipo_cliente
;

SELECT 
v.d_data_venda as 'Vendas por dia',
COUNT(i_venda_venda) as 'Qtde de vendas por dia' 
FROM 
venda v 
group by
d_data_venda
order by d_data_venda;