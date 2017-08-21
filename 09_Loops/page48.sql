/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	a number(2);
begin
	for a in reverse 10 .. 20 loop
		dbms_output.put_line('Value of a is: '||a);
	end loop;
	dbms_output.put_line('Value of a after exit: '||a);
end;
/