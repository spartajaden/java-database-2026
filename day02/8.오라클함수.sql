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

-- 문자열 교체
SELECT REPLACE('Oh, Hello Oracle!', 'Hello', 'HELL') AS "변경된문자열"
  FROM dual;

-- 빈공간을 특정문자로 채우기
SELECT LPAD('Matrix', 20, '#'),
	   rpad('Oracle', 20, '@')
  FROM dual;

-- 두 문자열 합치기
SELECT concat('hello ', 'world')
  FROM dual;

-- 공백제거 
SELECT TRIM('     Marvel Universe      ')
     , LTRIM('     Marvel Universe      ')
     , RTRIM('     Marvel Universe      ')
  FROM dual;

SELECT 1 AS "같아요"
  FROM dual
 WHERE 'Hello World' = TRIM('        Hello World     ');

--- 숫자함수
SELECT ROUND(1234.3456)
	  ,ROUND(1234.3456, 3) -- 소수점 세번째자리까지 반올림
	  ,TRUNC(1234.3456, 3)
	  ,CEIL(3.64) -- 소수점 1,2 상관없이 무조건 올리기
	  ,Floor(3.14)
	  ,mod(10, 2)
  FROM dual;
	  