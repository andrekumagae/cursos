-- update com join
UPDATE users as u
join profiles as p
on p.user_id = u.id 
set p.bio = CONCAT(p.bio, ' atualizado')
where u.first_name = 'Katelyn';

SELECT * from users as u 
join profiles as p on
p.user_id = u.id
where p.bio like '%atualizado';