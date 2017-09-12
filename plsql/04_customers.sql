-- creating table
create table customers(
	id int primary key,
	name varchar2(20) not null,
	age int not null,
	address char(25),
	salary decimal(18,2)
);

-- value inserting
insert into customers(id, name, age, address, salary)
values(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);

insert into customers(id, name, age, address, salary)
values(2, 'Khilan', 25, 'Delhi', 1500.00);

insert into customers(id, name, age, address, salary)
values(3, 'Kaushik', 23, 'Kota', 2000.00);

insert into customers(id, name, age, address, salary)
values(4, 'Chaitali', 25, 'Mumbai', 6500.00);

insert into customers(id, name, age, address, salary)
values(5, 'Hardik', 27, 'Bhopal', 8500.00);

insert into customers(id, name, age, address, salary)
values(6, 'Komal', 22, 'MP', 4500.00);

-- showing the table description
desc customers;

-- showing all data from table 
select * from customers;

-- @04_customers.sql