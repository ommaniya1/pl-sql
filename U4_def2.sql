--procedure 2

create or replace procedure
incre_sal 
(
	dept IN number,
	percent IN number
)
AS
begin
	update emp set salary=salary+(salary*percent/100)
	where deptno=dept;

	dbms_output.put_line(SQL%ROWCOUNT || ' employees received a raise');
	commit;
end;
/