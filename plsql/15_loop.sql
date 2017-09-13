set serveroutput on;

declare
	x number := 1;
begin
	loop
		dbms_output.put_line(x);
		x := x+1;
		/*
		if (x>10) then
			exit;
		end if;
		*/
		exit when x >10;
	end loop;
	dbms_output.put_line('After exit x is: '||x);
end;
/

-- @15_loop.sql