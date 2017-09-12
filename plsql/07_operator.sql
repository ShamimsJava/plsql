set serveroutput on;

declare
	x number(3) := 10;
	y number(3) := 5;
	z number(3);
	a boolean := true;
	b boolean := false;
begin
	dbms_output.put_line('***Arithmetic Operator***');
	
	dbms_output.put_line('x+y --> '||(x+y));
	dbms_output.put_line('x-y --> '||(x-y));
	dbms_output.put_line('x*y --> '||(x*y));
	dbms_output.put_line('x/y --> '||(x/y));
	dbms_output.put_line('x**y --> '||(x**y));
	
	dbms_output.put_line('***Relational Operator***');
	
	if(x=y) then
		dbms_output.put_line('x and y is equal');
	else
		dbms_output.put_line('x and y is not equal');
	end if;
	dbms_output.put_line('!=, <>, ~=, ^=, >, <, >=, <= are also relational operator');
	
	dbms_output.put_line('***Comparision Operator***');
	
	dbms_output.put_line('Comparison like operator');
	if 'Zara Ali' like ('Z%A_i') then 
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
	
	dbms_output.put_line('Comparison between operator');
	if (25 between 26 and 30) then 
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
	
	dbms_output.put_line('Comparison in operator');
	if (25 in (23,24,25,26)) then
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
	
	dbms_output.put_line('Comparison is null operator');
	if (z is null) then 
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
	
	dbms_output.put_line('***Logical Operator***');
	
	if(a and b) then 
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
	
	if(a or b) then 
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
	
	if(not b) then 
		dbms_output.put_line('True');
	else 
		dbms_output.put_line('False');
	end if;
end;
/