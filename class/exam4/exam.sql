create table employees(
	eId number primary key,
	eName varchar2(20),
	salary number,
	hireDate date,
	address varchar2(20)
);

desc employees;

alter table employees add(
	phone number,
	jobTitle varchar2(20)
);

desc employees;

insert into employees
values(101, 'Harry', 25000, '25-JAN-16', 'Mirpur', 52462, 'Programmer');
insert into employees
values(102, 'Bill', 26000, '25-FEB-16', 'Agargaon', 547842, 'Developer');
insert into employees
values(103, 'Mark', 27000, '25-MAR-16', 'Kalsi', 65894, 'Coder');
insert into employees
values(104, 'Steve', 28000, '25-JUN-16', 'Taltola', 85479, 'Manager');
insert into employees
values(105, 'Jack', 29000, '25-JUL-16', 'Dhanmondi', 36952, 'Marketing');

select * from employees;

select eName, jobTitle, salary, salary+(salary*(30/100)) withBonus
from employees;

select eName, salary
from employees
where salary = (
	select min(salary)
	from employees
);

update employees
set jobTitle = 'Manager';

select * from employees;

update employees
set salary = 3000,
jobTitle = 'Programmer'
where eId = 101;

select * from employees;

drop table employees;