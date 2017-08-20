/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	a number(2) := &a;
begin
	if(a<20) then
		dbms_output.put_line('a is less than 20');
	end if;
	dbms_output.put_line('Actual value of a is: '||a);
end;
/