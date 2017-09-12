set serveroutput on;

declare
	x number(3);
	y number(3);
	z number(3);
begin
	x := 10;
	y := 5;
	dbms_output.put_line(x+y);
	dbms_output.put_line(x-y);
	dbms_output.put_line(x*y);
	dbms_output.put_line(x/y);
	dbms_output.put_line(x**y);
end;
/