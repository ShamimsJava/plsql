set serveroutput on;

declare
	i := 2;
	loop
		j := 2;
		loop
			exit when ((mod(i,j) = 0) or j= i);