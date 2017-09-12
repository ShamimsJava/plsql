set serveroutput on;

declare
	a number(2) := 10;
begin
	if(a<20) then
		dbms_output.put_line('a is less than 20');
	end if;
	dbms_output.put_line('actual value of a is : '||a);
end;
/

-- @08_if.sql