/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	grade char(1) := '&Grade';
begin
	case
		when grade = 'A' then dbms_output.put_line('Excellent');
		when grade = 'B' then dbms_output.put_line('Very Good');
		when grade = 'C' then dbms_output.put_line('Well Done');
		when grade = 'D' then dbms_output.put_line('You Passed');
		when grade = 'F' then dbms_output.put_line('Better try again');
		else dbms_output.put_line('No such grade');
	end case;
end;
/