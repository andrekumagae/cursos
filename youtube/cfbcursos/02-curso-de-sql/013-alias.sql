SELECT
	tbc.i_cliente_cliente as "Número do ID",
	UPPER(tbc.s_nome_cliente) as Nome,
	tbc.i_tipo_cliente as "Tipo de cliente"
from cliente tbc;
