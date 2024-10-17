update cliente set s_nome_cliente ='Bruno'
where i_cliente_cliente =1;

select * from cliente c ;

DELETE from cliente ;
-- copiar de uma tabela para outra
INSERT INTO cliente 
select * from cliente_aux ;
