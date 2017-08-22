/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

set serveroutput on;

declare
	i number(3);
	j number(3);
begin
	i := 2;
	loop
		j := 2;
		loop
			exit when ((mod(i,j)=0) or (j=i));
			j := j+1;
		end loop;
		if(j=i) then
			dbms_output.put_line(i||' is prime.');
		end if;
		i := i+1;
		exit when i=50;
	end loop;
end;
/

/*
output
-------
2 is prime.
3 is prime.
5 is prime.
7 is prime.
11 is prime.
13 is prime.
17 is prime.
19 is prime.
23 is prime.
29 is prime.
31 is prime.
37 is prime.
41 is prime.
43 is prime.
47 is prime.
*/