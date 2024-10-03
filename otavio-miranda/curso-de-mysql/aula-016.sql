SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
from users as u
left join profiles as p
on u.id = p.user_id;