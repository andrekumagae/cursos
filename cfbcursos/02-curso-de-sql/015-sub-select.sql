-- subselect
-- como saber o id do próximo cliente
SELECT max(c.i_cliente_cliente)+1 as i_cliente_cliente,	from clientes c ;

-- inserindo a sub-select no campo de id
INSERT INTO clientes values (
	(SELECT max(c.i_cliente_cliente)+1 as i_cliente_cliente from clientes c),
	'Vespertino',
	'12345678999',
	'1999-03-03',
	1);

INSERT INTO clientes values (
	(SELECT max(c.i_cliente_cliente)+1 as i_cliente_cliente from clientes c),
	'Prastivarton',
	'98765432111',
	'2001-11-15',
	2);
	
SELECT * from clientes c;
