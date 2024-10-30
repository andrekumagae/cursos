SELECT * FROM cliente ORDER BY s_nome_cliente;

SELECT * FROM cliente ORDER BY i_tipo_cliente;

SELECT * FROM cliente ORDER BY i_tipo_cliente, s_nome_cliente;

-- ordenar pelo numero da coluna
-- primeira coluna = i_cliente_cliente
SELECT * FROM cliente ORDER BY 1;
-- quintacoluna = i_tipo_cliente
SELECT * FROM cliente ORDER BY 5;
SELECT * FROM cliente ORDER BY 5, 2;

-- ordenacao descendente
SELECT * FROM cliente ORDER BY 2 DESC;
SELECT * FROM cliente ORDER BY 5, 2 DESC;

-- ordenacao ascendente (padrao)
SELECT * FROM cliente ORDER BY 5 DESC, 2 ASC;

-- ordenar pelos 3 ultimos digitos da coluna cpf
SELECT * FROM cliente ORDER BY RIGHT(s_cpf_cliente, 3);

-- ordenar pelos 3 primeiros digitos da coluna cpf
SELECT * FROM cliente ORDER BY LEFT(s_cpf_cliente, 3);
