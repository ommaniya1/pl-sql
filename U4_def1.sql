--procedure show message without parameter

create or replace procedure prowelcome
IS 
begin
	dbms_output.put_line('Welcome');
end prowelcome;
/