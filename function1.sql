create or replace function totalCustomers
return number is
	total number(2) := 0;
begin
	select count(*) into total
	from customers;
	return total;
end;
/

declare
	c number(2);
begin
	c := totalCustomers();
	dbms_output.put_line('Total customers are: '||c);
end;
/