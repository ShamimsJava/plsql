/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	a number(2) := 10;
begin
	while a<20 loop
		dbms_output.put_line('Value of a is: '||a);
		a := a+1;
	end loop;
	dbms_output.put_line('After exit a is: '||a);
end;
/