/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	num1 number := 95;
	num2 number := 85;
begin
	dbms_output.put_line('Outer Variable num1: ' || num1);
	dbms_output.put_line('Outer Variable num2: ' || num2);
	declare
		num3 number := 195;
		num4 number := 185;
	begin
		dbms_output.put_line('Inner Variable num1: ' || num1);
		dbms_output.put_line('Inner Variable num2: ' || num2);
		dbms_output.put_line('Inner Variable num3: ' || num3);
		dbms_output.put_line('Inner Variable num4: ' || num4);
		declare
			num5 number := 1195;
			num6 number := 1185;
		begin
			dbms_output.put_line('Inner Inner Variable num1: ' || num1);
			dbms_output.put_line('Inner Inner Variable num2: ' || num2);
			dbms_output.put_line('Inner Inner Variable num3: ' || num3);
			dbms_output.put_line('Inner Inner Variable num4: ' || num4);
			dbms_output.put_line('Inner Inner Variable num5: ' || num5);
			dbms_output.put_line('Inner Inner Variable num6: ' || num6);
		end;
	end;
end;
/
