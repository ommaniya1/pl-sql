--
create or replace procedure
get_emp(id IN number,name out char)
AS
begin
	select ename into name from emp where empid=id;
	dbms_output.put_line('name:'||name);	

exception
	when no_data_found then
		dbms_output.put_line('error:empid'||id||'not found');
end get_emp;
/

	