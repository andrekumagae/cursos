use base_de_dados;
select * from users u;
SELECT * from users u WHERE id>100;
SELECT * from users u WHERE id<>100;
SELECT * from users u WHERE id!=100;
SELECT * from users u WHERE created_at > '2024-10-01 11:45:03';
SELECT * from users u WHERE created_at > '2024-10-01 11:45:03' and last_name = 'Moreira';
show tables;
describe users;
insert into users (first_name, last_name, email, password_hash ) values
("Luiz", "Miranda", "luis@email.com", "a_hash");
insert into users (last_name, first_name, email, password_hash ) values
("Moreira", "Maria", "maria@email.com", "2_hash");
select * from users;

insert into users (last_name, first_name, email, password_hash ) values
("Moreira", "Helena", "h@email.com", "3_hash"),
("Moreira", "Joana", "j@email.com", "4_hash"),
("Moreira", "Rosana", "r@email.com", "5_hash");



SELECT first_name ,email from users u;

