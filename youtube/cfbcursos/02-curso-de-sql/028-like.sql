-- Aula 28
-- buscar todos os nomes que começam com B
SELECT s_nome_cliente FROM cliente c WHERE s_nome_cliente LIKE 'B%';

-- buscar nomes que começam com B, tenham três caracteres quaisquers e acabam com o
SELECT s_nome_cliente FROM cliente c WHERE s_nome_cliente LIKE 'B___o';
