-- achar valores repetidos com groupby e count
SELECT first_name, count(id) as total from users u
group by first_name
order by total desc;

-- buscar valores repetidos por id
SELECT * from users order by first_name ;
SELECT u.first_name, count(id) as total from users u
where u.id in (130,175,128,169,202,10,101)
group by first_name
order by total desc;