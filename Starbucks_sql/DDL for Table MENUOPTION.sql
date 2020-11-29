---------------------------------------------------------
-- menuOption [메뉴옵션]테이블
---------------------------------------------------------
create table menuOption (
    optIndex varchar2(50) constraint menuOpt_optIdx_pk primary key,
    hotYN varchar2(50),
    delegateSize varchar2(200),
    cupSizeOption varchar2(100), 
    image varchar2(500),
    opt1 varchar2(100),
    opt2 varchar2(100),
    opt3 varchar2(100),
    opt4 varchar2(100),
    opt5 varchar2(100),
    opt6 varchar2(100),
    opt7 varchar2(100),
    opt8 varchar2(100),
    opt9 varchar2(100)
);

SET DEFINE OFF

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT1', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[128198]_20201015091334637.jpg', '에스프레소 샷', '토피 넛 시럽', '우유 종류', '일반 휘핑', '카라멜 드리즐', '토피 넛 토핑', NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT2', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[128401]_20201015091423433.jpg', '에스프레소 샷', '토피 넛 시럽', '우유 종류', '얼음', '일반 휘핑', '카라멜 드리즐', '토피 넛 토핑', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT3', 'Iced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003200]_20201015091608260.jpg', '프라푸치노 로스트', '프라푸치노용 시럽', NULL, '얼음', '자바칩', '일반 휘핑', '카라멜 드리즐', '팝콘 트리', '리드');

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT4', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003212]_20201015090622767.jpg', '에스프레소 샷', '바닐라 시럽', '우유/음료 온도', '릴렉싱 베이스', '로즈마리', '얼음', '일반 휘핑', '카라멜 드리즐', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT5', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003215]_20201015090658801.jpg', '에스프레소 샷', '바닐라 시럽', '릴렉싱 베이스', '로즈마리', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT6', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003203]_20201013140457350.jpg', '에스프레소 샷', '다크초콜릿 소스', '우유/음료 온도', '일반 휘핑', '카라멜 드리즐', '다크초콜릿 토핑', NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT7', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003206]_20201013140555350.jpg', '에스프레소 샷', '다크초콜릿 소스', '우유 종류', '얼음', '일반 휘핑', '카라멜 드리즐', '다크초콜릿 토핑', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT8', 'Iced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003209]_20201013140350116.jpg', '에스프레소 샷', '클래식 시럽', '우유 종류', '얼음', '자바칩', '일반 휘핑', '카라멜 드리즐', '다크초콜릿 토핑', '리드');

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT9', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003224]_20201013140752268.jpg', '에스프레소 샷', '토피 넛 시럽', '우유 종류', '일반 휘핑', '카라멜 드리즐', '토피 넛 토핑', NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT10', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000003227]_20201013140827618.jpg', '에스프레소 샷', '토피 넛 시럽', '우유 종류', '얼음', '일반 휘핑', '카라멜 드리즐', '토피 넛 토핑', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT11', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[110563]_20160428081939384.jpg', '에스프레소 샷', '바닐라 시럽', '물', '기타', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT12', 'HotIced', 'Short / 237ml(8fl oz)@Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[94]_20160428081858309.jpg', '에스프레소 샷', '바닐라 시럽', '물', '기타', '얼음', '일반 휘핑', '카라멜 드리즐', NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT13', 'HotIced', 'Short / 237ml(8fl oz)@Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[41]_20160428082049421.jpg', '에스프레소 샷', '바닐라 시럽', '우유 종류', '일반 휘핑', '카라멜 드리즐', NULL, NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT14', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[110569]_20160428082117603.jpg', '에스프레소 샷', '바닐라 시럽', '우유 종류', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT15', 'Hot', 'Solo@Doppio', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[20]_20160428081720989.jpg', '에스프레소 샷', '바닐라 시럽', '카라멜 드리즐', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT16', 'Iced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000002081]_20190409153910031.jpg', '드립 커피', '돌체 시럽', '바닐라 크림 베이스', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT17', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000000190]_20160905153503726.jpg', '에스프레소 샷', '클래식 시럽', '티', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT18', 'Iced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000000487]_20170405152707685.jpg', '드립 커피', '바닐라 시럽', '바닐라 크림 베이스', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT19', 'Iced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)@Venti / 591ml(20fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000000038]_20170328134832351.jpg', '드립 커피', '바닐라 시럽', '물', '기타', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT20', 'Iced', 'Short / 237ml(8fl oz)@Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000002487]_20190919181354913.jpg', '드립 커피', '바닐라 시럽', '바닐라 크림 베이스', '리드', NULL, NULL, NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT21', 'Iced', 'Short / 237ml(8fl oz)@Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000001275]_20180409150826126.jpg', '드립 커피', '쇼콜라 시럽', '우유 종류', '쇼콜라 토핑', '리드', NULL, NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT22', 'Iced', 'Short / 237ml(8fl oz)@Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000000479]_20170328134511533.jpg', '드립 커피', '리드', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT23', 'Iced', 'Grande / 473ml(16fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000002672]_20200921171223978.jpg', '드립 커피', '돌체 시럽', '바닐라 크림 베이스', '말차샷', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT24', 'Iced', 'Tall / 355ml(12fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000001636]_20180726125511443.jpg', '드립 커피', '바닐라 시럽', '리저브 아이스크림', '일반 휘핑', '카라멜 드리즐', '리드', NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT25', 'Iced', 'Tall / 355ml(12fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000001635]_20180726125607530.jpg', '드립 커피', '바닐라 시럽', '물', '리저브 아이스크림', '얼음', '일반 휘핑', '카라멜 드리즐', '리드', NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT26', 'Iced', 'Tall / 355ml(12fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000001631]_20180726125701488.jpg', '에스프레소 샷', '바닐라 시럽', '리저브 아이스크림', '카라멜 드리즐', NULL, NULL, NULL, NULL, NULL);

INSERT INTO MENUOPTION (OPTINDEX, HOTYN, DELEGATESIZE, CUPSIZEOPTION, IMAGE, OPT1, OPT2, OPT3, OPT4, OPT5, OPT6, OPT7, OPT8, OPT9) 
VALUES ('OPT27', 'HotIced', 'Tall / 355ml(12fl oz)@Grande / 473ml(16fl oz)', '일회용컵@머그컵@개인컵', 'https://image.istarbucks.co.kr/skuImg/[9200000001939]_20181224154736133.jpg', '에스프레소 샷', '바닐라 시럽', '우유 종류', '일반 휘핑', '카라멜 드리즐', NULL, NULL, NULL, NULL);



commit;