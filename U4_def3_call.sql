set serveroutput on 
declare
idd number(10):=&idd;	
nm char(10);

begin
	get_emp(idd,nm);
end;
/