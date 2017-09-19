--1--
drop table employ;

--2--
create table employ(
 employ_id number(6) primary key,
 employ_name varchar2(30),
 salary number(10),
 hire_date date,
 address varchar2(50)
);

--3--
alter table employ
add(
 phone number(11),
 job_title varchar2(20)
);

--4--
insert into employ(employ_id, employ_name, salary, hire_date, address, phone, job_title)
values(&eid, '&ename', &salary, '&hire_date', '&address', &phone, '&job_title');

--5--
insert into employ(employ_id, employ_name, salary, hire_date, address, phone, job_title)
values(210,'Rana',2000,'20-JAN-2020','IT',01749195865,'SA_RAF');

--6--
select employ_name, job_title, salary,salary*30/100  "Bonus", salary+salary*30/100 " Salary with bonus"
from employ;

--7--
select employ_name, salary
from employ
where salary=(select min(salary)
              from employ
			 );
			 
--8--
update employ
set job_title='manager';

--9--
UPDATE employ
SET salary=9000,job_title='SA_HA'
WHERE employ_id=210;

--10--
DELETE FROM employ
WHERE employ_id=210;


                                     --Question--
									 
  --1.Drop the table				 
  --2.Create table with eid,ename,salary,hire_date,adress columns and set primary key on eid
  --3.Add two columns named as phone,job_title
  --4.Insert five record using substitution variables/ampercent
  --5.Insert five record
  --6.Make a query with ename,job_title,salary and salary with 30% bonus
  --7.Make a query with ename,salary where salary is equal to minimum salary of employees
  --8.Update all job tittle to manager
  --9.Update salary and job_title where employ_id 210
 --10.Delete the table
			 
