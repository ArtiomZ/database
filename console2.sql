create schema artiom;
create table PERSONS
(
    name           varchar(255)                      not null,
    surname        varchar(255)                      not null,
    age            int check (age > 0 and age < 120) not null,
    phone_number   varchar(30),
    city_of_living varchar(255),
    PRIMARY KEY    (name,surname,age)
);

insert into PERSONS (name, surname, age, phone_number, city_of_living)
    VALUE ('Sergey', 'Ivanov', 20, '89112223399', 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
    VALUE ('Andrey', 'Petrov', 29, '89114443399', 'NEW-YORK');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
    VALUE ('Ivan', 'Sidorov', 45, '89112223300', 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
    VALUE ('Mihail', 'Karpov', 37, '89112221299', 'MOSCOW');

select name, surname from PERSONS
where city_of_living = 'MOSCOW';

select * from PERSONS
where age > 27
order by age desc;