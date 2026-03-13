--cursor for loop
set serveroutput on
declare
	cursor i1 is select ename,salary from (select ename,salary from emp order by salary desc)where rownum<=3;
begin
	for i in i1
	loop
	dbms_output.put_line('name:'||i.ename||'salary:'||i.salary);
	end loop;
end;
/