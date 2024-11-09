-- join muitos para muitos onde selecionamos:
-- id da tabela users
-- bio da tabela profiles
-- name da tabela roles
-- sem colunas da tabela user_roles, mas foi necessario usar join dela com a roles

SELECT 
u.id as uid, 
u.first_name,
p.bio,
r.name
FROM users AS u
LEFT JOIN profiles AS p ON
u.id = p.user_id
INNER JOIN user_roles AS ur ON
u.id = ur.user_id 
INNER JOIN roles AS r ON ur.role_id = r.id
ORDER BY uid ASC;