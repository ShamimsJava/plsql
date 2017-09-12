set serveroutput on;

declare
	-- variable declaration, we can change the value of variable
	name varchar2(20) := 'Shamim';
	
	-- constant declaration, we cannot change the value
	g constant number := 9.8;
begin
	dbms_output.put_line(name);
	dbms_output.put_line(g);
	
	name := 'Sarker';
	-- we cannot change the value of constant
	-- g := 3.1416;
	dbms_output.put_line(name);
	dbms_output.put_line(g);
	
	-- we need to know this character literal
	dbms_output.put_line('This is Shamim''s code.');
	-- output is: This is Shamim's code. 
end;
/

-- @06_constant.sql