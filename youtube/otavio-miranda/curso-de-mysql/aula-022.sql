-- delete com join
DELETE p from users as u 
join profiles as p on
p.user_id = u.id
where p.bio like '%atualizado';