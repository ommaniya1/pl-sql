set serveroutput on
DECLARE
	A number(10):=&A;
	B number(10):=&B;
BEGIN
	incre_sal(A,B);
END;
/