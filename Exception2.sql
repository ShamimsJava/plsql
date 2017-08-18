declare
	c_id customers.id%type := &cc_id;
	c_name customers.name%type;
	c_sal customers.salary%type;
	
	ex_ivalid_id exception;
begin
	if c_id <= 0 then
		raise ex_ivalid_id;
	else
		select name, salary into c_name, c_sal
		from customers
		where id = c_id;
		
		dbms_output.put_line('Name: '||c_name);
		dbms_output.put_line('Salary: '||c_sal);
	end if;
exception
	when ex_ivalid_id then
		dbms_output.put_line('ID must be greater than zero!');
	when no_data_found then
		dbms_output.put_line('No such customers!');
	when others then
		dbms_output.put_line('Error!');
end;
/