set serveroutput on;

declare
	a number(3) := &a;
begin
	if(a<50) then
		dbms_output.put_line('a is less than 50');
	else
		dbms_output.put_line('a is greater than 50');
	end if;
		dbms_output.put_line('actual value of a : '||a);
end;
/

-- @10_if_else.sql