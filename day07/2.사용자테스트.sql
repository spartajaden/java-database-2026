-- orclstudy로 실행
CREATE TABLE samletbl (
    st_idx NUMBER(4) PRIMARY KEY,
    content varchar2(200) NOT NULL,
    code    char(8) NOT NULL,
    reg_date DATE DEFAULT sysdate
);

--SELECT * FROM sampletbl;

--
INSERT INTO sampletbl (st_idx, content, code)
VALUES (1, '컨텐즈에요', '00000001');

-- 권한 해제하고 재접속하면 생성 불가
CREATE TABLE samletbl3 (
    st_idx NUMBER(4) PRIMARY KEY,
    content varchar2(200) NOT NULL,
    code    char(8) NOT NULL,
    reg_date DATE DEFAULT sysdate
);
