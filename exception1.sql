declare
	c_id customers.id%type := 8;
	c_name customers.name%type;
	c_sal customers.salary%type;
begin
	select name, salary into c_name, c_sal
	from customers
	where id = c_id;

	dbms_output.put_line('Name: '||c_name);
	dbms_output.put_line('Salary: '||c_sal);
exception
	when no_data_found then
		dbms_output.put_line('No such customer!');
	when others then
		dbms_output.put_line('Error!');
end;
/
