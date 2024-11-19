--1
--2
create table salesman (
    salesman_id integer primary key,
    name varchar(255),
    city varchar(255),
    commission float
);

create table customer (
    customer_id integer primary key,
    cust_name varchar(255),
    city varchar(255),
    grade integer,
    salesman_id integer,
    foreign key (salesman_id) references salesman(salesman_id)
);

create table orders (
    ord_no integer primary key,
    purch_amt float,
    ord_date date,
    customer_id integer,
    salesman_id integer,
    foreign key (customer_id) references customer(customer_id),
    foreign key (salesman_id) references salesman(salesman_id)
);

insert into salesman(salesman_id, name, city, commission)
values (5001, 'James Hoog', 'New York', 0.15),
       (5002, 'Nail Knite', 'Paris', 0.13),
       (5005, 'Pit Alex', 'London', 0.11),
       (5006, 'Mc Lyon', 'Paris', 0.14),
       (5003, 'Lauson Hen', default, 0.12),
       (5007, 'Paul Adam', 'Rome', 0.13);

insert into customer(customer_id, cust_name, city, grade, salesman_id)
values (3002, 'Nick Rimando', 'New York', 100, 5001),
       (3005, 'Graham Zusi', 'California', 200, 5002),
       (3001, 'Brand Guzan', 'London', default, 5005),
       (3004, 'Fabian Johns', 'Paris', 300, 5006),
       (3007, 'Brad Davis', 'New York', 200, 5001),
       (3009, 'Geoff Camero', 'Berlin', 100, 5003),
       (3008, 'Julian Green', 'London', 300, 5002);

insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id)
values (70001, 150.5, '2012-10-05', 3005, 5002),
       (70009, 270.65, '2012-09-10', 3001, 5005),
       (70002, 65.26, '2012-10-05', 3002, 5001),
       (70004, 110.5, '2012-08-17', 3009, 5003),
       (70007, 948.5, '2012-09-10', 3005, 5002),
       (70005, 2400.6, '2012-07-27', 3007, 5001),
       (70008, 5760, '2012-09-10', 3002, 5001);

--3

create role junior_dev
login
password '111';

--4

create view salesman_in_new_york as
select * from salesman where city = 'New York';
select * from salesman_in_new_york;

--5

grant all privileges on salesman, customer, orders to junior_dev;

create view each_order as
select ord_no as orders, name as salesman_name, cust_name as customer_name from salesman
join customer c on salesman.salesman_id = c.salesman_id
join orders o on c.customer_id = o.customer_id;

select * from each_order;

--6

create view highest_grade as
select * from customer where grade = (select max(grade) from customer);

grant select on customer to junior_dev;

select * from highest_grade;

--7

create view num_of_salesman as
select city, count(*) as number from salesman
group by city;

select * from num_of_salesman;

--8

create view more_than_one as select s.* from salesman s
join customer c on s.salesman_id = c.salesman_id
group by s.salesman_id, s.name, s.city, s.commission, c.customer_id having count(c.customer_id) > 1;

drop view more_than_one;
select * from more_than_one;

--9

create role intern;
grant junior_dev to intern;

