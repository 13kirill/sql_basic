create schema netology;

create table person
(
    name varchar(250) not null,
    surname varchar(250) not null,
    age int check ( age > -1 ),
    phone_number long not null,
    city_of_living varchar(250) not null
);

INSERT INTO person (name, surname, age, phone_number, city_of_living)
VALUES ('Василий', 'Васильев', 10, 89991231212,'Москва');
INSERT INTO person (name, surname, age, phone_number, city_of_living)
VALUES ('Иван', 'Иванов', 27, 89991231313,'Самара');
INSERT INTO person (name, surname, age, phone_number, city_of_living)
VALUES ('Петр', 'Петров', 45, 89991231414,'Нижний Новгород');
INSERT INTO person (name, surname, age, phone_number, city_of_living)
VALUES ('Тест', 'Тест', 99, 81234567890,'Тест');

alter table person add primary key (name, surname, age);

select name, surname from person where city_of_living = 'Москва';

select * from person where age > 27 order by age desc