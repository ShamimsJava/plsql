set serveroutput on;

declare
	x number := 1;
begin
	while (x <= 10) loop
		dbms_output.put_line(x);
		x := x+1;
	end loop;
	dbms_output.put_line('After exit x is: '||x);
end;
/

-- @16_while_loop.sql