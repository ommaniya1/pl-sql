--convert feet into inch cm and meter

set serveroutput on
declare
	v_feet number(10):=&v_feet;
	v_cm number(10);
	v_inch number(10);
	v_meter number(10);
	
begin
	v_inch:=v_feet*12;
	v_cm:=v_feet*30.48;
	v_meter:=v_feet*0.3048;

	dbms_output.put_line('feet is = '||v_feet);
	dbms_output.put_line('inch of feet is = '||v_inch);
	dbms_output.put_line('cm of feet is = '||v_cm);
	dbms_output.put_line('meter of feet is = '||v_meter);
end;
/