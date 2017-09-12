set serveroutput on;

declare
	c_id customers.id%type := &customer_id;
	c_sal customers.salary%type;
begin
	select salary into c_sal
	from customers
	where id = c_id;
	
	if(c_sal <= 2000) then
		update customers
		set salary = salary + 1000
		where id = c_id;
		dbms_output.put_line('Salary updated');
	end if;
end;
/

-- @09_if2.sql