--function 1
create or replace function
square(num IN number,result out number;)
return number
AS
begin
	result:=num*num;
	return result;
end;
/