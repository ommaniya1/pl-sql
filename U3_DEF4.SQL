--display salary of the employee whose age is 50 otherwise display appropriate msg.
set serveroutput on
declare
	sal number(10); 
begin
select salary into sal from emp where age=50;
dbms_output.put_line('SALARY IS :'||sal);

	EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('ENTER RECORD FIRST');
end;
/