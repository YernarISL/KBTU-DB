-- create database lab1;
drop table users;

create table users(
    id INT primary key,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

alter table users
add isadmin INT;

alter table users
alter column isadmin TYPE boolean
using isadmin::boolean;

alter table users
alter column isadmin
set default false;

create table tasks(
    id serial primary key,
    name varchar(50),
    user_id INT
);

drop table tasks;
drop database lab1;