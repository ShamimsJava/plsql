declare
	a number;
	b number;
	c number;

procedure findMin(x in number, y in number, z out number) is
begin
	if x<y then
		z := x;
	else
		z := y;
	end if;
end;

begin
	a := 23;
	b := 45;
	findMin(a,b,c);
	dbms_output.put_line(' Minimum of(23, 45): '||c);
end;
/
		