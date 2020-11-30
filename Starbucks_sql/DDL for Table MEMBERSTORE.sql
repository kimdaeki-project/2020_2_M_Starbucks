--------------------------------------------------------
--  DDL for Table MEMBERSTORE
--------------------------------------------------------

  CREATE TABLE "STARBUCKS"."MEMBERSTORE" 
   (	"ID" VARCHAR2(200 BYTE)CONSTRAINT ms_id_fk REFERENCES member(id) on delete CASCADE, 
	"STORECODE" NUMBER, 
	"STORENAME" VARCHAR2(200 BYTE), 
	"ADDR" VARCHAR2(1000 BYTE), 
	"DEFAULTFILE" VARCHAR2(1000 BYTE)
   )  ;
--------------------------------------------------------
--  Constraints for Table MEMBERSTORE
--------------------------------------------------------

  ALTER TABLE "STARBUCKS"."MEMBERSTORE" MODIFY ("ID" NOT NULL ENABLE);

SET DEFINE OFF
insert into memberstore values('customer05', 428, '현대디큐브B2', '서울특별시 구로구 신도림동 360-50', '/upload/store/2018/08/[9624]_20180823165254497.jpg');
insert into memberstore values('customer02', 1544, '건국대', '서울특별시 광진구 화양동 5-45', '/upload/store/2019/10/[3722]_20191001062523_1ih15.jpg');
insert into memberstore values('customer02', 18, '홍대갤러리', '서울특별시 마포구 서교동 343-10번지 정명빌딩', '/upload/store/2020/04/[9493]_20200429092712_pw1iw.jpg');
insert into memberstore values('customer02', 1067, '신촌오거리', '서울특별시 마포구 노고산동 54-1', '/upload/store/2020/02/[3275]_20200201084817_k9pjt.jpg');
insert into memberstore values('customer05', 275, '강남구청역', '서울특별시 강남구 논현동 241-7 웰빙센터 1층', '/upload/store/2020/09/[9319]_20200910081952_3y10i.jpg');
insert into memberstore values('customer05', 743, '천호이마트', '서울특별시 강동구 천호동 455-4 이마트별관', '/upload/store/2020/09/[9932]_20200923070032_atax9.jpg');
insert into memberstore values('customer01', 1120, '미아뉴타운', '서울특별시 강북구 미아동 812-2 행전빌딩', '/upload/store/2016/10/[3333]_20161007090407_3ahci.JPG');
insert into memberstore values('customer06', 549, '까치산역', '서울특별시 강서구 화곡동 343-1번지', '/upload/store/2020/04/[9738]_20200427030812_dxgrs.jpg');
insert into memberstore values('customer06', 731, '발산역', '서울특별시 강서구 등촌동 678-14 그랜드마트', '/upload/store/2015/07/[9920]_20150729182010894.jpg');