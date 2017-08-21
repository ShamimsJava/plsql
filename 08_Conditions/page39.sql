/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	a number(3) := &number;
begin
	if(a<20) then
		dbms_output.put_line('a is less than 20');
	else
		dbms_output.put_line('a is not less than 20');
	end if;
	dbms_output.put_line('Value of a is: '||a);
end;
/