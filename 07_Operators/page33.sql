/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

begin
	if(5>3 and 6<5) then
		dbms_output.put_line('Line 1: Shamim');
	end if;
	if(5>3 or 6<5) then
		dbms_output.put_line('Line 2: Shamim');
	end if;
	if(not 6<5) then
		dbms_output.put_line('Line 3: Shamim');
	end if;
end;
/