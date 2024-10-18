
desc cliente ;
desc tipocliente ;

-- algumas funcoes presentes no select
-- multiplicar valores
select s_nome_cliente, i_tipo_cliente * 2 from cliente c;
-- caixa alta
SELECT UPPER(s_nome_cliente) from cliente c;