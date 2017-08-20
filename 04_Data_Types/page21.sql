/*
Md. Shamim Sarker
IDB-BISEW
*/

declare
	subtype name is char(20);
	subtype message is varchar2(100);
	salutation name;
	greetings message;
begin
	salutation := 'Reader ';
	greetings := 'Welcome to the World of PL/SQL';
	dbms_output.put_line('Hello ' || salutation || greetings);
end;
/