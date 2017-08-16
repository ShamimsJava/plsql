declare
	a number;
	b number;
	c number;
function findMax(x in number, y in number)
return number
is
	z number;
begin
	if x > y then
		z := x;
	else
		z := y;
	end if;
	
	return z;
end;

begin
	a := 23;
	b := 45;
	c := findMax(a,b);
	dbms_output.put_line('Maximum of (23,45): '||c);
end;
/