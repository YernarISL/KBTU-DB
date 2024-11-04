create database lab6;

create table locations(
    location_id serial primary key,
    street_address varchar(255),
    postal_code varchar(12),
    city varchar(30),
    state_province varchar(12)
);

create table departments(
    department_id serial primary key,
    department_name varchar(20) unique,
    budget integer,
    location_id integer references locations
);

create table employees(
    employee_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(20),
    salary integer,
    department_id integer references departments
);

insert into locations (street_address, postal_code, city, state_province) values
('123 Elm St', '12345', 'Springfield', 'IL'),
('456 Maple Ave', '67890', 'Riverside', 'CA'),
('789 Oak Blvd', '13579', 'Georgetown', 'TX'),
('101 Pine Ln', '24680', 'Ashford', 'NY');

INSERT INTO departments (department_id, department_name, budget, location_id) values
('HR', 500000, 1),
('Finance', 750000, 2),
('IT', 1000000, 3),
('Marketing', 600000, 4);

INSERT INTO employees (first_name, last_name, email, phone_number, salary, department_id) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', 60000, 1),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', 75000, 2),
('Mike', 'Brown', 'mike.brown@example.com', '555-8765', 85000, 3),
('Emily', 'Davis', 'emily.davis@example.com', '555-4321', 90000, 4),
('William', 'Johnson', 'william.johnson@example.com', '555-9876', 72000, 1),
('Olivia', 'Taylor', 'olivia.taylor@example.com', '555-6543', 80000, 2),
('James', 'Anderson', 'james.anderson@example.com', '555-3456', 95000, 3),
('Sophia', 'Martin', 'sophia.martin@example.com', '555-7890', 88000, 4);

--3

select first_name, last_name, d.department_id, department_name from employees e
inner join departments d on d.department_id = e.department_id;

--4

select employees.first_name, employees.last_name, employees.department_id, departments.department_name from employees
join departments on employees.department_id = departments.department_id
where employees.department_id in (80, 40);


--5

select first_name || '' || last_name as fullname, department_name, city, state_province from employees
inner join departments on employees.department_id = departments.department_id
inner join locations l on departments.location_id = l.location_id;

--6

select * from departments d
left join employees e on e.department_id = d.department_id;

--7

select first_name, last_name, e.department_id, department_name from employees e
full join departments d on d.department_id = e.department_id;