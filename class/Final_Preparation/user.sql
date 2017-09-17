-- creating user 
create user shamim
identified by shamim;

-- granting dba privilege
grant dba to shamim;

-- creating table and backup table using constraint
create table teacher(
	teacherId number(3) primary key,
	teacherName varchar2(20) not null
);

create table student(
	stId number(3) primary key,
	stName varchar2(20),
	teacherId number(3) references teacher(teacherId)
);

create table teacher_backup(
	teacherId number(3) primary key,
	teacherName varchar2(20) not null
);


create table student_backup(
	stId number(3) primary key,
	stName varchar2(20),
	teacherId number(3) references teacher(teacherId)
);

-- creating sequence
create sequence seq
	increment by 1
	start with 100;
	
-- creating trigger 
set serveroutput on;	
create or replace trigger tr_insert_teacher
after insert on teacher
for each row
begin
	insert into teacher_backup
	values(:new.teacherId, :new.teacherName);
	dbms_output.put_line('Also inserted in teacher_backup');
end;
/

create or replace trigger tr_insert_student
after insert on student
for each row
begin
	insert into student_backup
	values(:new.stId, :new.stName, :new.teacherId);
	dbms_output.put_line('Also inserted in student_backup');
end;
/

-- inserting values 
insert into teacher
values(seq.nextval, 'Sharifa');
insert into teacher
values(seq.nextval, 'Tahmina');
insert into teacher
values(seq.nextval, 'Ahad');
insert into teacher
values(seq.nextval, 'Kantessor');
insert into teacher
values(seq.nextval, 'Mohima');

insert into student
values(seq.nextval, 'Maidul', 100);
insert into student
values(seq.nextval, 'Chandona', 104);
insert into student
values(seq.nextval, 'Rabiul', 102);
insert into student
values(seq.nextval, 'Liton', 103);
insert into student
values(seq.nextval, 'Mohibul', 101);

-- creating sysnonym 
create public synonym tb
for teacher_backup;

create public synonym sb
for student_backup;

-- c reating view
create or replace view stIdName
as select stId, stName
from student;
