set serveroutput on;

declare
	grade char(1) := '&grade';
begin
	case
		when grade = 'A' then 
			dbms_output.put_line('Excellent');
		when grade = 'B' then 
			dbms_output.put_line('Very good');
		when grade = 'C' then 
			dbms_output.put_line('Well done');
		when grade = 'D' then 
			dbms_output.put_line('You passed');
		when grade = 'F' then 
			dbms_output.put_line('Better try again');
		else
			dbms_output.put_line('No such grade');
	end case;
end;
/

-- @13_case2.sql