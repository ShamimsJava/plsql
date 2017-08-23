/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	i number(1);
	j number(1);
begin
	<<outer_loop>>
	for i in 1 .. 3 loop
		<<inner_loop>>
		for j in 1 .. 3 loop
			dbms_output.put_line('i is: '||i||' and j is: '||j);
		end loop inner_loop;
	end loop outer_loop;
end;
/