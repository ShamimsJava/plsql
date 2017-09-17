-- drop user shamim 
drop user shamim cascade;

-- create user
create user shamim
identified by shamim;

-- grant privilege
grant dba to shamim;

-- log in to shamim
conn shamim/shamim;

-- create table
create table teacher1(
	teacherId number(3) primary key,
	teacherName varchar2(20) not null
);

create table student1(
	stId number(3) primary key,
	stName varchar2(20) not null,
	teacherId number(3)
	references teacher1(teacherId) 
);

-- create sequence
create sequence sq
	start with 100
	increment by 1;
	
-- create trigger
set serveroutput on;
create or replace trigger tr_insert_st
after insert on student1
for each row
begin
	dbms_output.put_line('One new row is inserted. Thank you for inserting');
end;
/

create or replace trigger tr_update_st
after update on student1
for each row
begin
	dbms_output.put_line('One row is updated, thank you.');
end;
/

create or replace trigger tr_delete_st
after delete on student1
for each row
begin
	dbms_output.put_line('One row is deleted, thank you.');
end;
/

-- inserting data in teacher1 table 
insert into teacher1
values(sq.nextval, 'Ahad');
insert into teacher1
values(sq.nextval, 'Mohesh');
insert into teacher1
values(sq.nextval, 'Sharif');
insert into teacher1
values(sq.nextval, 'Kamini');
insert into teacher1
values(sq.nextval, 'Sharifa');

select * from teacher1;

-- inserting data in student1 table 
insert into student1
values(sq.nextval, 'Maidul', 104);
insert into student1
values(sq.nextval, 'Manish', 100);
insert into student1
values(sq.nextval, 'Bill', 103);
insert into student1
values(sq.nextval, 'Mark', 102);
insert into student1
values(sq.nextval, 'Steve', 101);

select * from student1;

-- create synonym for teacher1
create synonym tchr
for teacher1;

select * from tchr;

-- create synonym for student1
create synonym stdnt
for student1;

select * from stdnt;

-- create view
create or replace view vust
as select stId, stName
from student1;

select * from vust;
	