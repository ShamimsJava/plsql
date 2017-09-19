create or replace procedure compare(
	empName varchar2,
	pattern varchar2
)is
begin
	if empName like pattern then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
end;
/

execute compare('Shamim', 'S%');
-- exec compare('Shamim', 'S%');

create or replace function sumt(x number, y number)
return number
is
z number;
begin
	z := x+y;
	return z;
end;
/

begin
	dbms_output.put_line('The sum is: '||sumt(50,51));
end;
/