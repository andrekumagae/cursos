alter table cliente drop column i_idade_cliente;

INSERT into tipocliente values 
(01, 'Pessoa Física'),
(02, 'Pessoa Jurídica'),
(03, 'Cliente Especial');

insert into cliente values
(01, 'Bruno', '000', '1978-03-07',01,20)
(02, 'Astrogirson', '11111111111', '1978-03-07',03),
(03, 'Benegilda', '22222222222', '1980-04-10',01),
(04, 'Clovismarsom', '33333333333', '2000-11-15',02),
(05, 'Marisbelena', '44444444444', '1960-01-01',01),
(06, 'Xingustrildo', '55555555555', '2005-12-25',02),
(07, 'Tramonstila', '99999999999', '2001-01-01',02),
(08, 'Arguinelson', '10101010101', '1985-07-12',03),
(09, 'Claresterna', '12121212121', '1996-01-20',01),
(10, 'Nelgrismar', '13131313131', '2009-08-25',01);
 

select * from cliente;
select * from tipocliente t ;
SELECT s_nome_cliente as nome, t.s_dsctipocliente_tipocliente 
from cliente c join tipocliente t on
c.i_tipo_cliente = t.i_tipocliente_tipocliente
order by c.i_tipo_cliente, c.s_nome_cliente;

