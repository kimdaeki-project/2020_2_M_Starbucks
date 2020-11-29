
--------------------------------------------------------
--  DDL for Table Member [회원]
--------------------------------------------------------
-- adminNum > [직원] 모든 컬럼 정보 가져올 때
-- type     > 1:고객, 2:직원(알바), 3:매장별매니저, 4:관리자
-- gender   > 1:남성, 2:여성
-- email    > [인증] 테이블에서 인증이 완료된 이메일을 String으로 반환받아 데이터 넣어주기 (FK 참조안함, 선selectOne작업 필요)

create table member (
    num number CONSTRAINT member_num_pk PRIMARY KEY,
    adminNum number CONSTRAINT member_an_fk REFERENCES memberAdmin(adminNum) ON DELETE CASCADE, 
    type number(1) DEFAULT 1 NOT NULL,
    id varchar2(200) NOT NULL UNIQUE,
    pw varchar2(200) NOT NULL,
    name varchar2(200) NOT NULL,
    birth VARCHAR2(20),
    gender varchar2(3) CONSTRAINT member_gender_chk CHECK (gender in ('남','여')),
    phone varchar2(200) NOT NULL UNIQUE,
    email varchar2(200) NOT NULL UNIQUE,
    nickName varchar2(200),
    grade number(2),
    joinPath varchar2(50),
    regDate date
);

-- seq
create SEQUENCE member_seq
    increment by 1
    start with 50
    nomaxvalue
    nominvalue
    nocycle
    nocache
;

SET DEFINE OFF

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (1, 1, 4, 'admin', 'admin', '관리자', to_date('10/10/1970', 'MM/DD/RRRR'), '여', '010-1234-6789', 'admin@starbucks.com', 'admin', NULL, NULL, to_date('11/01/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (2, 2, 3, 'manager1716', 'manager1716', '매니저1716', to_date('05/15/1991', 'MM/DD/RRRR'), '남', '010-1234-1234', 'test@naver.com', '닉네임1', NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (3, 3, 2, 'employee171601', 'employee171601', '직원171601', to_date('09/07/1990', 'MM/DD/RRRR'), '여', '010-1234-5678', 'employee171601@google.com', NULL, NULL, NULL, to_date('11/18/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (4, 4, 2, 'employee171602', 'employee171602', '직원171602', to_date('01/02/1985', 'MM/DD/RRRR'), '여', '010-1565-5468', 'employee171602@daum.net', NULL, NULL, NULL, to_date('11/01/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (5, 5, 3, 'manager1710', 'manager1710', '매니저1710', to_date('02/08/1990', 'MM/DD/RRRR'), '여', '010-5468-2355', 'manager1710@test.com', '닉네임2', NULL, NULL, to_date('11/08/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (6, 6, 2, 'employee171001', 'employee171001', '직원171001', to_date('05/04/1991', 'MM/DD/RRRR'), '남', '010-1564-1564', 'employee171001@naver.com', NULL, NULL, NULL, to_date('11/09/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (7, 7, 2, 'employee171002', 'employee171002', '직원171602', to_date('10/03/1995', 'MM/DD/RRRR'), '여', '010-7777-7777', 'employee171002@kakao.co.kr', NULL, NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (8, 8, 3, 'manager433', 'manager433', '매니저433', to_date('01/25/1996', 'MM/DD/RRRR'), '남', '010-1111-1111', 'manager433@daum.net', NULL, NULL, NULL, to_date('11/16/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (9, 9, 2, 'employee43301', 'employee43301', '직원43301', to_date('03/21/1996', 'MM/DD/RRRR'), '여', '010-2222-2222', 'employee43301@daum.net', NULL, NULL, NULL, to_date('11/15/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (10, 10, 2, 'employee43302', 'employee43302', '직원43302', to_date('02/15/1996', 'MM/DD/RRRR'), '여', '010-3333-3333', 'employee43302@google.com', '닉넴3', NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (11, 11, 3, 'manager430', 'manager430', '매니저430', to_date('08/15/1993', 'MM/DD/RRRR'), '남', '010-4444-4444', 'manager430@daum.net', NULL, NULL, NULL, to_date('11/12/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (12, 12, 2, 'employee43001', 'employee43001', '직원43001', to_date('07/11/1992', 'MM/DD/RRRR'), '남', '010-5555-5555', 'employee43001@naver.com', NULL, NULL, NULL, to_date('11/03/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (13, 13, 2, 'employee43002', 'employee43002', '직원43302', to_date('08/23/1999', 'MM/DD/RRRR'), '남', '010-6666-6666', 'employee43002@daum.net', NULL, NULL, NULL, to_date('11/05/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (14, 14, 3, 'manager565', 'manager565', '매니저565', to_date('05/04/1991', 'MM/DD/RRRR'), '여', '010-8888-8888', 'manager565@daum.net', '닉넴4', NULL, NULL, to_date('11/15/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (15, 15, 2, 'employee56501', 'employee56501', '직원56501', to_date('10/05/1998', 'MM/DD/RRRR'), '남', '010-9999-9999', 'employee56501@daum.net', '닉넴5', NULL, NULL, to_date('11/13/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (16, 16, 2, 'employee56502', 'employee56502', '직원56502', to_date('08/06/2001', 'MM/DD/RRRR'), '여', '010-0000-0000', 'employee56502@naver.com', NULL, NULL, NULL, to_date('11/11/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (17, 17, 3, 'manager325', 'manager325', '매니저325', to_date('04/04/2000', 'MM/DD/RRRR'), '여', '010-5458-1565', 'manager325@test.com', NULL, NULL, NULL, to_date('11/10/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (18, 18, 2, 'employee32501', 'employee32501', '직원32501', to_date('05/23/1997', 'MM/DD/RRRR'), '남', '010-1534-6488', 'employee32501@kakao.co.kr', '직원닉넴1', NULL, NULL, to_date('11/09/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (19, 19, 2, 'employee32502', 'employee32502', '직원32502', to_date('01/11/1990', 'MM/DD/RRRR'), '남', '010-8898-4958', 'employee32502@naver.com', NULL, NULL, NULL, to_date('11/18/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (20, 20, 3, 'manager316', 'manager316', '매니저316', to_date('06/06/1997', 'MM/DD/RRRR'), '여', '010-1985-5465', 'manager316@test.com', '매니저닉넴1', NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (21, 21, 2, 'employee31601', 'employee31601', '직원31601', to_date('03/14/1998', 'MM/DD/RRRR'), '여', '010-5468-5456', 'employee31601@google.com', NULL, NULL, NULL, to_date('11/15/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (22, 22, 2, 'employee31602', 'employee31602', '직원31602', to_date('12/25/1996', 'MM/DD/RRRR'), '남', '010-4678-8989', 'employee31602@kakao.co.kr', '닉넴6', NULL, NULL, to_date('11/16/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (23, 23, 3, 'manager338', 'manager338', '매니저338', to_date('04/21/1988', 'MM/DD/RRRR'), '여', '010-4564-1673', 'manager338@google.com', NULL, NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (24, 24, 2, 'employee33801', 'employee33801', '직원33801', to_date('06/05/1987', 'MM/DD/RRRR'), '여', '010-4564-0464', 'employee33801@logitest.net', '핫핫핫', NULL, NULL, to_date('11/20/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (25, 25, 2, 'employee33802', 'employee33802', '직원33802', to_date('10/05/1990', 'MM/DD/RRRR'), '남', '010-4644-1564', 'employee33802@naver.com', NULL, NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (26, 26, 3, 'manager300', 'manager300', '매니저300', to_date('01/08/1989', 'MM/DD/RRRR'), '남', '010-4646-8464', 'manager300@logitest.net', '엘지', NULL, NULL, to_date('11/18/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (27, 27, 2, 'employee30001', 'employee30001', '직원30001', to_date('11/17/2002', 'MM/DD/RRRR'), '여', '010-4648-5313', 'employee30001@kakao.co.kr', NULL, NULL, NULL, to_date('11/01/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (28, 28, 2, 'employee30002', 'employee30002', '직원30002', to_date('05/06/2001', 'MM/DD/RRRR'), '여', '010-6767-5468', 'employee30002@facebook.com', '삼성', NULL, NULL, to_date('11/08/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (29, 29, 3, 'manager497', 'manager497', '매니저497', to_date('09/19/1989', 'MM/DD/RRRR'), '여', '010-4534-2343', 'manager497@google.com', '에스케이', NULL, NULL, to_date('11/09/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (30, 30, 2, 'employee49701', 'employee49701', '직원49701', to_date('11/11/1994', 'MM/DD/RRRR'), '여', '010-1534-1388', 'employee49701@daum.net', '케이티', NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (31, 31, 2, 'employee49702', 'employee49702', '직원49702', to_date('12/25/1999', 'MM/DD/RRRR'), '남', '010-5464-4534', 'employee49702@google.com', NULL, NULL, NULL, to_date('11/16/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (32, 32, 3, 'manager321', 'manager321', '매니저321', to_date('08/05/1984', 'MM/DD/RRRR'), '남', '010-5341-4454', 'manager321@facebook.com', '안녕하세요', NULL, NULL, to_date('11/15/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (33, 33, 2, 'employee32101', 'employee32101', '직원32101', to_date('03/18/1994', 'MM/DD/RRRR'), '여', '010-5465-4656', 'employee32101@google.com', NULL, NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (34, 34, 2, 'employee32102', 'employee32102', '직원32102', to_date('08/09/1994', 'MM/DD/RRRR'), '남', '010-6549-5464', 'employee32102@kakao.co.kr', NULL, NULL, NULL, to_date('11/12/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (35, 35, 3, 'manager306', 'manager306', '매니저306', to_date('11/11/1988', 'MM/DD/RRRR'), '여', '010-4565-4654', 'manager306@test.com', '어피치', NULL, NULL, to_date('11/03/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (36, 36, 2, 'employee30601', 'employee30601', '직원30601', to_date('02/14/1994', 'MM/DD/RRRR'), '남', '010-1234-4321', 'employee30601@kakao.co.kr', NULL, NULL, NULL, to_date('11/05/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (37, 37, 2, 'employee30602', 'employee30602', '직원30602', to_date('03/14/1993', 'MM/DD/RRRR'), '남', '010-4546-4650', 'employee30602@google.com', '라이언', NULL, NULL, to_date('11/15/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (38, 38, 3, 'manager394', 'manager394', '매니저394', to_date('09/11/1997', 'MM/DD/RRRR'), '남', '010-0001-0001', 'manager394@naver.com', NULL, NULL, NULL, to_date('11/13/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (39, 39, 2, 'employee39401', 'employee39401', '직원39401', to_date('10/10/1995', 'MM/DD/RRRR'), '여', '010-0002-0020', 'employee39401@facebook.com', '콘', NULL, NULL, to_date('11/11/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (40, 40, 2, 'employee39402', 'employee39402', '직원39402', to_date('11/05/1985', 'MM/DD/RRRR'), '남', '010-4564-5346', 'employee39402@google.com', NULL, NULL, NULL, to_date('11/10/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (41, 41, 3, 'manager407', 'manager407', '매니저407', to_date('05/16/1989', 'MM/DD/RRRR'), '여', '010-5166-5456', 'manager407@facebook.com', NULL, NULL, NULL, to_date('11/09/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (42, 42, 2, 'employee40701', 'employee40701', '직원40701', to_date('05/04/1999', 'MM/DD/RRRR'), '여', '010-2315-1564', 'employee40701@daum.net', '무지', NULL, NULL, to_date('11/18/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (43, 43, 2, 'employee40702', 'employee40702', '직원40702', to_date('05/06/2002', 'MM/DD/RRRR'), '여', '010-5483-5656', 'employee40702@test.com', NULL, NULL, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (44, NULL, 1, 'customer01', 'customer01', '고객01', to_date('05/04/2000', 'MM/DD/RRRR'), '남', '010-4548-1565', 'customer01@logitest.net', '제이지', 1, 'kakao', to_date('11/15/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (45, NULL, 1, 'customer02', 'customer02', '고객02', to_date('09/01/2000', 'MM/DD/RRRR'), '여', '010-1546-1564', 'customer02@google.com', NULL, 2, NULL, to_date('11/16/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (46, NULL, 1, 'customer03', 'customer03', '고객03', to_date('05/06/1984', 'MM/DD/RRRR'), '남', '010-1536-5465', 'customer03@google.com', '프로도', 3, NULL, to_date('11/17/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (47, NULL, 1, 'customer04', 'customer04', '고객04', to_date('10/05/1977', 'MM/DD/RRRR'), '여', '010-5468-1566', 'customer04@test.com', NULL, 1, 'google', to_date('11/20/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (48, NULL, 1, 'customer05', 'customer05', '고객05', to_date('07/08/1993', 'MM/DD/RRRR'), '남', '010-1561-1564', 'customer05@daum.net', '네오', 2, NULL, to_date('11/18/2020', 'MM/DD/RRRR'));

INSERT INTO MEMBER (NUM, ADMINNUM, TYPE, ID, PW, NAME, BIRTH, GENDER, PHONE, EMAIL, NICKNAME, GRADE, JOINPATH, REGDATE) 
VALUES (49, NULL, 1, 'customer06', 'customer06', '고객06', to_date('02/14/1999', 'MM/DD/RRRR'), '여', '010-8968-5686', 'customer06@kakao.co.kr', '튜브', 1, 'naver', to_date('11/17/2020', 'MM/DD/RRRR'));



commit;

