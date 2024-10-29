SELECT 
v.d_data_venda as 'Vendas por dia',
COUNT(i_venda_venda) as 'Qtde de vendas por dia' 
FROM 
venda v 
group by
d_data_venda
HAVING d_data_venda > '2020-10-01'
order by d_data_venda;

SELECT 
v.d_data_venda as 'Vendas por dia',
COUNT(i_venda_venda) as 'Qtde de vendas por dia' 
FROM 
venda v 
group by
d_data_venda
HAVING COUNT(i_venda_venda) >= 2
order by d_data_venda;
