create table countries(
    id serial primary key,
    name varchar(255),
    capital varchar(255)
);

create table departments (
  code integer primary key,
  name varchar(255) not null,
  budget decimal not null
);

create table employees (
  ssn integer primary key,
  name varchar(255) not null,
  lastname varchar(255) not null,
  salary integer,
  department integer,
  city varchar(255),
  foreign key (department) references departments(code)
);

insert into countries (name, capital) values
('Afghanistan', 'Kabul'),
('Algeria', 'Algiers'),
('Angola', 'Luanda'),
('Antigua and Barbuda', 'Saint John'),
('Argentina', 'Buenos Aires'),
('Armenia', 'Yerevan'),
('Australia', 'Canberra'),
('Austria', 'Vienna'),
('Azerbaijan', 'Baku'),
('Bahamas', 'Nassau'),
('Bahrain', 'Manama'),
('Bangladesh', 'Dhaka'),
('Barbados', 'Bridgetown'),
('Belarus', 'Minsk'),
('Belgium', 'Brussels'),
('Belize', 'Belmopan'),
('Benin', 'Porto-Novo'),
('Bhutan', 'Thimphu'),
('Bolivia', 'Sucre'),
('Bosnia and Herzegovina', 'Sarajevo'),
('Botswana', 'Gaborone'),
('Brazil', 'Brasilia'),
('Bulgaria', 'Sofia'),
('Burkina Faso', 'Ouagadougou'),
('Cameroon', 'Yaoundé'),
('Canada', 'Ottawa'),
('Central African Republic', 'Bangui'),
('Chile', 'Santiago'),
('China', 'Beijing'),
('Colombia', 'Bogotá'),
('Comoros', 'Moroni'),
('Congo (Congo-Brazzaville)', 'Brazzaville'),
('Congo (DRC)', 'Kinshasa'),
('Croatia', 'Zagreb'),
('Cuba', 'Havana'),
('Cyprus', 'Nicosia'),
('Czechia (Czech Republic)', 'Prague'),
('Denmark', 'Copenhagen'),
('Djibouti', 'Djibouti (city)'),
('Dominica', 'Roseau'),
('Dominican Republic', 'Santo Domingo'),
('Ecuador', 'Quito'),
('Egypt', 'Cairo'),
('El Salvador', 'San Salvador'),
('Equatorial Guinea', 'Malabo'),
('Eritrea', 'Asmara'),
('Estonia', 'Tallinn'),
('Eswatini', 'Mbabane'),
('Ethiopia', 'Addis Ababa'),
('Fiji', 'Suva'),
('Finland', 'Helsinki'),
('France', 'Paris'),
('Gabon', 'Libreville'),
('Gambia', 'Banjul'),
('Georgia', 'Tbilisi'),
('Germany', 'Berlin'),
('Ghana', 'Accra'),
('Greece', 'Athens'),
('Grenada', 'St. George'),
('Guatemala', 'Guatemala City'),
('Guinea', 'Conakry'),
('Guinea-Bissau', 'Bissau'),
('Guyana', 'Georgetown'),
('Haiti', 'Port-au-Prince'),
('Honduras', 'Tegucigalpa'),
('Hungary', 'Budapest'),
('Iceland', 'Reykjavik'),
('India', 'New Delhi'),
('Indonesia', 'Jakarta'),
('Iran', 'Tehran'),
('Iraq', 'Baghdad'),
('Ireland', 'Dublin'),
('Israel', 'Jerusalem'),
('Italy', 'Rome'),
('Jamaica', 'Kingston'),
('Japan', 'Tokyo'),
('Jordan', 'Amman'),
('Kazakhstan', 'Astana'),
('Kenya', 'Nairobi'),
('Kiribati', 'South Tarawa'),
('Kuwait', 'Kuwait City'),
('Kyrgyzstan', 'Bishkek'),
('Laos', 'Vientiane'),
('Latvia', 'Riga'),
('Lebanon', 'Beirut'),
('Lesotho', 'Maseru'),
('Liberia', 'Monrovia'),
('Libya', 'Tripoli'),
('Liechtenstein', 'Vaduz'),
('Lithuania', 'Vilnius'),
('Luxembourg', 'Luxembourg'),
('Madagascar', 'Antananarivo'),
('Malawi', 'Lilongwe'),
('Malaysia', 'Kuala Lumpur'),
('Maldives', 'Malé'),
('Mali', 'Bamako'),
('Malta', 'Valletta'),
('Marshall Islands', 'Majuro'),
('Mauritania', 'Nouakchott'),
('Mauritius', 'Port Louis'),
('Mexico', 'Mexico City'),
('Micronesia', 'Palikir'),
('Moldova', 'Chișinău'),
('Monaco', 'Monaco'),
('Mongolia', 'Ulaanbaatar'),
('Montenegro', 'Podgorica'),
('Morocco', 'Rabat'),
('Mozambique', 'Maputo'),
('Namibia', 'Windhoek'),
('Nauru', 'Yaren'),
('Nepal', 'Kathmandu'),
('Netherlands', 'Amsterdam'),
('New Zealand', 'Wellington'),
('Nicaragua', 'Managua'),
('Niger', 'Niamey'),
('Nigeria', 'Abuja'),
('North Korea', 'Pyongyang'),
('North Macedonia', 'Skopje'),
('Norway', 'Oslo'),
('Oman', 'Muscat'),
('Pakistan', 'Islamabad'),
('Panama', 'Panama City'),
('Paraguay', 'Asunción'),
('Peru', 'Lima'),
('Philippines', 'Manila'),
('Poland', 'Warsaw'),
('Portugal', 'Lisbon'),
('Qatar', 'Doha'),
('Romania', 'Bucharest'),
('Russia', 'Moscow'),
('Rwanda', 'Kigali'),
('Saint Lucia', 'Castries'),
('Saint Vincent and the Grenadines', 'Kingstown'),
('Samoa', 'Apia'),
('San Marino', 'San Marino'),
('Sao Tome and Principe', 'São Tomé'),
('Saudi Arabia', 'Riyadh'),
('Senegal', 'Dakar'),
('Serbia', 'Belgrade'),
('Seychelles', 'Victoria'),
('Sierra Leone', 'Freetown'),
('Singapore', 'Singapore'),
('Slovakia', 'Bratislava'),
('Slovenia', 'Ljubljana'),
('Solomon Islands', 'Honiara'),
('Somalia', 'Mogadishu'),
('South Africa', 'Pretoria'),
('South Korea', 'Seoul'),
('Spain', 'Madrid'),
('Sudan', 'Khartoum'),
('Suriname', 'Paramaribo'),
('Sweden', 'Stockholm'),
('Switzerland', 'Bern'),
('Syria', 'Damascus'),
('Taiwan', 'Taipei'),
('Tajikistan', 'Dushanbe'),
('Tanzania', 'Dodoma'),
('Thailand', 'Bangkok'),
('Togo', 'Lomé'),
('Trinidad and Tobago', 'Port of Spain'),
('Tunisia', 'Tunis'),
('Turkey', 'Ankara'),
('Turkmenistan', 'Ashgabat'),
('Tuvalu', 'Funafuti'),
('Uganda', 'Kampala'),
('Ukraine', 'Kyiv'),
('United Arab Emirates', 'Abu Dhabi'),
('United Kingdom', 'London'),
('United States', 'Washington, D.C.'),
('Uruguay', 'Montevideo'),
('Uzbekistan', 'Tashkent'),
('Vanuatu', 'Port Vila'),
('Vatican City', 'Vatican City'),
('Venezuela', 'Caracas'),
('Vietnam', 'Hanoi'),
('Yemen', 'Sana'),
('Zambia', 'Lusaka'),
('Zimbabwe', 'Harare');

insert into departments(code,name,budget) values(14,'IT',65000);
insert into departments(code,name,budget) values(37,'Accounting',15000);
insert into departments(code,name,budget) values(59,'Human Resources',240000);
insert into departments(code,name,budget) values(77,'Research',55000);
insert into departments(code,name,budget) values(45,'Management',155000);
insert into departments(code,name,budget) values(11,'Sales',85000);

insert into employees(ssn,name,lastname, salary, department, city) values('123234877','Michael','Rogers', 120000, 14, 'Almaty');
insert into employees(ssn,name,lastname, salary, department, city) values('152934485','Anand','Manikutty', 60000, 14, 'Shymkent');
insert into employees(ssn,name,lastname, salary, department, city) values('222364883','Carol','Smith', 1000000, 37, 'Astana');
insert into employees(ssn,name,lastname, salary, department, city) values('326587417','Joe','Stevens',3700000, 37, 'Almaty');
insert into employees(ssn,name,lastname, salary, department, city) values('332154719','Mary-Anne','Foster', 987500, 14, 'Astana');
insert into employees(ssn,name,lastname, salary, department, city) values('332569843','George','ODonnell', 1500000, 77, 'Astana');
insert into employees(ssn,name,lastname, salary, department, city) values('546523478','John','Doe', 85700, 59, 'Shymkent');
insert into employees(ssn,name,lastname, salary, department, city) values('631231482','David','Smith', 42500, 77, 'Almaty');
insert into employees(ssn,name,lastname, salary, department, city) values('654873219','Zacary','Efron', 1270000, 59, 'Almaty');
insert into employees(ssn,name,lastname, salary, department, city) values('745685214','Eric','Goldsmith', 12000000, 59, 'Atyrau');
insert into employees(ssn,name,lastname, salary, department, city) values('845657245','Elizabeth','Doe', 500000, 14, 'Almaty');
insert into employees(ssn,name,lastname, salary, department, city) values('845657246','Kumar','Swamy', 3450000, 14, 'Almaty');

--1
create index countries_name on countries(name);

explain(analyze)
select * from countries where name = 'Kazakhstan';

--2
create index if not exists idx_name on employees(name, lastname);

explain analyse
select * from employees where name = 'David' and lastname = 'Smith';

--3
create unique index idx_salary on employees(salary);

select * from employees where salary < 300000 and salary > 10000;

--4
create index idx_substring on employees(name);

explain analyse
select * from employees where substring(name from 1 for 4) = 'John';

--5
create index idx_budget on departments(budget);
create index if not exists salary on employees(salary);

explain analyse
select * from employees e join departments d on e.department = d.code
where d.budget > 70000 and e.salary < 250000;

