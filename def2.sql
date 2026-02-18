--square and cube
set serveroutput on
declare
	a number(10):=&a;
	square number(10);
	cube number(10);
begin
	square:=a*a;
	cube:=square*a;
	dbms_output.put_line('square of a is = '||square);
	dbms_output.put_line('cube of a is = '||cube);

end;
/