create or replace procedure findMin(x number, y number)
is
begin
	if (x<y) then
		dbms_output.put_line('The minimum number is: '||x);
	else
		dbms_output.put_line('The minimum number is: '||y);
	end if;
end;
/

exec findMin(10,15);

create or replace function findMax(x number, y number)
return number
is
z number;
begin
	if (x<y) then
		z := y;
	else
		z := x;
	end if;
	return z;
end;
/

begin
	dbms_output.put_line('The maximum value is: '||findMax(10,12));
end;
/

