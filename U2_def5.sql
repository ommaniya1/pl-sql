--use peramitarised cursor
set serveroutput on
declare
    
    gross_salarry number;
    hra number;
    da number;
    medical number:=500;
    pf number;
    
    cursor p1(dno number) is select salary,gross_salary from emp where deptno=dno;

begin
    
    for i in p1(10)
    loop
    hra :=i.salary*0.15;
    da :=i.salary*0.50;
    pf :=i.salary*0.10;
    gross_salarry:=(i.salary+hra+da+medical)-pf;
    update emp set gross_salary=gross_salarry where deptno=10;                                 
    dbms_output.put_line('Salary:'||i.salary);
    dbms_output.put_line('Gross salary:'||gross_salarry);
    end loop;
end;
/



