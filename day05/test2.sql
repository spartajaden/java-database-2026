-- 기본
SELECT * FROM dept;

SELECT * FROM emp;

SELECT * FROM project;

SELECT * FROM emp_project;

SELECT * FROM pay_history;

-- 1번 사원의 이름과 부서 이름을 같이 조회하세요.
-- 두테이블 조인
SELECT e.emp_name, d.dept_name
  FROM EMP e, DEPT d
 WHERE e.DEPT_ID = d.DEPT_ID
 ORDER BY e.HIRE_DATE;

SELECT e.emp_name, d.dept_name
  FROM EMP e
  JOIN dept d
    ON e.DEPT_ID = d.DEPT_ID
 ORDER BY e.HIRE_DATE;

-- 2번 DEV 부서에 속한 사원의 이름과 급여를 조회하시오.
-- emp, dept 조인, DEV 이름의 부서명에 속한...
SELECT e.EMP_NAME, e.SALARY 
  FROM emp e, dept d
 WHERE e.DEPT_ID = d.DEPT_ID
   AND d.DEPT_NAME = 'DEV';

-- 3번, 부서별 사원 수를 조회하시오.
SELECT e.DEPT_ID, count(*) AS "EMP_COUNT"
  FROM EMP e 
 GROUP BY e.DEPT_ID;

-- 4번. 전체 평균 급여보다 높은 급여를 받는 사원을 조회하시오.
SELECT o.EMP_NAME, o.SALARY
  FROM emp o
 WHERE o.SALARY > (SELECT AVG(e.salary)
 					 FROM emp e);

-- 5번. 프로젝트에 참여하는 사원의 이름과 프로젝트 이름을 조회하시오.
-- 3개 테이블 조인
SELECT e.EMP_NAME, p.PROJ_NAME 
  FROM EMP e, EMP_PROJECT ep, project p
 WHERE e.EMP_ID = ep.EMP_ID 
   AND ep.PROJ_ID = p.PROJ_ID 