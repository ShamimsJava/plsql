create user manager
identified by manager;

grant dba to manager;

create table student(
	stId number(3) primary key,
	fName varchar2(20),
	lName varchar2(20)
);

create table student_backup(
	stId number(3) primary key,
	fName varchar2(20),
	lName varchar2(20)
);

set serveroutput on;
create or replace trigger tr_st
after insert on student 
for each row
begin
	insert into student_backup
	values(:new.stId, :new.fName, :new.lName);
	dbms_output.put_line('Data inserted.');
end;
/


create or replace trigger tr_update
after update on student 
for each row
begin
	update student_backup
	set stId = :new.stId
	where stId = :old.stId;
	dbms_output.put_line('Value is updated for student_backup');
end;
/


create or replace trigger tr_delete
after delete on student
for each row
begin
	delete from student_backup
	where stId = :old.stId;
	dbms_output.put_line('One row also deleted from student_backup');
end;
/


insert into student
values(101, 'Abraham', 'Linkon');
insert into student
values(102, 'Barak', 'Obama');
insert into student
values(103, 'Steve', 'Jobs');
insert into student
values(104, 'Bill', 'Gates');
insert into student
values(105, 'Mark', 'Zukarbarg');

update student
set stId = 106
where stId = 105;

delete from student
where stId = 106;

create or replace trigger sal_change
before delete or insert or update on customers
for each row
when (new.id>0)
declare
	sal_diff number;
begin
	sal_diff := :new.salary - :old.salary;
	dbms_output.put_line('Old salary: '||:old.salary);
	dbms_output.put_line('New salary: '||:new.salary);
	dbms_output.put_line('Salary difference: '||sal_diff);
end;
/	

update customers
set salary = salary+1000
where id = 1;


create or replace procedure findMin(x in number, y in number, z out number) is
begin
	if x<y then
		z := x;
	else
		z := y;
	end if;
	dbms_output.put_line('The minimum number is: '|| z);
end;
/

declare
	a number := 45;
	b number := 46;
	c number;
begin
	findMin(a,b,c);
end;
/

create or replace function findMax(x in number, y in number)
return number
is 
z number;
begin
	if x>y then
		z := x;
	else
		z := y;
	end if;
	return z;
end;
/

declare
	a number;
	b number;
	c number;
begin 
	a := 40;
	b := 50;
	c := findMax(a,b);
	dbms_output.put_line('The maximum value is: '||c);
end;
/
