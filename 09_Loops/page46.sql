declare
	x number := 10;
begin
	loop
		dbms_output.put_line(x);
		x := x+10;
		exit when x > 50;
	end loop;
	dbms_output.put_line('After exit x is: '||x);
end;
/