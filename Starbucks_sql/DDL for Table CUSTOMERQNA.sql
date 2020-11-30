--------------------------------------------------------
--  DDL for Table CUSTOMERQNA
--------------------------------------------------------

  CREATE TABLE "STARBUCKS"."CUSTOMERQNA" 
   (	"NUM" NUMBER CONSTRAINT CQ_NUM_PK primary key, 
	"CATEGORY" VARCHAR2(200 BYTE), 
	"ID" VARCHAR2(200 BYTE) CONSTRAINT MEMBER_ID_FK REFERENCES member(id) on DELETE CASCADE,  
	"STORENAME" VARCHAR2(200 BYTE), 
	"VISITDATE" VARCHAR2(200 BYTE), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"STORECODE" NUMBER
   ) ;

create sequence qna_seq increment by 1 start with 1 maxvalue 99999999999999999 minvalue 1 NOCACHE  NOORDER  NOCYCLE;

REM INSERTING into STARBUCKS.CUSTOMERQNA
SET DEFINE OFF;
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (24,'문의','customer02','대구앞산DT','2020-11-05','sdf','adf',null);
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (16,'문의','customer06','아차산','2020-01-01','test','test donotreply',null);
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (20,'문의','customer02','아차산','20/02/23','TEST','dadfdsafd',null);
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (21,'칭찬','customer02','어린이대공원역','2020-11-04','dsfd','fsdfsdfsdfsdf',null);
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (23,'칭찬','customer02','어린이대공원역','2020-11-19','great','afsdfas',null);
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (25,'제안','customer02','건국대','2020-11-05','dfasd','fdadsfdsfsadfdfas ㅇㅇㅁㄴㄻㄴㅇㄹ',null);
Insert into STARBUCKS.CUSTOMERQNA (NUM,CATEGORY,ID,STORENAME,VISITDATE,TITLE,CONTENTS,STORECODE) values (26,'불만','customer02','창원상남사거리','2020-11-04','dsfa','sdfasdfd',null);
