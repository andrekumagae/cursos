-- deletando um usuario
delete from users where id=1;

-- utilizando o right join, ele 
-- aparece com campos nulos de users
-- mas mostra os campos da tabela da direita
SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
from users as u
right join profiles as p
on u.id = p.user_id;