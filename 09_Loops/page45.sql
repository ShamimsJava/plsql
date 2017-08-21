/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	x number := 10;
begin
	loop
		dbms_output.put_line(x);
		x := x+1;
		if x > 50 then
			exit;
		end if;
	end loop;
	dbms_output.put_line('After Exit x is: '||x);
end;
/