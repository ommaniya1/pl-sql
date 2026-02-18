--simple interest
set serveroutput on
declare
	p number(10):=&p;
	n number(10):=&n;
	r number(10):=&r;
	si number(10);
begin
	si := p*n*r/100;
	dbms_output.put_line('si is = ' ||si);
end;
/