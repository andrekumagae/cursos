DELIMITER $$
CREATE PROCEDURE canal(IN curso varchar(50))
BEGIN
	DECLARE x varchar(50);
	SET x = 'youtube.com/cfbcursos';
	SELECT x, curso;
END $$
DELIMITER ;

CALL canal('React');
CALL canal('SQL');
DROP PROCEDURE canal