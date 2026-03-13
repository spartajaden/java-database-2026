-- DML 계속
SELECT *
  FROM EMP_TEMP;

-- INSERT
INSERT INTO EMP_TEMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (9999, '홍길동', 'PRESIDENT', NULL, '2001-01-01', 5000, 1000, 10);

-- 날짜포맷이 다르면 날짜함수로 변경해주면 됨
INSERT INTO EMP_TEMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (9998, '홍길순', 'CFO', 9999, TO_DATE('02/01/2001', 'MM/DD/YYYY'), 5000, 1000, 10);


-- SELECT 쿼리를 사용해서 INSERT하는 방법
-- 실무에서 정말 많이 써요.
INSERT INTO EMP_TEMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno
  FROM EMP e, SALGRADE s
 WHERE e.SAL BETWEEN s.LOSAL AND s.HISAL 
   AND s.GRADE = 1;