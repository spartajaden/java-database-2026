-- 문자열 함수
-- 대문자, 소문자, 첫글자만 대문자 변환 함수
SELECT c.cust_name
	 , lower(c.CUST_NAME) AS "고객명"
	 , INITCAP(lower(c.CUST_NAME)) AS "고객명"
     , c.CITY
     , UPPER(c.CITY) AS "도시명"
  FROM CUSTOMER c ;

-- where절에도 사용가능
SELECT *
  FROM CUSTOMER c
 WHERE lower(c.CITY) = 'seoul';

-- 문자열길이
SELECT city, LENGTH(city) AS "글자길이"
  FROM customer;

-- 문자열 추출
SELECT emp_name, substr(emp_name, 4, 1)
  FROM employee
  
-- 문자열에서 찾기
SELECT INSTR('HELLO, ORACLE!', 'L') AS "첫번째l위치"
	 , INSTR('HELLO, ORACLE!', 'L', 5) AS "5번째이후 l위치"
	 , INSTR('HELLO, ORACLE!', 'L', 2, 2) AS "2번째위치 이후 두번째나타나는l위치"
  FROM dual;