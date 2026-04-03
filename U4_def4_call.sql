set serveroutput on
declare
	a number(10):=&a;
	ans number(10);

begin
	ans:=square(a);
	dbms_output.put_line('the square of '||a||'is'||ans);
end;
/