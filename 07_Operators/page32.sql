/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	letter varchar2(1) := '&m_n_o';
begin
	if (letter in('m', 'n', 'o')) then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
	
	if(letter is null) then
		dbms_output.put_line('It is null');
	else
		dbms_output.put_line('It is not null');
	end if;
end;
/