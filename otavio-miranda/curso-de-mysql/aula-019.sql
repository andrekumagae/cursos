INSERT INTO roles (name)
values
('post'),('put'),('delete'),('get');
-- 2	post
-- 3	put
-- 4	delete
-- 5	get

select * from roles;
-- deletei role de admin
delete from roles WHERE id=1;

SELECT * from user_roles ur ;
select * from users u where first_name like 'F%';
-- Ferris id = 109

INSERT INTO user_roles (user_id, role_id)
values
(109, 3);


-- selecionar aleatoriamente valores da tabela roles
select id,
(select id from roles order by rand() limit 1)
as 'rest-role' from users;
;

-- adicionar este comando para inserir aleatoriamente roles para todos os usuários
-- perceba que nao colocamos values
INSERT INTO user_roles (user_id, role_id)
select id,
(select id from roles order by rand() limit 1)
from users;
select * from user_roles ur ;

-- select de 3 tabelas
SELECT first_name, r.name from
users u join user_roles ur 
on u.id = user_id
join roles r 
on ur.role_id = r.id;

-- ignore para ignorar erros pela tabela user_roles ter 2 PK
-- usar limit para identificar usuarios duplicados
INSERT ignore INTO user_roles (user_id, role_id)
select id,
(select id from roles order by rand() limit 1)
from users order by rand() limit 50;