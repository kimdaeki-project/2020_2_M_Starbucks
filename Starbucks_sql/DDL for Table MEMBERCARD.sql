--------------------------------------------------------
--  DDL for Table MEMBERCARD
--------------------------------------------------------

  CREATE TABLE "STARBUCKS"."MEMBERCARD" 
   (	"NUM" NUMBER CONSTRAINT MC_NUM_PK PRIMARY KEY, 
	"ID" VARCHAR2(200 BYTE)CONSTRAINT mb_id_fk REFERENCES member(id) on delete CASCADE, 
	"MENUCODE" VARCHAR2(100 BYTE)CONSTRAINT menu_mc_fk REFERENCES menu(menuCode) on delete set NULL, 
	"CARDNUM" NUMBER null UNIQUE, 
	"ECARDNUM" NUMBER null UNIQUE, 
	"KORNAME" VARCHAR2(200 BYTE), 
	"MENUIMAGE" VARCHAR2(500 BYTE), 
	"BALANCE" NUMBER, 
	"MEMBERNUM" NUMBER
   ) ;
------------------SEQ
create sequence card_seq increment by 1 start with 1 maxvalue 99999999999999999 minvalue 1 NOCACHE  NOORDER  NOCYCLE;


SET DEFINE OFF;
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (23,'jy1234','C3007',29192274,null,'2018 크리스마스 트리 카드 ','https://image.istarbucks.co.kr/cardImg/20181022/003489_WEB.png',21000,62);
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (24,'jy555','C3007',1088008,null,'2018 크리스마스 트리 카드 ','https://image.istarbucks.co.kr/cardImg/20181022/003489_WEB.png',21000,65);
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (15,'customer02','C2449',45365434,null,'제주 시티 카드','https://image.istarbucks.co.kr/cardImg/20180223/002891_WEB.png',0,null);
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (16,'customer01','C2209',353253246,null,'어글리 스웨터 카드_스키','https://image.istarbucks.co.kr/cardImg/20171117/002611_WEB.png',1000,null);
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (17,'customer05','C4947',11111122222,null,'마이 스타벅스 리워드 8주년 카드','https://image.istarbucks.co.kr/cardImg/20190830/006229_WEB.png',5000,null);
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (19,'customer05','C194',null,3453545,'Birthday Celebration','https://image.istarbucks.co.kr/cardImg/20190430/005336_WEB.png',6000,null);
Insert into STARBUCKS.MEMBERCARD (NUM,ID,MENUCODE,CARDNUM,ECARDNUM,KORNAME,MENUIMAGE,BALANCE,MEMBERNUM) values (21,'customer06','C2607',6576787,null,'Paul&Joe 카드','https://image.istarbucks.co.kr/cardImg/20180419/003049_WEB.png',600,null);
