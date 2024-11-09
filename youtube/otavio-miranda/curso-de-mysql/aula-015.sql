select * from users u, profiles p;

select u.id as uid, p.id as pid
from users as u, profiles as p;

select u.id as uid, p.id as pid, p.bio, u.first_name
from users as u, profiles as p
where u.id = p.user_id;

-- mesmo comando usando inner join
SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
from users as u
inner join profiles as p
on u.id = p.user_id;

-- funciona com outros comandos
SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
from users as u
inner join profiles as p
on u.id = p.user_id
where u.first_name like '%a'
ORDER by u.first_name desc
limit 5;