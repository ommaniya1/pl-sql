--using EXPLICIT cursor,increse salary of employee where department is 20
set serveroutput on
declare
	cursor s1 is  select salary from emp where deptno=20;
	sal emp.salary%type;

begin
	open s1;
	
if s1%isopen then
loop
	fetch s1 into sal;
	exit when s1%notfound;
	update emp set salary=sal+(sal*0.05)where deptno=20;

end loop;
dbms_output.put_line('salary:'||sal);
end if;
close s1;
end;
/