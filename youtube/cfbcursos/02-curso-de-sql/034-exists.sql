-- Aula 34 - Exists
create table produtovenda(
 i_produtovenda_produtovenda int NOT NULL AUTO_INCREMENT,
    i_venda_venda int NOT NULL,
    s_dscproduto_produtovenda varchar(50) NOT NULL,
    f_precoun_produtovenda float NOT NULL,
    i_qtde_produtovenda int,
    PRIMARY KEY (i_produtovenda_produtovenda),
    FOREIGN KEY (i_venda_venda) REFERENCES venda (i_venda_venda)
);

SELECT * FROM produtovenda;
SELECT * FROM venda v ;

insert into produtovenda values (1,1,'Mouse',7.89,1);
insert into produtovenda values (2,1,'Teclado',15.20,1);
insert into produtovenda values (3,1,'Mouse',7.89,2);
insert into produtovenda values (4,1,'Monitor',299.80,2);
insert into produtovenda values (5,1,'Microfone',34.90,2);
insert into produtovenda values (6,1,'Teclado',15.20,10);
insert into produtovenda values (7,1,'CPU',569.78,1);
insert into produtovenda values (8,1,'RAM',325.00,1);
insert into produtovenda values (9,5,'HD',329.90,2);
insert into produtovenda values (10,6,'Placa Vídeo',899.49,1);
insert into produtovenda values (11,6,'Placa Rede',19.90,1);
insert into produtovenda values (12,6,'Cx.Som',29.90,1);
insert into produtovenda values (13,6,'CPU',325.00,1);
insert into produtovenda values (14,6,'Mouse',7.89,1);
insert into produtovenda values (15,7,'Monitor',299.80,3);
insert into produtovenda values (16,7,'Mouse',7.89,2);
insert into produtovenda values (17,8,'HD',249.90,15);
insert into produtovenda values (18,9,'Placa Mãe',900.00,2);
insert into produtovenda values (19,10,'Cx.Som',29.90,2);
insert into produtovenda values (20,10,'Microfone',34.90,2);
insert into produtovenda values (21,11,'Teclado',15.20,5);
insert into produtovenda values (22,11,'CPU',989.90,2);
insert into produtovenda values (23,11,'RAM',325.00,2);
insert into produtovenda values (24,12,'HD',249.90,1);
insert into produtovenda values (25,13,'Placa Mãe',149.90,1);
insert into produtovenda values (26,14,'Impressora',889.99,3);
insert into produtovenda values (27,14,'Web Cam',599.90,3);
insert into produtovenda values (28,15,'Cabo Rede',4.99,1);
insert into produtovenda values (29,16,'Mouse',7.89,7);
insert into produtovenda values (30,17,'Teclado',15.20,8);
insert into produtovenda values (31,18,'RAM',325.00,2);
insert into produtovenda values (32,19,'HD',249.90,1);
insert into produtovenda values (33,19,'Microfone',34.90,1);
insert into produtovenda values (34,20,'Impressora',499.90,1);
insert into produtovenda values (35,20,'Web Cam',329.90,1);

insert into cliente values (21,'Crisberliston','15935745698','2000-01-01',1);
insert into cliente values (22,'Malgamorson','32165498700','2001-01-01',1);
insert into cliente values (23,'Silmastilda','12345678900','2002-01-01',1);
insert into cliente values (24,'Florasmirtes','14785236911','2003-01-01',1);

select * from produtovenda;

SELECT * FROM cliente c WHERE EXISTS(SELECT * FROM venda v WHERE v.i_cliente_cliente=c.i_cliente_cliente);

SELECT * FROM cliente c join venda v on v.i_cliente_cliente=c.i_cliente_cliente;