-- DDL - CREATE
CREATE TABLE dept_ddl (
    deptno  NUMBER(2),
    dname   Varchar2(14),
    loc     Varchar2(13)
);

-- DROP
DROP TABLE DEPT_ddl;

-- DDL용 테이블 복사
CREATE TABLE emp_alter
    AS SELECT * FROM emp;

SELECT * FROM emp_alter;

-- ALTER - 테이블 변경(컬럼명 변경, 컬럼 추가, 컬럼 삭제 ...)
ALTER TABLE EMP_ALTER 
  ADD PHONE varchar2(20);

-- ALTER 여러 컬럼 추가
ALTER TABLE EMP_ALTER
  ADD ( 
      FAX varchar2(20),
      email varchar2(100),
      address varchar2(200)
);      

-- ALTER 컬럼(열)이름 변경
ALTER TABLE EMP_ALTER 
  RENAME COLUMN PHONE TO TEL;

-- ALTER 컬럼(열) 자료형 변경
ALTER TABLE EMP_ALTER
  MODIFY empno NUMBER(8);

-- ALTER 특정칼럼 삭제
ALTER TABLE EMP_ALTER 
 DROP COLUMN fax;

-- 여러컬럼 삭제시는 COLUMN 키워드 대신 소괄호사용 
ALTER TABLE EMP_ALTER 
 DROP (
    email, address
);    

-- RENAME 객체이름 변경 
RENAME emp_alter TO emp_rename;

-- TRUNCATE 객체중 테이블 데이터 초기화(완전삭제)
-- COMMIT, ROLLBACK 안됨(트랜잭션 불가)
SELECT * FROM EMP_RENAME;

TRUNCATE TABLE emp_rename;