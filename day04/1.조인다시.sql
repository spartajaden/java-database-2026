-- 조인 한번더
SELECT d.DEPTNO, d.DNAME, d.LOC 
	 , e.EMPNO, e.ENAME, e.JOB
	 , TO_CHAR(e.HIREDATE, 'yyyy-mm-dd') AS hiredate
	 , e.SAL 
  FROM emp e, dept d
 WHERE d.DEPTNO = e.DEPTNO
 ORDER BY e.empno ASC;

-- 셀프조인
-- e1 상사를 찾는 테이블
-- e2 상사 테이블
SELECT e1.EMPNO, e1.ENAME, e1.MGR
	 , e1.HIREDATE
	 , e2.EMPNO AS mgr_empno
	 , e2.ENAME AS mgr_ename
  FROM EMP e1, emp e2
 WHERE e1.MGR = e2.EMPNO;

-- 외부조인 - 등가조인에 일치하지 않는 데이터도 조회
SELECT e1.EMPNO, e1.ENAME, e1.MGR
	 , e1.HIREDATE
	 , e2.EMPNO AS mgr_empno
	 , e2.ENAME AS mgr_ename
  FROM EMP e1, emp e2
 WHERE e1.MGR = e2.EMPNO (+);

-- 잘못된 조인. e2의 empno를 상사컬럼으로, e1의 mgr를 부하컬럼으로 외부조인
SELECT e1.EMPNO AS mgr_empno, e1.ENAME AS mgr_ename, e1.MGR
	 , e1.HIREDATE
	 , e2.EMPNO AS mgr_empno
	 , e2.ENAME AS mgr_ename
  FROM EMP e1, emp e2
 WHERE e1.MGR (+) = e2.EMPNO;

-- 외부조인 두번째 예제
-- 일반 내부조인
SELECT d.DEPTNO, d.DNAME, d.LOC
     , e.EMPNO, e.ENAME, e.JOB
     , e.HIREDATE, e.SAL 
  FROM DEPT d, EMP e 
 WHERE d.DEPTNO = e.DEPTNO;

-- 왼쪽외부조인
SELECT d.DEPTNO, d.DNAME, d.LOC
     , e.*
  FROM DEPT d, EMP e 
 WHERE d.DEPTNO = e.DEPTNO (+);

-- 오른쪽외부조인
SELECT d.DEPTNO, d.DNAME, d.LOC
     , e.*
  FROM EMP e, dept d 
 WHERE e.DEPTNO (+) = d.DEPTNO;

-- 오른쪽 외부조인
SELECT d.DEPTNO, d.DNAME, d.LOC
     , e.*
  FROM dept d, emp e
 WHERE d.DEPTNO (+) = e.DEPTNO;


-- 왼쪽외부조인
SELECT d.deptno, d.dname, d.loc 
	 , e.*
  FROM dept d, emp e
 WHERE d.deptno = e.deptno (+)
   AND e.empno IS NULL;