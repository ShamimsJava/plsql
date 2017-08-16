declare
	a number;
procedure squareNum(x in out number) is
begin
	x := x*x;
end;
begin
	a := 23;
	squareNum(a);
	dbms_output.put_line(' Square of (23): '||a);
end;
/