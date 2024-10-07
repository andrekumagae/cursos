-- 1) Insira 5 usuårios
insert into users (first_name, last_name, email, password_hash, salary) values
("João", "Silva", concat(first_name,".",last_name,"@empresa.com"), concat(id,first_name,last_name), 1000),
("José", "Silva", concat(first_name,".",last_name,"@empresa.com"), concat(id,first_name,last_name),1000), 
("Maria", "Silva", concat(first_name,".",last_name,"@empresa.com"), concat(id,first_name,last_name),1000),
("Rosa", "Silva", concat(first_name,".",last_name,"@empresa.com"), concat(id,first_name,last_name),100),
("Carla", "Silva", concat(first_name,".",last_name,"@empresa.com"), concat(id,first_name,last_name),100);

-- 2) Insira 5 perfis para os usuårios inseridos
insert into profiles (bio, description, user_id)
select CONCAT('Bio de ', first_name), 
concat('Description de ', first_name),
id from users;

-- 3) Insira permissoes (roles) para os usuårios inseridos
INSERT INTO user_roles (user_id, role_id)
select id,
(select id from roles order by rand() limit 1)
from users where id BETWEEN 217 and 221;

-- 4) Selecione os (11 ultimos 5 usuarios por ordem decrescente)
SELECT * from users u order by id desc limit 11;

-- 5) Atualize o ultimo usuario inserido
UPDATE users set salary=2000 order by id desc LIMIT 1;
select * from users where salary=2000;

-- 6) Remova uma permissao de algum usuario
SELECT * from user_roles ur order by user_id DESC ;
DELETE from user_roles ur WHERE user_id=221;

-- 7) Remova um usuario que tem a permissao "PUT"
SELECT * from roles r ;
SELECT * from user_roles ur WHERE role_id =3;
delete from user_roles ur WHERE role_id =3 limit 1;

-- 8) Selecione usuarios com perfis e permissoes (obrigatório)
SELECT * from user_roles ur ;
SELECT u.first_name, u.last_name, u.id, ur.role_id from users u
join user_roles ur on u.id = ur.user_id;

-- 9) Selecione usuårios com perfis e permissoes (opcional)
SELECT u.first_name, u.last_name, u.id, ur.role_id from users u
left join user_roles ur on u.id = ur.user_id order by ur.role_id;

-- 10) Selecione usuarios com perfis e permissoes ordenando por salario
SELECT id, first_name as Nome, last_name as Sobrenome, CONCAT("R$ ", salary) as Salario  from users u
join user_roles ur on u.id = ur.user_id order by salary;