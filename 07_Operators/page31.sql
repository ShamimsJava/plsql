/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	procedure compare(a varchar2, b varchar2) is
	begin
		if a like b then
			dbms_output.put_line('True');
		else
			dbms_output.put_line('False');
		end if;
	end;
begin
	compare('Shamim', 'S%');
	compare('Shamim', 'M%');
end;
/