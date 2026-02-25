set serveroutput on
declare
	xeid number(10):=&xeid;
	xename char(20);
	xbasic number(10);
	xda number(10);
	xhra number(10);
	xmedical number(10):=500;
	xpf number(10);
	xgross number(10);

begin

select ename,basicsal into xename,xbasic from employee where eid=xeid;

xda:=xbasic*0.50;
xhra:=xbasic*0.15;
xpf:=xbasic*0.10;

xgross:=xbasic(xda + xhra + xmedical) - xpf;
dbms_output.put_line('employee name:'||xename);
dbms_output.put_line('basic salary:'||xbasic);
dbms_output.put_line('gross salary:'||xgross);
update employee set gross_salary=xgross where eid=xeid;

commit;
end;
/
