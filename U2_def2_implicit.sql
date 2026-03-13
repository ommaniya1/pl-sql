--perform program using implicit cursor,isopen,notfound to increse salary of employees whose department number is 20

set serveroutput on
declare
	
begin
	update emp set salary=salary+(salary*0.05) where deptno=20;
	if SQl%isopen then
	loop
	
	dbms_output.put_line('Records updated:'||SQL%rowcount);
	exit when SQL%notfound;
	end loop;
	end if;
	
end;
/