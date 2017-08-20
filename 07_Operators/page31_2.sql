/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	x number;
begin
	x := &x;
	if(x between 1 and 100) then
		dbms_output.put_line('Yes, you enter a valid number.');
	else
		dbms_output.put_line('No, you enter a invalid number.');
	end if;
end;
/ 