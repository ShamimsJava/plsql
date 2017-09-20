create or replace trigger tr_insert
after insert on customers
for each row
begin
	dbms_output.put_line('New Id-->'|| :new.id || 'New Name-->' || :new.name);
	dbms_output.put_line('New row is inserted......');
end;
/