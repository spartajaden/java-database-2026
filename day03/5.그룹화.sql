-- 그룹화
-- 테이블 데이터도 사용어렵고, 쿼리가 복잡해짐
SELECT AVG(salary), 1 FROM EMPLOYEE WHERE DEPT_ID = 1
UNION all
SELECT AVG(salary), 2 FROM EMPLOYEE WHERE DEPT_ID = 2
UNION ALL
SELECT AVG(salary), 3 FROM EMPLOYEE WHERE DEPT_ID = 3
UNION ALL
SELECT AVG(salary), 4 FROM EMPLOYEE WHERE DEPT_ID = 4;


-- 그룹화를 하면 간결
SELECT avg(salary), dept_id
  FROM EMPLOYEE
 GROUP BY DEPT_ID
 ORDER BY DEPT_ID;

-- 다중행 함수를 사용할 때
-- 일반 컬럼을 사용하려면 무조건!
-- group by에 추가해야 함.
SELECT avg(salary), COUNT(SALARY), dept_id
  FROM EMPLOYEE
 GROUP BY dept_id;

-- HAVING절, 다중행의 필터링
SELECT avg(salary), COUNT(SALARY), dept_id
  FROM EMPLOYEE
-- WHERE SALARY <= 8000  -- 일반값 필터링
 GROUP BY dept_id
Having AVG(SALARY) >= 6000 -- 다중행함수 필터링
 ORDER BY dept_id;

-- 그룹화 통계
SELECT dept_id, avg(salary), count(salary)
  FROM EMPLOYEE
 GROUP BY rollup(DEPT_ID);

SELECT NVL(TO_CHAR(DEPT_ID), '--총합--') AS "부서코드" 
	 , avg(salary), count(SALARY)
  FROM employee
 GROUP BY ROLLUP(dept_id)
 ORDER BY dept_id;


