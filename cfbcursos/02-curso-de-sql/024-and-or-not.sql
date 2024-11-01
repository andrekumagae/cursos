SELECT * FROM cliente c WHERE d_nasc_cliente IS NOT NULL and i_tipo_cliente = 1;

SELECT * FROM cliente c WHERE d_nasc_cliente IS NOT NULL and i_tipo_cliente = 1 OR i_tipo_cliente = 2 order by i_tipo_cliente;

SELECT * FROM cliente c WHERE NOT i_tipo_cliente = 1;

-- precedencia com parenteses
SELECT * FROM cliente c WHERE (i_tipo_cliente != 1 AND i_tipo_cliente != 2) OR NOT d_nasc_cliente  IS NOT NULL;
