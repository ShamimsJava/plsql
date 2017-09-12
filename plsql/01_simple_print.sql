declare
	-- this is single line comment
	-- variable declaration
	message varchar2(20) := 'Hello, Shamim.';
begin
	/*
	* this is multiple line comment
	* PL/SQL executable statement(s)
	*/
	-- printing someting
	dbms_output.put_line(message);
end;
/