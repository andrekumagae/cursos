INSERT INTO cliente VALUES 
(15, 'Valkisneide','11223344556',null,1),
(16,'Alcinclésio','65544332211',null,2),
(17,'Nestisgerson','74125896300',null,3),
(18,'Mordonório','36925814799',null,1),
(19,'Mordonório','36925814799',null,2),
(20,'Salomildo','98765432147',null,3);

-- consulta de colunas com registros nulos
SELECT * FROM cliente c WHERE d_nasc_cliente IS NULL;

-- consulta de colunas com registros não nulos
SELECT * FROM cliente c WHERE d_nasc_cliente IS NOT NULL;
