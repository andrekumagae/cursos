-- View serve para criar comandos que usamos constantemente sem precisar digitá-los toda vez

-- Comando para criação de views
CREATE VIEW nome_cliente as
SELECT s_nome_cliente, s_cpf_cliente FROM cliente c;

select * from nome_cliente nc;

-- retornar aniversariantes do mes
-- comando que eu editei para ter aniversariantes em outubro
update cliente set d_nasc_cliente = '1978-10-07' where i_cliente_cliente between 1 and 4;

CREATE VIEW niver_mes_atual as
SELECT 
	i_cliente_cliente,
	s_nome_cliente,
	day(d_nasc_cliente) as 'Dia do aniversário',
	MONTH(d_nasc_cliente) as 'Mês do aniversário'
from
	cliente c
WHERE 
	MONTH (d_nasc_cliente) = MONTH(CURDATE());

SELECT * from niver_mes_atual;



