-- DDL - CREATE

-- 테이블 생성
CREATE TABLE emp_ddl (
	empno   	NUMBER(4), -- 4자리 정수
	ename   	varchar2(10),
	job			varchar2(9),
	mgr			number(4),
	hiredate	DATE,
	sal			number(7, 2),   -- 7자리중 소수점 2자리
	comm		number(7, 2),
	depno		number(2)
);

ROLLBACK;

-- 테이블삭제
DROP TABLE EMP_DDL;

DROP TABLE EMP_TEMP;