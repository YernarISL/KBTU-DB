--1

create database lab4;

--2

create table Warehouses (
    code serial primary key,
    location varchar(255),
    capacity int
);

create table Boxes (
    code char(4) primary key,
    content varchar(255),
    value real,
    warehouse int
);

--3

insert into Warehouses (code, location, capacity)
values
    (default, 'Chicago', 3),
    (default, 'Chicago', 4),
    (default, 'New York', 7),
    (default, 'Los Angeles', 2),
    (default, 'San Francisco', 8);

insert into Boxes (code, content, value, warehouse)
values
    ('0MN7', 'Rocks', 180, 3),
    ('4H8P', 'Rocks', 250, 1),
    ('4RT3', 'Scissors', 190, 4),
    ('7GH3', 'Rocks', 200, 1),
    ('8JN6', 'Papers', 75, 1),
    ('8Y6U', 'Papers', 50, 3),
    ('9JF6', 'Papers', 175, 2),
    ('LL08', 'Rocks', 140, 4),
    ('P0H6', 'Scissors', 125, 1),
    ('P2T6', 'Scissors', 150, 2),
    ('TU55', 'Paper', 90, 5);

--4

select * from Warehouses;

--5

select * from boxes where value > 150;

--6

select distinct on (content) * from Boxes;

--7

select code, (select count(*) from boxes b where b.warehouse = Warehouses.code) as numbers from Warehouses;

--8

select *, (select count(*) from boxes b where b.warehouse = Warehouses.code) as numbers from Warehouses
where (select count(*) from boxes b where b.warehouse = Warehouses.code) > 2;

--9

insert into Warehouses
values (default, 'New York', 3);

select * from Warehouses;

--10

insert into Boxes values ('H5RT', 'Papers', 200, 2);
select * from Boxes;

--11

update Boxes set value = value - 0.15 * value where value = (select distinct value from Boxes
order by value desc
offset 2 limit 1);

select value from Boxes;

--12

delete from Boxes where value < 150;

--13

delete from Boxes where warehouse = (select code from Warehouses where location = 'New York') returning *;


