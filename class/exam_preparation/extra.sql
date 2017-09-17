set serveroutput on;

begin
	for item in(
		select stId, stName, teacherId from student1
	)
	loop
		dbms_output.put_line(
			' student id '||item.stId ||
			' student name '||item.stName||
			' teacher id '||item.teacherId
		);
	end loop;
end;
/
		
