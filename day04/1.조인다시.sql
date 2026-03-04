-- 조인 한번더
SELECT d.DEPTNO, d.DNAME, d.LOC 
	 , e.EMPNO, e.ENAME, e.JOB
	 , TO_CHAR(e.HIREDATE, 'yyyy-mm-dd') AS hiredate
	 , e.SAL 
  FROM dept d, emp e
 WHERE d.DEPTNO = e.DEPTNO;

