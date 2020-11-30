--------------------------------------------------------
--  DDL for Table REPLY
--------------------------------------------------------
create table reply(
    replyNum number constraint RP_NUM_PK primary key,
    noticeNum number constraint RP_NN_FK references staffNotice(noticeNum) on delete cascade not null,
    writer varchar2(200) not null,
    contents varchar2(4000) not null,
    regDate date not null
);
--------------------------------------------------------
--  seq
--------------------------------------------------------
create sequence reply_seq
    start with 14
    increment by 1
    nomaxvalue
    nominvalue
    noCycle
    noCache;
--------------------------------------------------------
--  insert
--------------------------------------------------------
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (7,18,'writer','작성 테스트 2회차',to_timestamp('20/11/16 17:39:14.653235000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (4,18,'reply test','reply contents test',to_timestamp('20/11/16 16:25:19.852094000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (6,18,'writer','test',to_timestamp('20/11/16 17:37:06.673213000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (8,18,'writer','작성 테스트 3회차',to_timestamp('20/11/16 17:42:50.706694000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (9,21,'writer','댓글 작성 테스트 진행합니다.
해당 내용 반영여부 확인합니다.',to_timestamp('20/11/16 19:10:34.085682000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (10,21,'writer','댓글 작성 2차 테스트 진행합니다. 해당 내용 반영여부 확인합니다.',to_timestamp('20/11/16 19:12:32.170166000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (11,21,'writer','댓글 작성시 이전 댓글까지 누적되는 버그 발견하였습니다. 댓글 작성 3차 테스트 진행합니다.',to_timestamp('20/11/16 19:15:39.509274000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (12,21,'writer','댓글 작성 이전 댓글 누적버그 새로고침 후 재 테스트 진행합니다.',to_timestamp('20/11/16 19:16:29.882063000','RR/MM/DD HH24:MI:SSXFF'));
Insert into STARBUCKS.REPLY (REPLYNUM,NOTICENUM,WRITER,CONTENTS,REGDATE) values (13,18,'writer','댓글 테스트 4회차',to_timestamp('20/11/16 19:47:25.205415000','RR/MM/DD HH24:MI:SSXFF'));