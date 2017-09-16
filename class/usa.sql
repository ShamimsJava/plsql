create table usa(
	usaId number primary key,
	fName varchar2(20),
	lName varchar2(20) 
);

create table usa_backup(
	usaId number primary key,
	fName varchar2(20),
	lName varchar2(20)
);

create or replace trigger usa_after_insert
after insert on usa
for each row
declare
begin
	insert into usa_backup
	values(:new.usaId, :new.fName, :new.lName);
	dbms_output.put_line('Record inserted on table usa');
end;
/

insert into usa
values(102, 'Harry', 'jhonson');
insert into usa
values(110, 'Harry', 'jhonson');
insert into usa
values(111, 'Harry', 'jhonson');
insert into usa
values(112, 'Harry', 'jhonson');

create or replace trigger usa_after_update
after update on usa
for each row
declare
begin
update usa_backup
set usaId = :new.usaId
where usaId = :old.usaId;
dbms_output.put_line('Record successfully updated into usa table');
end;
/

update usa
set usaId = 104
where usaId = 102;

create or replace trigger usa_after_delete
after delete on usa
for each row 
declare
begin
delete from usa_backup
where usaId = :old.usaId;
dbms_output.put_line('Record successfully deleted from usa table.');
end;
/

delete from usa 
where usaId = 102;

