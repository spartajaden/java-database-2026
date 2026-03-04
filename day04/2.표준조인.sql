-- JOIN
SELECT d.deptno, d.dname, d.LOC
     , e.empno, e.ename, e.job
     , e.hiredate, e.sal
  FROM DEPT d JOIN emp e
    ON d.DEPTNO = e.DEPTNO;

-- INNER JOIN
SELECT d.deptno, d.dname, d.LOC
     , e.empno, e.ename, e.job
     , e.hiredate, e.sal
  FROM DEPT d INNER JOIN emp e
    ON d.DEPTNO = e.DEPTNO
 WHERE d.DEPTNO = 30;

-- OUTER JOIN
SELECT d.deptno, d.dname, d.LOC
     , e.empno, e.ename, e.job
     , e.hiredate, e.sal
  FROM DEPT d LEFT OUTER JOIN emp e
    ON d.DEPTNO = e.DEPTNO;


SELECT d.deptno, d.dname, d.LOC
     , e.empno, e.ename, e.job
     , e.hiredate, e.sal
  FROM DEPT d right OUTER JOIN emp e
    ON d.DEPTNO = e.DEPTNO;

-- 세 테이블 조인 쿼리
SELECT d.DEPTNO
	 , d.DNAME
	 , e.EMPNO
	 , e.ENAME
	 , e.JOB
	 , e.SAL
	 , s.grade
  FROM EMP e
 INNER JOIN DEPT d 
    ON e.DEPTNO = d.DEPTNO  
  JOIN SALGRADE s 
    ON e.SAL BETWEEN s.LOSAL AND s.HISAL
 ORDER BY d.deptno, e.empno;

-- 오라클 쿼리로
SELECT d.DEPTNO
	 , d.DNAME
	 , e.EMPNO
	 , e.ENAME
	 , e.JOB
	 , e.SAL
	 , s.grade
  FROM EMP e, dept d, salgrade s
 WHERE e.DEPTNO = d.DEPTNO
   and e.SAL BETWEEN s.LOSAL AND s.hisal
 ORDER BY d.DEPTNO, e.empno;