SELECT * from cliente c 
where s_cpf_cliente like '1%';

SELECT * from cliente c 
where c.i_tipo_cliente = 2 AND 
MONTH(d_nasc_cliente) > 5;

SELECT * from cliente c 
where c.i_tipo_cliente in (2,3) AND
-- where c.i_tipo_cliente != 1 AND 
MONTH(d_nasc_cliente) >= 4 AND 
MONTH(d_nasc_cliente) <= 9;

SELECT * from cliente c 
where c.i_tipo_cliente in (2,3) AND
-- where c.i_tipo_cliente != 1 AND 
MONTH(d_nasc_cliente) >= 4 OR
MONTH(d_nasc_cliente) <= 9;