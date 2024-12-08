-- utilizando valores de saida

DELIMITER $$
CREATE PROCEDURE idade(IN idCliente int, OUT idade int, OUT res varchar(20))
BEGIN
	DECLARE dt datetime;
	SET dt = (SELECT d_nasc_cliente FROM cliente where i_cliente_cliente = idCliente);
	SET idade = year(now()) - year(dt);

	IF (idade >= 18) THEN
		SET res = 'Maior';
	ELSE
		SET res = 'Menor';
	END IF;
END $$
DELIMITER ;
DROP PROCEDURE idade;
CALL idade(1,@idadecliente,@resultado);
CALL idade(2,@idadecliente,@resultado);
CALL idade(6,@idadecliente,@resultado);
CALL idade(26,@idadecliente,@resultado);
select @idadecliente,@resultado;
