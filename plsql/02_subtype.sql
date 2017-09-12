declare
	-- creating subtype
	subtype name is char(20);
	subtype message is varchar2(100);
	
	-- variable declaration
	salutation name;
	greetings message;

begin
	-- variable defination / assignation
	salutation := ' Reader ';
	greetings := 'Welcome to the world of pl/sql.';
	
	-- printing something. || sign is concatanation
	dbms_output.put_line('Hello' || salutation || greetings);
end;
/

-- @02_subtype.sql