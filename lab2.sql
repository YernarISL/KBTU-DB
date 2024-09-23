--#1

create database lab2;

--#2

create table countries(
    country_id serial primary key,
    country_name varchar,
    region_id int,
    population int
);

--#3

insert into countries (country_id, country_name, region_id, population)
values (default, 'Germany', 101, 84000000);

--#4

insert into countries (region_id, population)
values (124, 170000000);

--#5

insert into countries (region_id)
values (null);

--#6

insert into countries (country_id, country_name, region_id, population)
values
    (default, 'Poland', 133, 370000),
    (default, 'Russia', 122, 150000000),
    (default, 'India', 234, 1000000000);

--#7

alter table countries
alter column country_name
set default 'Kazakhstan';

--#8

insert into countries(country_id, country_name, region_id, population)
values (default, default, 1465, 19000000);

select * from countries;

--#9

insert into countries(country_id, country_name, region_id, population)
values (default, default, default, default);

select * from countries;

--#10

create table countries_new (like countries);

--#11

insert into countries_new select * from countries;
select * from countries_new;

--#12

update countries
set region_id = 1 where region_id is null;

select * from countries;

--#13

update countries
set population = population + population * 0.1
returning  country_name, population as New_Population;

--#14

delete from countries where population < 100000;

--#15

delete from countries_new
where country_id in (select country_id from countries) returning *;

--#16

delete from countries returning *;

