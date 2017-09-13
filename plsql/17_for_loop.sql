set serveroutput on;

declare 
	a number(2);
begin
	for a in 10 .. 20 loop
		dbms_output.put_line(a);
	end loop;
	
	dbms_output.put_line('*****Reverse for loop statement*****');
	
	for a in reverse 10 .. 20 loop 
		dbms_output.put_line(a);
	end loop;	
end;
/

-- @17_for_loop.sql