create user shamim
identified by shamim;

grant dba to shamim;

create table round(
	roundId number(2) primary key,
	roundName varchar2(20) not null
);

create table student(
	studentId number(2) primary key,
	studentName varchar2(20) not null,
	age number(2),
	roundId number(2) references round(roundId)
);

create sequence sq
	start with 10
	increment by 10
	nocache
	nocycle;

set serveroutput on;
	
create or replace trigger tr_insert
after insert on student
for each row
begin
	dbms_output.put_line('********************');
	dbms_output.put_line('Thank you for inserting');
	dbms_output.put_line('********************');
end;
/

create or replace trigger tr_update
after update on student
for each row
begin
	dbms_output.put_line('********************');
	dbms_output.put_line('Thank you for updating');
	dbms_output.put_line('********************');
end;
/

create or replace trigger tr_deleting
after delete on student
for each row
begin
	dbms_output.put_line('********************');
	dbms_output.put_line('Thank you for deleting');
	dbms_output.put_line('********************');
end;
/

create or replace view st
as select studentId, studentName
from student;

create synonym sti
for st;

insert into round
values(sq.nextval, 'Round-30');
insert into round
values(sq.nextval, 'Round-31');
insert into round
values(sq.nextval, 'Round-32');
insert into round
values(sq.nextval, 'Round-33');
insert into round
values(sq.nextval, 'Round-34');

insert into student
values(10, 'Harry', 20, 40);
insert into student
values(11, 'Bill', 20, 20);
insert into student
values(12, 'Mark', 20, 20);
insert into student
values(13, 'Shihab', 20, 20);
insert into student
values(14, 'Lipa', 20, 20);
insert into student
values(16, 'Lipa', 20, 20);


-- prime number
declare
	i number(3);
	j number(3);
begin
	i := 2;
	loop
		j := 2;
		loop
			exit when ((mod(i,j)=0) or (j=i));
			j := j+1;
		end loop;
		if(j=i) then
			dbms_output.put_line(i||' is prime.');
		end if;
		i := i+1;
		exit when(i=50);
		
	end loop;
end;
/

create or replace trigger tr_age
after update on student
for each row
begin
	dbms_output.put_line('Old age was: '||:old.age);
	dbms_output.put_line('New age is: '||:new.age);
end;
/

update student
set age = 21
where age = 20
and studentId = 15;