create or replace function findMax(x number, y number)
return number
is
z number;
begin
	if(x>y) then
		z := x;
	else
		z := y;
	end if;
	return z;
end;
/

begin
	dbms_output.put_line('The maximum value is: '|| findMax(50,60));
end;
/

create or replace function fact(x number)
return number
is
f number;
begin
	if (x = 0) then
		f := 1;
	else
		f := x * fact(x-1);
	end if;
	return f;
end;
/


begin
	dbms_output.put_line('The factorial is: '|| fact(5));
end;
/