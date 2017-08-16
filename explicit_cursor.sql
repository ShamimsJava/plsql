declare
	c_id customers.id%type;
	c_name customers.name%type;
	c_salary customers.salary%type;
	cursor c_customers is
		select id, name, salary from customers;
begin
	open c_customers;
	loop
		fetch c_customers into c_id, c_name, c_salary;
		dbms_output.put_line(c_id||' '||c_name||' '||c_salary);
		exit when c_customers%notfound;
	end loop;
	close c_customers;
end;
/