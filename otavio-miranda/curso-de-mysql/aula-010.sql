SELECT id, first_name, email as uemail
FROM users u
where id BETWEEN 100 and 150
order by id asc, first_name desc
limit 2;

-- deslocando o cursor para paginacao
SELECT id, first_name, email as uemail
FROM users u
where id BETWEEN 100 and 150
order by id asc, first_name desc
limit 2 offset 2;

-- outra forma de usar limit e offset
SELECT id, first_name, email as uemail
FROM users u
where id BETWEEN 100 and 150
order by id asc, first_name desc
limit 2,2;