--------------------------------------------------------
--  DDL for Table Auth [이메일 인증]
--------------------------------------------------------
-- authStatus : 인증성공여부 (0:실패, 1:성공)
-- 인증성공된 이메일을 String으로 반환시켜서 [회원]테이블에 넣을 예정
-- 인증은 여러번 시도할 수 있기 때문에 이메일 중복가능!

create table auth (
    authNum number CONSTRAINT auth_an_pk PRIMARY KEY,
    email varchar2(200) NOT NULL,
    authKey number(8) NOT NULL,
    sendTime varchar(100) NOT NULL,
    authStatus number(1) NOT NULL
);

-- seq
create SEQUENCE auth_seq
    increment by 1
    start with 50
    nomaxvalue
    nominvalue
    nocycle
    nocache
;




SET DEFINE OFF

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (1, 'test@naver.com', 154535.0, '2020/11/17 15:15:15', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (2, 'employee171601@google.com', 465465.0, '2020/11/18 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (3, 'employee171602@daum.net', 153135.0, '2020/11/01 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (4, 'manager1710@test.com', 154654.0, '2020/11/08 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (5, 'employee171001@naver.com', 564551.0, '2020/11/09 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (6, 'employee171002@kakao.co.kr', 156464.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (7, 'manager433@daum.net', 514564.0, '2020/11/16 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (8, 'employee43301@daum.net', 787837.0, '2020/11/15 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (9, 'employee43302@google.com', 786786.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (10, 'manager430@daum.net', 785164.0, '2020/11/12 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (11, 'employee43001@naver.com', 567891.0, '2020/11/03 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (12, 'employee43002@daum.net', 641023.0, '2020/11/05 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (13, 'manager565@daum.net', 156460.0, '2020/11/15 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (14, 'employee56501@daum.net', 156465.0, '2020/11/13 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (15, 'employee56502@naver.com', 546456.0, '2020/11/11 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (16, 'manager325@test.com', 456465.0, '2020/11/10 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (17, 'employee32501@kakao.co.kr', 156165.0, '2020/11/09 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (18, 'employee32502@naver.com', 468986.0, '2020/11/18 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (19, 'manager316@test.com', 489453.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (20, 'employee31601@google.com', 156550.0, '2020/11/15 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (21, 'employee31602@kakao.co.kr', 546056.0, '2020/11/16 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (22, 'manager338@google.com', 56156.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (23, 'employee33801@logitest.net', 16165.0, '2020/11/20 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (24, 'employee33802@naver.com', 156068.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (25, 'manager300@logitest.net', 16560.0, '2020/11/18 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (26, 'employee30001@kakao.co.kr', 0.0, '2020/11/01 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (27, 'employee30002@facebook.com', 1.0, '2020/11/08 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (28, 'manager497@google.com', 2.0, '2020/11/09 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (29, 'employee49701@daum.net', 3.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (30, 'employee49702@google.com', 4.0, '2020/11/16 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (31, 'manager321@facebook.com', 5.0, '2020/11/15 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (32, 'employee32101@google.com', 6.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (33, 'employee32102@kakao.co.kr', 7.0, '2020/11/12 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (34, 'manager306@test.com', 8.0, '2020/11/03 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (35, 'employee30601@kakao.co.kr', 9.0, '2020/11/05 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (36, 'employee30602@google.com', 10.0, '2020/11/15 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (37, 'manager394@naver.com', 11.0, '2020/11/13 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (38, 'employee39401@facebook.com', 12.0, '2020/11/11 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (39, 'employee39402@google.com', 13.0, '2020/11/10 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (40, 'manager407@facebook.com', 14.0, '2020/11/09 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (41, 'employee40701@daum.net', 15.0, '2020/11/18 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (42, 'employee40702@test.com', 16.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (43, 'customer01@logitest.net', 17.0, '2020/11/15 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (44, 'customer02@google.com', 18.0, '2020/11/16 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (45, 'customer03@google.com', 19.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (46, 'customer04@test.com', 20.0, '2020/11/20 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (47, 'customer05@daum.net', 21.0, '2020/11/18 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (48, 'customer06@kakao.co.kr', 22.0, '2020/11/17 00:00:00', 0);

INSERT INTO AUTH (AUTHNUM, EMAIL, AUTHKEY, SENDTIME, AUTHSTATUS) 
VALUES (49, 'customer07@naver.com', 23.0, '2020/11/17 00:00:00', 0);