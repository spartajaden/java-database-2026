-- 날짜출력
SELECT sysdate AS NOW
     , sysdate-1 AS "내일-날짜"
     , sysdate+1 AS tomorrow
  FROM dual;

-- 달을 증가시키는 함수
SELECT sysdate AS "Current"
     , ADD_MONTHS(sysdate, -1) AS "3monthlater"
  FROM dual;

-- 입사 10주년이 되는 사원 조회
SELECT EMP_ID, EMP_NAME, HIRE_DATE
     , ADD_MONTHS(HIRE_DATE, 120) AS "anniversal10years"
  FROM EMPLOYEE;

-- 두 날짜간의 개월 수 차이
-- 우리회사 가장 입사 오래된 직원과 가장 최근에 입사한 직원사이 개월수
SELECT MIN(HIRE_DATE), MAX(HIRE_DATE)
     , MONTHS_BETWEEN(MAX(HIRE_DATE),MIN(HIRE_DATE)) AS "Oldestbetweenest"
  FROM EMPLOYEE;

-- 돌아오는 요일, 달의 마지막 날짜 구하기
SELECT sysdate
     , NEXT_DAY(sysdate, '금요일')
     , LAST_DAY(ADD_MONTHS(sysdate, -1))
  FROM dual;   

-- 
SELECT *
FROM nls_session parameters
WHERE PARAMETER = 'NIS_DATE_LANGUAGE';

ALTER SESSION SET NIS_DATE_LANGUAGE = korean; --AMERICAN;

-- sysdate보다 current_date(세션타임)로 현재
SELECT CURRENT_DATE FROM dual;

/* 형변환 */
SELECT emp_id, EMP_NAME, emp_id + '500' -- 자동형변환
  FROM EMPLOYEE;

SELECT 'EMP' + emp_id, emp_name
  FROM EMPLOYEE;

-- TO_CHAR() 날짜, 숫자 데이터를 문자 데이터 반환
SELECT TO_CHAR(CURRENT_DATE, 'YYYY/MM/DD HH24:MI:SS') AS "현재일시"
  FROM dual;

SELECT TO_CHAR(SALARY, '$999,999') AS "saL_$"
     , TO_CHAR(SALARY, 'L999,999') AS "saL_L" -- 지역화페단위
     , TO_CHAR(SALARY, '999,999.00') AS "SAL_1"
  FROM EMPLOYEE;


-- TO_NUMBER() 문자데이터를 숫자 데이터로
SELECT 1300 + '1500'
  FROM dual;

SELECT '1300' + '1,500' -- 1000단위 쉼표가 포함된 문자열은 자동 형반환x
  FROM dual;

-- 1000단위 쉼표가 포함된 문자 데이터면 숫자포맷을 사용, 숫자로 형변환해줘야
SELECT TO_NUMBER('1300', '999,999') + TO_NUMBER('1,500','999,999') -- 1000단위 쉼표가 포함된 문자열은 자동 형반환x
  FROM dual;

-- TO_DATE() 문자형식으로된 날짜데이터를 날짜형으로 변경
SELECT TO_DATE('2026-03-03') AS todate1
	 , TO_DATE('2026-03-03', 'YYYY/MM/DD') AS todate2
	 , TO_char(TO_DATE('2026-03-03', 'YYYY/MM/DD'), 'YYYY-MM-DD') AS todate3
  FROM dual;


