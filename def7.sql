--calculate result 
set serveroutput on
declare
	xrlno number(6):=&xrlno;
	xm1 number(6);
	xm2 number(6);
	xm3 number(6);
	xm4 number(6);
	t number(10);
	p number(10);
	
begin
	select m1,m2,m3,m4 into xm1,xm2,xm3,xm4 from mark where rlno=xrlno;
if	 xm1 < 40 or xm2 < 40 or xm3 < 40 or xm4 < 40
then
 	update mark set total=0,per=0,result='FAIL',grade='F' where rlno=xrlno;
else 
	t:=xm1+xm2+xm3+xm4;
	p:=t/4;

	if p>=40 and p<50
	then 
		update mark set total=t,per=p,result='PASS',grade='D' where rlno=xrlno;

	elsif p>=50 and p<60
	then 
		update mark set total=t,per=p,result='PASS',grade='C' where rlno=xrlno;

	elsif p>=60 and p<70
	then 
		update mark set total=t,per=p,result='PASS',grade='B' where rlno=xrlno;

	elsif p>=70 and p<80
	then 
		update mark set total=t,per=p,result='PASS',grade='A' where rlno=xrlno;

	elsif p>=80 and p<100
	then 
		update mark set total=t,per=p,result='PASS',grade='A+' where rlno=xrlno;
	else
	update mark set total=t,per=0,result='FAIL',grade='F' where rlno=xrlno;
	
end if;
end if;
end;
/