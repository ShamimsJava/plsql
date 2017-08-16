create procedure greetings
as
begin
	dbms_output.put_line('Hello Mr. Shihab');
end;
/

execute greetings;

begin
	greetings;
end;
/
		