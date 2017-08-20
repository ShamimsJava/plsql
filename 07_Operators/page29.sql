/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	a number := &Number1;
	b number := &Number2;
begin
	if(a = b) then
		dbms_output.put_line('Number1 and Number2 are equal.');
	elsif(a > b) then
		dbms_output.put_line('Number1 is greater than Number2.');
	else
		dbms_output.put_line('Number1 is less than Number2.');
	end if;
end;
/