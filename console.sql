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