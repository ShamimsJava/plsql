declare
	-- global variable
	a number := 95;
	b number := 96;
begin
	dbms_output.put_line('Output of a: ' || a);
	dbms_output.put_line('Output of b: ' || b);
	declare
		-- local variable
		c number := 97;
		d number := 99;
	begin
		dbms_output.put_line('Output of c: ' || c);
		dbms_output.put_line('Output of d: ' || d);
		dbms_output.put_line('Output of a: ' || a);
		dbms_output.put_line('Output of b: ' || b);
	end;
	
	declare
		-- local variable
		c number := 197;
		d number := 199;
	begin
		dbms_output.put_line('Output of c: ' || c);
		dbms_output.put_line('Output of d: ' || d);
		dbms_output.put_line('Output of a: ' || a);
		dbms_output.put_line('Output of b: ' || b);
	end;
end;
/