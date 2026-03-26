--emp backup table and then enter recors through cursor generate exception
set serveroutput on

declare
	eid number(10);
	enm char(10);
	dno number(10):=&dno;
	des char(10);
	sal number(10);
	gross number(10);
	

	no_dept_found exception;
	dcount number:=0;
	cursor e1 is select empid,ename,deptno,desig,salary,gross_Salary from emp where deptno=dno;
		
begin

open e1;
loop
fetch e1 into eid,enm,dno,des,sal,gross;
	exit when e1%notfound;
	dcount:=dcount+1;
	insert into emp_backup values(eid,enm,dno,des,sal,gross);

end loop;
close e1;
	if dcount=0 then
		raise no_dept_found;
	else
		dbms_output.put_line(dcount||'inserted');
		commit;
	end if;
exception
	when no_dept_found then
	dbms_output.put_line('no department found');

		
end;
/