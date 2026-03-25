--program to demonstrate the use of zero divide named exception
set serveroutput on
declare
		no1 number:=&no1;
		no2 number:=&no2;
		ans number;
begin
		dbms_output.put_line('entered no1=' || no1);
		dbms_output.put_line('entered no2=' || no2);
		ans:=no1/no2;
		dbms_output.put_line('no1 * no2 =' || ans);

			EXCEPTION
				WHEN ZERO_DIVIDE THEN
					dbms_output.put_line('You cant divide number by zero');
					dbms_output.put_line('Enter no2s value >0');

end;
/