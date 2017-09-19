--1--
drop table emp_info;
create table emp_info(
 emp_id number(6) primary key,
 emp_name varchar2(20),
 manager_id number(6),
 phone number(15),
 sex varchar2(10) check(sex='Male' or sex= 'Female'),
 salary number(12) default(700000)
);

--2--

insert into emp_info
values(101,'Rana',201,01749198855,'Male',20000);
insert into emp_info
values(102,'Nafisa',202,01849198856,'Female',30000);

drop sequence emp_sq;
create sequence emp_sq
  increment by 1
  start with 103
  nomaxvalue
  nocache
  nocycle;  
insert into emp_info
values(emp_sq.NEXTVAL,'Helal',203,01749198825,'Male',35000);
insert into emp_info
values(emp_sq.NEXTVAL,'Fatema',204,01749198356,'Female',40000);
insert into emp_info
values(emp_sq.NEXTVAL,'Ratan',205,01749198816,'Male',45000);  

--3--

alter table emp_info
add (dept_id number(6));

--4--

drop table depart;
create table depart(
 dept_id number(6) primary key,
 dep_name varchar2(20),
 manager_id number(6),
 dep_location varchar2(15)
);

--5--

drop sequence emp_sq1;
create sequence emp_sq1
  increment by 1
  start with 111
  nomaxvalue
  nocache
  nocycle;  
insert into depart
values(emp_sq1.NEXTVAL,'Account',201,'Dhaka');


insert into depart
values(emp_sq1.NEXTVAL,'Sales',202,'Dhaka');

insert into depart
values(emp_sq1.NEXTVAL,'Finance',203,'Chittagong');

insert into depart
values(emp_sq1.NEXTVAL,'MRK',204,'Rajshahi');

insert into depart
values(emp_sq1.NEXTVAL,'IT',205,'Khulna');

--6--

update emp_info
set dept_id=111
where emp_id=101;

update emp_info
set dept_id=112
where emp_id=102;

update emp_info
set dept_id=113
where emp_id=103;

update emp_info
set dept_id=114
where emp_id=104;

update emp_info
set dept_id=115
where emp_id=105;

--7--

set linesize 200;
drop view empvu;
create view empvu as
select e.emp_name,e.phone,e.sex,e.salary,d.dept_id,d.dep_name,d.dep_location
from emp_info e join depart d
on (e.dept_id=d.dept_id);

--8--

select emp_name,phone,dep_name
from empvu
where dep_name in('Sales','MRK')
and sex='Female';