--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "STARBUCKS"."PAY" 
   (	"PAYNUM" NUMBER constraint pay_pn_pk primary key, 
	"ORDERNUM" NUMBER constraint pay_on_fk references menuOrder(orderNum), 
	"PG" VARCHAR2(100 BYTE), 
	"PAY_METHOD" VARCHAR2(100 BYTE), 
	"MERCHANT_UID" VARCHAR2(500 BYTE), 
	"AMOUNT" NUMBER, 
	"CURRENCY" VARCHAR2(100 BYTE) DEFAULT 'KRW', 
	"M_REDIRECT_URL" VARCHAR2(500 BYTE), 
	"BUYER_TEL" VARCHAR2(200 BYTE), 
	"PAY_AMOUNT" NUMBER, 
	"PAY_STATUS" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(400 BYTE) DEFAULT ''
   ) ;
--------------------------------------------------------
-- seq
--------------------------------------------------------
create sequence pay_seq
start with 15
increment by 1
nomaxvalue
nominvalue
nocycle
nocache
;

--------------insert
SET DEFINE OFF

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (1, 1, 'kakao', 'card', 'OP1', 6800, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 6800, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (2, 2, 'kakao', 'card', 'OP2', 33000, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 33000, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (3, 3, 'kakao', 'card', 'OP3', 6300, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 6300, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (4, 4, 'kakao', 'card', 'OP4', 41000, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 41000, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (5, 5, 'kakao', 'card', 'OP5', 10000, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 10000, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (6, 6, 'kakao', 'card', 'OP6', 30000, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 30000, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (7, 7, 'kakao', 'card', 'OP7', 5900, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 5900, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (8, 8, 'kakao', 'card', 'OP8', 5800, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 5800, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (9, 9, 'kakao', 'card', 'OP9', 13000, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 13000, 'paid');

INSERT INTO PAY (PAYNUM, ORDERNUM, PG, PAY_METHOD, MERCHANT_UID, AMOUNT, CURRENCY, M_REDIRECT_URL, BUYER_TEL, PAY_AMOUNT, PAY_STATUS) 
VALUES (10, 10, 'kakao', 'card', 'OP10', 12300, 'KRW', 'https://localhost/sw4/', '010-4308-5927', 12300, 'paid');



commit;