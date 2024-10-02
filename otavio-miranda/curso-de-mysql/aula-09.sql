--order by
SELECT id, first_name, email as uemail
FROM users u
where id BETWEEN 100 and 150
order by id asc, first_name desc;