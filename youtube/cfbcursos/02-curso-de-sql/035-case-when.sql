-- Aula 35 - Case .. When

-- preenchendo nascimentos nulos com a data de hoje
SELECT i_cliente_cliente, s_nome_cliente, s_cpf_cliente, 
CASE
	WHEN d_nasc_cliente IS NULL THEN NOW() 
	ELSE d_nasc_cliente
	END 'd_nasc_cliente',
i_tipo_cliente FROM cliente c ORDER BY d_nasc_cliente DESC;

-- inserindo clientes menores de idade
INSERT INTO cliente (s_nome_cliente, s_cpf_cliente, d_nasc_cliente, i_tipo_cliente) VALUES
('Guilherme','72930394099','2010-05-04', 1),
('Hayner','58459694097', '2015-11-20', 1),
('Marcelo','87867192034', '2018-12-01', 2);

-- pesquisando menores, maiores de idade e idades vazias
SELECT s_nome_cliente, d_nasc_cliente,
CASE
	WHEN (DATEDIFF(NOW(),d_nasc_cliente)/365) > 18 THEN 'MAIOR DE IDADE'
	WHEN d_nasc_cliente IS NULL THEN 'DATA VAZIA'
	ELSE 'MENOR DE IDADE'
END 'Faixa de idade'
FROM cliente c;
