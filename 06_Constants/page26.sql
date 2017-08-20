/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

declare
	pi constant number := 3.1416;
	radius number(5,2) := 9.5;
	dia number(5,2);
	circumference number(7,2);
	area number(10,2);
begin
	dia := radius * 2;
	circumference := 2 * pi * radius;
	area := pi * (radius ** 2);
	
	dbms_output.put_line('Radius is: '|| radius);
	dbms_output.put_line('Diameter is: '|| dia);
	dbms_output.put_line('Circumference is: '|| circumference);
	dbms_output.put_line('Area is: '|| area);
end;
/