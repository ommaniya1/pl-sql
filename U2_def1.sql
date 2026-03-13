set serveroutput on
declare
	n number;
begin
	update emp 
	   set salary=salary+(salary*0.10) where deptno=10;
	if sql%found then
	   dbms_output.put_line('row affected='||sql%rowcount);
	else
		dbms_output.put_line('row not affected='||sql%rowcount);
	end if;
end;
/