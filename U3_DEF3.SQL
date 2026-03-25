--display employee salary by employee name using exception no_data_found
set serveroutput on
declare 
	nam char(10):='&nam';
	rno number(10);
begin
	select name,room_no into nam,rno from room where name=nam;
	dbms_output.put_line('NAME:'||nam);
	dbms_output.put_line('ROOM NO:'||rno);

	EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('ADD RECORD INTO THE TABLE');
end;
/
