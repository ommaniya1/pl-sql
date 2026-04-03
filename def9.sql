set serveroutput on
declare
	
begin
   
    FOR i IN (SELECT eid, ename FROM employee
              WHERE deptname = 'hr' AND gender = 'male')
    LOOP
       
        DBMS_OUTPUT.PUT_LINE('ID:'|| i.eid ||' Name:' || i.ename);
    END LOOP;
END;
/