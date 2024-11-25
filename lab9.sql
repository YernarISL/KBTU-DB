--1
create function increase_value(val integer) returns integer as
$$
begin
    return val + 10;
end;
$$
    language plpgsql;

select increase_value(20);

--2

create function compare_numbers(val1 integer, val2 integer) returns varchar as
$$
begin
    if val1 > val2 then
        return 'Greater';
    elsif val1 < val2 then
        return 'Lesser';
    else
        return 'Equal';
    end if;
end;
$$
    language plpgsql;

select compare_numbers(4, 2);
select compare_numbers(123, 221);
select compare_numbers(45, 45);

--3

create function number_series(n integer) returns varchar as
$$
declare
    res varchar := '';
begin
    for counter in 1..n loop
        res := res || cast(counter as varchar) || ' ';
    end loop;
    return res;
end
$$ language plpgsql;

drop function number_series(n integer);
select number_series(100);

--4

create table employees (
  name varchar(255) not null,
  lastname varchar(255) not null,
  salary integer,
  department integer,
  city varchar(255)
);

insert into employees(name,lastname, salary, department, city) values('Michael','Rogers', 120000, 14, 'Almaty');
insert into employees(name,lastname, salary, department, city) values('Anand','Manikutty', 60000, 14, 'Shymkent');
insert into employees(name,lastname, salary, department, city) values('Carol','Smith', 1000000, 37, 'Astana');
insert into employees(name,lastname, salary, department, city) values('Joe','Stevens',3700000, 37, 'Almaty');
insert into employees(name,lastname, salary, department, city) values('Mary-Anne','Foster', 987500, 14, 'Astana');
insert into employees(name,lastname, salary, department, city) values('George','ODonnell', 1500000, 77, 'Astana');
insert into employees(name,lastname, salary, department, city) values('John','Doe', 85700, 59, 'Shymkent');
insert into employees(name,lastname, salary, department, city) values('David','Smith', 42500, 77, 'Almaty');
insert into employees(name,lastname, salary, department, city) values('Zacary','Efron', 1270000, 59, 'Almaty');
insert into employees(name,lastname, salary, department, city) values('Eric','Goldsmith', 12000000, 59, 'Atyrau');
insert into employees(name,lastname, salary, department, city) values('Elizabeth','Doe', 500000, 14, 'Almaty');
insert into employees(name,lastname, salary, department, city) values('Kumar','Swamy', 3450000, 14, 'Almaty');


create or replace function find_employee(e_name varchar)
returns table(
    name varchar,
    lastname varchar,
    salary integer,
    department integer,
    city varchar
) as
$$
begin
    return query
    select
        e.name,
        e.lastname,
        e.salary,
        e.department,
        e.city
    from employees e where e.name like e_name;
end;
$$ language plpgsql;

drop function find_employee(e_name varchar);

select * from find_employee('Joe');

--5

create table products(
    name varchar(255),
    price integer,
    category varchar(255)
);

insert into products(name, price, category)
values
('Cola', 560, 'drinks'),
('Soap', 200, 'hygiene'),
('Pasta', 500, 'food'),
('Fanta', 540, 'drinks'),
('Sprite', 520, 'drinks'),
('Curd', 600, 'dairy'),
('Cheese', 1200, 'dairy'),
('Milk', 700, 'dairy'),
('Orange Juice', 600, 'drinks'),
('Shampoo', 1200, 'hygiene'),
('Rice',800, 'food'),
('Chips', 400, 'food');

create or replace function list_products(pat_category varchar)
returns table(
    name varchar,
    price integer,
    category varchar
) as
$$
begin
    return query
    select
        p.name,
        p.price,
        p.category
    from products p where p.category like pat_category;
end
$$ language plpgsql;

select * from list_products('food');

--6

create function calculate_bonus(amount integer) returns integer as
$$
declare
    bonus integer;
begin
    bonus := amount * 0.1;
    return bonus;
end;
$$ language plpgsql;

create function update_salary(salary integer) returns integer as
$$
begin
    salary := salary + calculate_bonus(salary);
    return salary;
end;
$$ language plpgsql;

select update_salary(100000);

--7

create function complex_calculation(str1 varchar, str2 varchar, num1 integer, num2 integer) returns varchar as
$$
<<main>>
    declare
        len1 integer;
        len2 integer;
        multi integer;
        plus integer;
        minus integer;
        div integer;
begin
    <<string_block>>
    begin
        len1 := length(str1);
        len2 := length(str2);
    end string_block;
    <<number_block>>
    begin
        multi := num1 * num2;
        plus := num1 + num2;
        minus := num1 - num2;
        div := num1 / num2;
    end number_block;
    return (len1 + len2)::varchar || ' ' || (multi + plus + minus + div)::varchar;
end main;
$$ language plpgsql;

drop function complex_calculation(str1 varchar, str2 varchar, num1 integer, num2 integer);

select complex_calculation('uta', 'five', 6, 4);

