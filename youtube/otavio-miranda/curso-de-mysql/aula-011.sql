-- insert select
-- insere valores em uma tabela usando outra

select * from profiles p ;
select count(*) from profiles p;
select count(*) from users u;
select * from users;
select 1,2,110;
delete from profiles;

INSERT INTO profiles (bio, description, user_id) 
select 'bio', 'description', id from users;


INSERT INTO profiles (bio, description, user_id) 
select CONCAT('Bio de ', first_name), 
concat('Description de ', first_name),
id from users;
