declare
	c_id customers.id%type := &Customer_ID;
	c_name customers.name%type;
	c_age customers.age%type;
	c_address customers.address%type;
	c_salary customers.salary%type;
	-- here customers.id%type is data type same as id from customers table
begin
	select name, age, address, salary into c_name, c_age,  c_address, c_salary
	from customers
	where id = c_id;
	
	dbms_output.put_line('***** Result *****');
	dbms_output.put_line('Name is: ' || c_name);
	dbms_output.put_line('Age is: ' || c_age);
	dbms_output.put_line('Address is: ' || c_address);
	dbms_output.put_line('Salary is: ' || c_salary);
end;
/

-- @05_pass_value.sql