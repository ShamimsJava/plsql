declare
	f number := 1;
	n number := 5;
begin
	loop
		f := f*n;
		n := n-1;
		exit when(n=1);
	end loop;
	dbms_output.put_line(f);
end;
/