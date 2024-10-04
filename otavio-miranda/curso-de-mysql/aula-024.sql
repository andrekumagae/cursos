SELECT
max(salary),
min(salary),
avg(salary),
count(salary)
from users u;

-- pegar dados por funcionario
SELECT
u.first_name,
max(salary),
min(salary),
avg(salary),
count(salary) as total
from users u
join profiles p on
p.user_id = u.id 
GROUP by u.first_name 
ORder by total desc;