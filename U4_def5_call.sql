set serveroutput on
declare
	current_bal number;
begin
	current_bal:=get_bal(101);

dbms_output.put_line('Current balance is:'||current_bal);
end;
/