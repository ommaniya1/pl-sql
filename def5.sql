--print celcius fehranhit

set serveroutput on
declare
	celcius number(10):=&celcius;
	fehranhit number(10);
begin
	fehranhit:=(celcius*9/5)+32;
	dbms_output.put_line('f is = '||fehranhit);
end;
/