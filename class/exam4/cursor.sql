declare
	c_id employees.eid%type;
	c_name employees.ename%type;
	c_salary employees.salary%type;
	c_trows number;
	
	cursor c_employees
	is
	select eid, ename, salary
	from employees;
	
begin
	open c_employees;
	loop
		fetch c_employees
		into
		c_id, c_name, c_salary;
		dbms_output.put_line(c_id||' '||c_name||' '||c_salary);
		exit when c_employees%notfound;
	end loop;
	c_trows := c_employees%rowcount;
	dbms_output.put_line('Total row is: '||c_trows);
	close c_employees;
end;
/