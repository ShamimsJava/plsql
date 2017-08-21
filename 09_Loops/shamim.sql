/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

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