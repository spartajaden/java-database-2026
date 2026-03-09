DECLARE
	v_empno emp.empno%TYPE;
	v_ename emp.ename%TYPE;
BEGIN
	v_empno := 7844;
	prc_inoutparam(v_empno, v_ename);

	dbms_output.put_line('EMPNO = ' || v_empno);
	dbms_output.put_line('Ename = ' || v_ename);
END prc_noparam;