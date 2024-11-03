-- Aula 29
-- 2 buscas sem o uso do in
SELECT * FROM cliente c WHERE RIGHT(s_cpf_cliente,1) = 0 OR RIGHT(s_cpf_cliente,1) = 1 OR RIGHT(s_cpf_cliente,1) = 2;

-- juntando em 1 select com o in 
SELECT * FROM cliente c WHERE RIGHT(s_cpf_cliente,1) IN (0,1,2);

-- usando sub-select com in
SELECT * FROM cliente c WHERE d_nasc_cliente IN (SELECT d_nasc_cliente FROM cliente c WHERE c.d_nasc_cliente > '2000-01-01' AND c.d_nasc_cliente < '2010-01-01');
