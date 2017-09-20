create or replace trigger tr_update_name
after update on employees
for each row
begin
	dbms_output.put_line('Old name is --> '||:old.ename);
	dbms_output.put_line('New name is --> '||:new.ename);
	dbms_output.put_line('Trigger works successfully......');
end;
/

update employees
set ename = 'Shamim'
where eId = 101;