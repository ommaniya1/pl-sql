--display result of student if that name not found then(n0_data_found)
set serveroutput on
declare 
	name char(10):='&name';
	id number(10);
	res number (6,2);
begin
	select std_name,std_no,result INTO name,id,res from students where std_name=name;
	dbms_output.put_line('student name ='||name);
	dbms_output.put_line('student no ='||id);
	dbms_output.put_line('result ='||res);
			
				exception
		when no_data_found then 
	dbms_output.put_line('id inputted by user is not avilable in student table');
end;
/