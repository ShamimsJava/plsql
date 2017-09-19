--1--
drop table emp1210957;

set serveroutput on size 300000; 

create table emp1210957(
						eid number(6) primary key,
						ename varchar2(15) not null,
						salary number(6) check(salary > 0),
						hire_date date default sysdate,
						addrress varchar2(20)
					);
--2--					
					

alter table emp1210957 
	add (department_id number(6),
         department_name varchar2(15) default 'IT'
	     );

describe emp1210957;
--3--

create or replace trigger insertTrigger
	after insert on emp1210957
	for each row
begin
	dbms_output.put_line('One row inserted successfuly.');
end;
/

drop sequence emp1210957_seq;
create sequence emp1210957_seq
				increment by 1
				start with 1
				nocache
				nocycle;

insert into emp1210957 
values(emp1210957_seq.nextval, 'A', 14000, '01-jan-2016', 'Dhanmondi', 80, 'SOFT');
insert into emp1210957 
values(emp1210957_seq.nextval, 'B', 15000, '01-jan-2016', 'Mohammadpur', 100, 'HR');
insert into emp1210957 
values(emp1210957_seq.nextval, 'C', 12500, '01-dec-2016', 'Dhanmondi', 90, default);
insert into emp1210957 
values(emp1210957_seq.nextval, 'D', 13000, '01-jan-2016', 'Mirpur', 80, 'SOFT');
insert into emp1210957 
values(emp1210957_seq.nextval, 'E', 11000, default, 'Savar', 80, 'SOFT');

select * from emp1210957;
--4--

select department_id, avg(salary)
	from emp1210957
	group by department_id
	having max(salary) > 12000;
	--5--

create or replace view emp1210957_view as
	select eid, department_name, department_id
	from emp1210957
	where department_id = 80;

select * from emp1210957_view;

 --6--

create or replace procedure p1
is
begin
	dbms_output.put_line('New procedure created.');
end;
/
  
execute p1;
  
--7--  
create or replace function newFunction 
	return number
	total number(3) := 0;
begin
	select count(*) into total from emp1210957;
	
	return total;
end;
/