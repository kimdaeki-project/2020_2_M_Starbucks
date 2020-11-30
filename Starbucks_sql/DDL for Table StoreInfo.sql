--------------------------------------------------------
--  DDL for Table StoreInfo [매장정보]
--------------------------------------------------------
-- whcRoad : 휠체어 가능 여부 (가능:WHCROAD, 불가:(공백/null))
-- themeState : 옵션정보 (ex. T09@T11@P20@P07)

create table storeInfo (
    storeCode number,
    themeState varchar2(1000), 
    whcRoad varchar2(20),
    storeNotice varchar2(1000),
    parkInfo varchar2(1000),
    mapDesc varchar2(1000),
    newState varchar2(2) default 'N',
    mon varchar2(50) NOT NULL,
    tue varchar2(50) NOT NULL,
    wed varchar2(50) NOT NULL,
    thu varchar2(50) NOT NULL,
    fri varchar2(50) NOT NULL,
    sat varchar2(50) NOT NULL,
    sun varchar2(50) NOT NULL,
    holi varchar2(50) NOT NULL,
    constraint info_sc_pk primary key(storeCode),
    constraint info_sc_fk foreign key(storeCode) references store(storeCode)
);

SET DEFINE OFF

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1716, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P40', 'WHCROAD', '도심 속 오아시스, 자연이 함께하는 스타벅스 대치삼성프라자점입니다.', '1. 주차가능 2. 주차장위치: 건물 지하 주차장 3.주차가능대수: 20대 이하 4. 주차조건-2시간 무료 (구매고객 한해), 주차장 운영 시간 : 09:00-19:00', '지하철 3호선 학여울역 1번 출구 나온 후 학여울역 교차로 이용하여 600m 이동 (도보 5분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1710, 'T08@T09@T16@T17@T20@T30@T32@T34@T35@P40@P80@P90', 'WHCROAD', '바쁜 도심속 편안함을 느낄 수 있는 편안한 휴식처가 되겠습니다. 스타벅스 최상의 경험을 제공해드리는 코엑스아셈타워점 입니다.', '1. 주차가능 2. 주차장위치 - 코엑스몰 주차장 3. 주차가능대수 - 50대이상 4. 주차조건 - 조건부무료 (코엑스몰 구매금액 합산 5만원 60분,10만원 120분, 15만원 180분(최대3시간)가능 5.주차정산방법 - 파트너 차량번호 등록 후 출차시 결재', '봉은사역(봉은사역) 7번출구 앞 아셈타워 빌딩 1층에 위치한 매장입니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (433, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '가로수길을 한눈에 볼 수 있는 경치 좋은 도산가로수길점에서 편안함을 느껴보세요.', '주차 불가능', '지하철 신사역 1번 출구에서 100m 직진,
가로수길 입구 신호등 앞 위치.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '1000-2030', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (430, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도시적이고 세련된 인테리어와 편리한 교통, 즐거움의 원천인 논현힐탑점에서 최상의 커피를 즐겨보세요!', '1. 주차가능 2. 주차장 위치 - 입점건물 지하1층 3. 주차가능대수 - 15대 4. 주차조건 - 유료(기본1시간 3,000원, 이후 추가 10분당 1,000원) 5. 주차요금정산방법 - 주차장 관리인에게 직접 현금결제', '학동역 3번 출구 방향으로 힐탑 호텔 및 엘리에나 호텔 맞은편
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (565, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T36@P80@P90', 'WHCROAD', '테헤란로의 보석같은 매장, 선릉로점입니다.', '1. 주차 불가능', '지하철 2호선 선릉역 5번출구로 나와 빅토리아 빌딩 우측방향으로 80m지점에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (325, 'T04@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '도심 속 작은 숲 속 쉼터가 그립다면 포스코점으로 오세요. 여러분을 진정한 제3의 공간으로 초대합니다.', '1. 주차 불가능', '삼성역 4번출구 포스코사거리로 직진, 씨티은행 뒷편', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0900-1600', '0930-1600', '0900-1600');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (316, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T36@P80', NULL, '맛있는 커피 ,편안한 공간, 친절한 파트너들이 여러분의 행복과 여유를 찾아드리겠습니다.', '1.주차가능 2.주차위치-입점건물 지하4-6층 3.주차가능대수-250대 이상(장애인 포함) 4.주차조건-구매시 60분 무료(10분 1,000원) 5.주차요금정산-파트너가 영수증 확인 후 등록', '지하철 2호선 선릉역 4번출구 도보 5분거리 (역삼역방향)', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1900', '0900-1800', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (338, '@T05@@T08@T16@T17@T20@T21@T30@T32@T34@T36@P80', NULL, '지루한 일상 속 나를 특별하게 만들어 줄 공간을 찾으신다면, 바로 이곳, 스타벅스 압구정로데오역점에서 고객님을 항상 특별하게 만들어 드리겠습니다.', '1. 주차 불가', '분당선 압구정로데오역 4번출구 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0730-2030', '0800-1930', '0730-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (300, 'T05@T07@T08@T09@T16@T17@T20@T22@T30@T36@P80', 'WHCROAD', '바쁜 일상 속, 소중한 쉼표 같은 스타벅스 역삼역점에서 커피 한 잔의 여유를 즐겨보세요!', '1.주차가능 2.주차위치-입점건물 지하2-6층 3.주차가능대수-150대 이상(장애인 포함) 4.주차조건-만원 이상 구매시 30분 무료(최대 한시간, 10분 1,000원) 5.주차요금정산-파트너가 영수증 확인 후 등록', '지하철 2호선 역삼역 4번출구, 우신빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (497, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '강남역의 새로운 휴식처, 강남비젼타워점에서 아침을 시작하세요.', '1.주차가능 2.주차위치-입점건물 지하1-8층 3.주차가능대수-150대 이상(장애인 포함) 4.주차조건-유료(10분 1,100원) 5.주차요금정산-고객이 직접 정산', '강남비젼타워 1층, 강남역 2번출구 YBM어학원 뒷골목', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (321, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심속의 편안한 휴식공간 뱅뱅사거리점입니다.', '주차불가능', '양재역 3번 출구에서 450m 강남역 방향으로 직진. 도보 10분 거리', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (306, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '따사로운 햇살을 만끽할 수 있는.. 일상에 작은 선물이 되는 곳! 바로 Sunshine 아크로힐스논현점 입니다.', '주차 불가', '지하철 9호선 선정릉역 4번 출구에서 300m직진', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (394, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '가족,친구,연인과 함께 넓고 편안한 공간에서 커피와 Food를 즐기며 새로운 스타벅스 경험해보세요.', '1.주차가능 2. 주차장위치-매장 후면 3. 주차가능대수-10대이상 4. 주차조건-발렛주차( 발렛비 기본 2,000원 주차관리 요원에게 지불) 기본 1시간 무료 이후 추가 10분당 1,000원씩 과금 . 매장 영업시간과 동일 운영 5. 주차요금정산방법-파트너에게 요청', '압구정 로데오 거리 하나은행 골목, 홈플러스 익스프레스 맞은편', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2000', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (407, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '청담공원의 Brand new 스타벅스, 청담공원점입니다.', '1. 주차 불가', '지하철 7호선 청담역 5번출구, 보라티알 빌딩 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (449, 'T04@T05@T08@T09@T16@T17@T20@T21@T30', 'WHCROAD', '차병원 사거리의 Brand New 스타벅스, 차병원사거리점입니다', '주차불가능', '9호선 언주역 4번출구로 나와서 70M 직진', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (471, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', NULL, '한 잔, 한 잔의 커피마다 행운을 함께 담아드리는 역삼럭키점입니다.', '주차 불가', '도곡1동 주민센터 사거리에서 역삼럭키아파트 맞은편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (484, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '일상생활 속 에너지 충전, 도심 속의 편안한 휴식처, 따뜻한 햇살이 가득한 코엑스사거리점입니다.', '1. 주차가능 2. 주차위치 - 건물지하주차장 3. 주차가능대수 - 5대 미만 4. 주차조건 - 조건부무료(스타벅스 이용고객 1시간 무료 도장-파트너 문의) 5. 주차요금정산방법 - 출차시결재', '지하철 9호선 봉은사역 3번출구 44M 직진', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (37, 'T04@T05@T07@T08@@T16@T17@T20@T21@T30@P90', 'WHCROAD', '여유로움과 편안함을 고객님들께 선물 해드겠습니다', '1. 주차가능 2. 주차장위치-건물 지하 3층~7층 3. 주차가능대수: 50대 이상 4. 주차조건-2시간 무료 주차(주차권 지참, 구매 영수증 보유 시, 주차권 도장,스타벅스 카드 충전 제외) 5. 주차요금정산방법-파트너 주차권 도장', '지하철 3호선 수서역 3번 출구 현대벤처빌딩 지하 2층
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (258, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T36@P80@P90', 'WHCROAD', '온화한 미소, 부드러운 커피, 편안함이 있는 스타벅스 선릉역점입니다.', '1. 주차가능 2.주차장위치-건물 뒤 주차타워 3.주차가능대수-5대이하 4.주차조건-조건부무료(영수증지참 30분 무료) 5.주차요금정산방법-파트너에게 요청', '지하철 2호선 선릉역 4번 출구 뒤편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1930', '1000-1800', '0800-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (259, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80', 'WHCROAD', '언제나 한결같은 고객의 미소, 파트너의 미소가 가득한 압구정미소점으로 오세요~', '1.주차가능 2. 주차장위치-입점건물 지하 3~5층 3. 주차가능대수-100대이상 4. 주차조건-조건부 무료(영수 금액 5천원이상시 90분 전산 등록) 5. 주차요금정산방법-파트너에게 요청', '지하철 3호선 압구정역 4번 출구에서 200M 직진', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0730-2000', '0830-2000', '0730-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (266, 'T04@T05@T08@@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '도심속의 활기와 문화생활의 여유로움을 느낄 수 있는 스타벅스 GS타워점에서 즐거운 추억을 만드세요~', '1.주차가능 2.주차위치-입점건물 지하2-5층 3.주차가능대수-1000대 이상(장애인 포함) 4.주차조건-만원 이상 구매시 30분 무료(15분 1,000원) 5.주차요금정산-파트너가 영수증 확인 후 주차권 증정', '지하철 2호선 역삼역 7번 출구, GS타워 건물 지하 1층', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (58, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '매장의 아늑함과 편안함을 느끼실 수 있는 삼성현대힐점!! 분위기 있는 삼성현대힐점에 경험하러 오십시요!!', '1. 주차 불가(건물 내 지정주차로 주차불가)', '지하철 9호선 삼성중앙역 2번출구 80M 직진', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (989, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '도심속 커피 한 잔의 여유를 선정릉역점에서 느껴보세요.', '1. 주차 불가', '지하철 9호선, 분당선 선정릉역(한국과학창의재단) 2번출구에서 도보 약 1분
서울 라마다호텔 건너편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-1900', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (3, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@P80', 'WHCROAD', '편안한 안식처, 우리 모두의 사랑방 같은 휴식처 그곳이 바로 학여울역점 입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수-선착순 5대 4.주차조건- 구매 고객 1시간 주차 가능 ( 스타벅스 카드 충전 제외) 5. 주차요금정산방법-건물주차관리인 통해 정산(구매 영수증 제출)', '지하철 3호선 학여울역 1번 출구 대각선(스타벅스 카드 충전 제외)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (19, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '언제나 향기로운 커피와 함께 바쁜 일상 속 여유로움을 느낄 수 있는 아크플레이스점입니다.', '1.주차가능 2.주차위치-입점건물 지하3-6층 3.주차가능대수-300대 이상(장애인 포함) 4.주차조건-유료(10분 1,000원) 5.주차요금정산-고객이 직접 정산', '지하철 역삼역 3번 출구 10M 직진 왼쪽 첫 번째 건물 2층', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (272, 'T04@T05@T08@T16@T17@T20@T21@T30', NULL, '일상 생활에 여유와 즐거움을 더해 줄 포이점입니다.', '주차 불가', '포이사거리, 삼호물산 건너편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (274, 'T04@T05@T08@@T16@T17@T20@T21@T30@P80', 'WHCROAD', '나만의 여유로움을 만끽할 수 있는 공간, 대치역점', '1. 주차가능 2. 주차장 위치: 건물 지하 2층 3. 주차가능 대수: 20대 이상 4. 주차조건-구매금액 15,000원 이상 90분 주차권 제공(스타벅스 카드 충전 제외) 5. 주차요금정산방법: 파트너에게 요청', '지하철 3호선 대치역 8번 출구', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (275, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80', NULL, '밝은 웃음과 진한 커피향이 넘치는 도심속 휴식처 강남구청역점 입니다.', '1. 주차가능 2. 주차장위치-건물 후면 3. 주차가능대수-5대미만 4. 주차조건-유료(60분당 4,000원/ 매장 이용 시 1,500원 할인 , 기계식 주차장, 평일 오후6시까지만 주차가능, 주말 주차불가)', '지하철 7호선 강남구청역 2번 출구에서 뒤돌아 오른쪽으로 돌면 매장이 보입니다.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (278, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '따사로운 햇살이 가득한 편안한 휴식 공간, 큰길타워점입니다.', '1.주차가능 2.주차위치-입점건물 지하1-7층 3.주차가능대수-100대 이상(장애인 포함) 4.주차조건-구매시 30분 무료(10분 1,000원) 5.주차요금정산-파트너가 영수증 확인 후 등록', '큰길타워빌딩 1층. 지하철 2호선 역삼역 8번 출구로 나와 300M 직진', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0800-1700', '0900-1700', '0800-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (279, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심의 여유와 낭만을 느낄 수 있는 곳 스타벅스 구역삼사거리점입니다.', '1. 주차가능 2. 주차장위치-매장전면 3. 주차가능대수-선착순 4대 가능 5. 주차조건: 구매 고객 2시간 무료 주차 가능 (스타벅스카드 충전 제외)', '지하철 2호선 역삼역 2번 출구 도곡동 방면 도보 7분 첫번째 사거리 오른편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (283, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', NULL, '도심속에서 여유와 편안함을 느껴보세요. 압구정로점이 휴식처가 되어드리겠습니다.', '주차 불가능', '도산공원 뒷편 200m 거리에 위치하고 있습니다.', 'N', '0730-1930', '0730-1930', '0730-1930', '0730-1930', '0730-1930', '0830-1930', '1000-1800', '0830-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (158, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '쇼핑과 문화를 즐길 수 있는 압구정의 편안한 휴식공간 압구정역점입니다.', '주차 불가능', '현대백화점 맞은 편 지하철 3호선 압구정역 5번출구 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (170, 'T04@T05@T08@T16@T17@T20@T30@T35@T36@P80', 'WHCROAD', '테헤란 빌딩 숲속에 작은 쉼터, 선릉세화빌딩점 입니다.', '1. 주차 불가능', '선릉역 1번 출구, 첫번째 골목을 따라 직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0830-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (180, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '언제나 신선하고 향긋한 커피, 삶의 여유와 즐거움을 느낄 수 있는 Fresh - 삼성점! 고객님께 또 다른 행복을 전해드릴거에요.', '1.주차가능 2. 주차장위치- 건물뒤편 3.주차가능대수-10대 4. 주차조건-조건부무료(영수증 지참 30분 무료) 5. 주차요금정산방법-출차시 영수증제시', '삼성역(5번출구)과 선릉역(10번출구) 사이에 위치, 포스코 사거리 포스코센터 바로 건너편 큰 시계가 있는 애플트리타워 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1700', '1030-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (198, 'T03@T04@T05@T08@T09@T16@T17@T20@T26@T29@T30@T33@T36@T40@P40@P80@P90', 'WHCROAD', '탁 트인 유리창으로 햇살이 아름답게 드리우는 SSR마켓도곡R점입니다!', '1. 주차가능 2. 주차장 위치- SSG마켓 지하 주차장 이용 가능 3. 주차장 가능 대수: 10대 이상 4. 주차조건-최초 입점시 30분 무료, 1만 5천원 구매시 1시간/ 2만원 구매시 1시간30분 무료 주차. 최대 1시간 30분 무료 주차 가능.초과시 10분당 2,000원,(스타벅스 카드 충전 제외) 5. 주차요금정산방법-파트너에게 요청', '도곡역 4번 출구 (타워 팰리스 전용출구), 타워팰리스 F동에 위치. 도곡역 타워팰리스 전용출구에서 바로 연결.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (199, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '밝고 활기 넘치는 기술센터점에서 하루의 에너지를 충전하세요!', '1.주차가능 2.주차위치-입점건물 지하2-5층 3.주차가능대수-100대(장애인 포함) 4.주차조건-유료(30분 1,500원) 5.주차요금정산-고객이 직접 정산', '한국기술센터빌딩 1층, 2호선 선릉역 5번 출구 도보 200m 우측', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '1000-1800', '1000-1700', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (200, 'T04@T05@T07@T08@@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '여러분의 편안한 안식처 대치점입니다.', '1. 주차 불가능', '대치동 은마아파트 후문 앞 50m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (251, 'T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@P80', 'WHCROAD', '당신을 위해 약속된 장소, 스타벅스 학동역점 입니다.', '1. 주차가능(발렛주차 불가) 2. 주차장위치- 입점건물지하 3. 주차가능대수 -20대 4. 주차조건- 최초 30분 3천원 기본 과금. 이후 10분당 천원 (주차권 지원 불가)', '지하철 7호선 학동역 8번 출구에서 직진 후 오른쪽
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (607, 'T04@T05@T07@T08@T16@T17@T20@T30@T32@T34@T36@P80@P90', 'WHCROAD', '바쁜 일상 속 친구같은 휴식, 삼성교점과 함께하세요.', '1. 주차 불가', '*2호선 삼성역 1번출구에서 직진 하여 첫번째 골목에서 우측으로 30m
*2호선 삼성역 2번출구에서 글래드강남 호텔 끼고 직진 30m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1800', '0900-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (643, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@T36@P80', 'WHCROAD', '바쁜 일상속에 여유로움과 향기가 있는곳. 삼성도심공항점입니다.', '1.주차 불가능', '삼성역 5번 출구 도심공항터미널 방면 200M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0900-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (667, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, 'JUST LIKE A STAR !! 멋과 여유로움이 가득한 스타벅스 청담점입니다.', '1. 주차 불가', '7호선 청담역 13번 출구에서 도보 10분 (영동대교방면 마사회 건너편)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (630, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@P80', NULL, '강남의 새로운 핫플레이스, 강남대로점', '주차불가능', '지하철 9호선 신논현역 5번출구 강남역 방면으로 200M 직진
지하철 2호선 강남역 11번 출구 논현역 방문으로 450M 직진', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '1000-2000', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (636, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T36@P80@P90', 'WHCROAD', '바쁜 하루의 시작을, 지친 하루의 끝을 ''역삼포스코''와 함께 하세요!', '1.주차가능 2.주차위치-입점건물 지하4-5층 3.주차가능대수-200대 이상(장애인 포함) 4.주차조건-유료(10분 1,000원) 5.주차요금정산-고객이 직접 정산', '*지하철 이용시 : 2호선 역삼역 3번 출구 하차 후 도보 3분
*버스 이용시 : B간선버스 146,341,360,730 버스 승차후 역삼역 포스코P&S타워역에서 하차', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0900-2030', '0900-2030', '0900-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (632, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', NULL, '도심속 바쁜일상에서 벗어나 커피한잔의 여유를 즐겨보세요.', '1.주차가능 2.주차위치-입점건물 지하1층 기계식주차 3.주차가능대수-100대 이상(장애인 포함) 4.주차조건-구매시 30분 무료(10분 1,000원) 5.주차요금정산-출차시 영수증 제시', '한국고등교육재단 1층, 지하철 2호선 역삼역 8번출구 르네상스사거리 방면으로 150M', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (672, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '예술의 거리, 서울의 트랜드를 알수있는 가로수길점 입니다.', '주차 불가능', '신사역 8번 출구, 가로수길에 들어와 현대 고등학교 방향으로 직진, 가로수길 안쪽에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (744, 'T04@T05@T08@T16@T17@T20@T30@T34@P40@P80@P90', 'WHCROAD', '서울 강남구 삼성동 159번지 뉴코엑스몰 103호', '1. 주차가능 2. 주차장위치 - 코엑스몰 주차장 3. 주차가능대수 - 50대이상 4. 주차조건 - 조건부무료 (코엑스몰 구매금액 합산 5만원 60분,10만원 120분, 15만원 180분(최대3시간)가능 5.주차정산방법 - 파트너 차량번호 등록 후 출차시 결재', '①.스타필드 코엑스몰 메가박스와 아쿠아리움 사이
②9호선 봉은사역 7번출구에서 스타필드 코엑스몰 이동시 초입에 위치함.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (752, 'T04@T05@T08@T09@T16@T17@T20@T21@T30', 'WHCROAD', '활기찬 나를 다시 찾을 수 있는 그 곳. 역삼초교사거리점입니다.', '1. 주차불가, 건물 주차장 有 2. 주차장 위치: 건물 뒷편 주차장 3. 주차가능대수- 5대 이하 4. 주차조건- 주차 무료 지원 불가', '강남역 4번 출구에서 국민은행 지나 서울빌딩 사거리에서 좌회전하여 직진 / 도보 8분 552m', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (687, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '일상 생활에 여유와 즐거움을 더해 줄 한티역점입니다.', '1.주차가능 2.주차장 위치- 건물지하2,3층 3.주차가능대수-20~50대 4.주차조건-조건부무료(영수증당 차 1대 60분 무료, 이후 10분당 5백원) 5. 주차요금정산방법 - 파트너에게 요청', '지하철 분당선 한티역 3번 출구에서 직진 100M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2130', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (734, 'T05@@T07@T08@T16@T17@T20@T21@T30@T32@T36@P80@P90', 'WHCROAD', '청담사거리점에서 커피 한 잔의 여유를 느껴보세요.', '1. 주차가능 2. 주차장 위치- 건물 후면지하 3. 주차가능대수-30대미만 4. 주차조건-유료(1시간 3,000원/현금결제만 가능/기계식주차장)', '7호선 청담역 8번 출구에서 약 600M(도보 약 10분) 분당선 압구정 로데오역 3번 출구 약 700M(도보 약 10분)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2000', '0700-1900', '0700-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (815, 'T04@T05@@T07@T08@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '바쁜 일상 속 향긋한 커피 한잔으로 삶의 여유와 즐거움을 느낄수 있는 곳, 서울세관사거리점 스타벅스입니다.', '1. 주차 불가', '지하철 7호선학동역 1번출구에서 300M (도보 5분 소요)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2000', '0700-2000', '0700-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (825, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '편안함과 최고의 커피를 제공해드리는 도곡역점입니다', '건물 주차시 최초 60분 7천원, 이후 10분당1천원(기계식주차장)', '도곡역 2번 출구 100m', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (863, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '신사역의 명소, 모던한 느낌의 세련된 스타벅스 신사역점입니다.', '주차 불가능', '지하철 3호선 신사역 1번출구 뒷편 10M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0900-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (914, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '아늑하고 포근한 도심속의 휴식처, 커피 한 잔의 힐링을 을지병원사거리점에서 느껴보세요.', '주차 불가능', '을지병원사거리 을지병원 뒷편, 7호선 학동역 8번출구로 나와 을지병원 방향 도보 5분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0830-1900', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1038, 'T04@T05@T07@@T20@T21@T30@T36', 'WHCROAD', '빌딩숲 커피 한 잔의 여유를 포스코사거리점에서 느껴보세요.', '1.주차 불가능', '지하철 2호선 삼성역 5번 출구 선릉역 방향 도보10분
서울 종합 예술 실용학교 건물 1층', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0900-1600', '0000-0000', '0900-1600');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1062, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '일상 생활속 편안하고 아늑한 공간을 대치사거점에서 느껴보세요.', '1.주차 불가능', '지하철 2호선 삼성역 3번 출구에서 포르쉐 대치센터까지 7분 도보 후 우회전. 휘문고 방향으로 직진

*버스이용시 
간선버스 : 143,350 휘문중고등학교에서 하차.
지선버스 : 2415,3011,3425 대치사거리에서 하차.', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0730-2000', '0700-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (991, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '바쁜 일상 속 향긋한 커피 한잔으로 삶의 여유와 즐거움을 느낄수 있는 곳, 학동사거리점 스타벅스입니다.', '1. 주차 불가', '압구정로데오역 5번 출구에서 학동사거리 방향으로 500m,
학동사거리 CGV 건너편 위치
', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2000', '0830-2000', '0730-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1129, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '강남우성에서 만나는 스타벅스! 언제든 방문하셔서 즐거운 경험을 해보시길 바랍니다.', '주차불가능', '신분당선 강남역 4번출구로 나오셔서 도보로 8분 정도 거리에 있습니다.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1146, 'T03@T05@T08@T09@T16@T17@T20@T26@T29@T30@T33@T36@T40@T42@P80', 'WHCROAD', '고급화,차별화된 프리미엄 스타벅스 1000호점, 청담스타R점입니다.', '1. 주차가능 2. 주차장위치-매장측면 3. 주차가능대수-18대미만 4. 주차조건-유료(발렛주차 최초1시간 3,000원, 추가 10분당 1,000원, 기계식 주차장)', '압구정로데오역(분당선) 4번 출구에서 도보 5분
한양아파트. 압구정로데오역 정류장에서 도보 8분 
', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1159, 'T05@T07@T08@T16@T17@T20@T22@T30', 'WHCROAD', '가로수길의 제 3의 공간, 신사동의 트렌드를 선도하는 신사가로수점을 소개합니다', '주차 불가능', '신사역 8번 출구, 가로수길에 들어와 현대고 방향으로 메인 가로수길 중간쯤 위치 2,3층 매장 (역에서 약500m)
', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1084, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '압구정동의 제 3의 공간, 바쁜 일상 속의 휴식처를 소개합니다.', '1.주차가능 2. 주차장위치- 매장 후면 지하 1층 3. 주차가능대수-10대 이상. 기계주차 . 4. 주차조건- 1시간 무료 이후 추가 10분당 550원씩 과금. 5. 주차요금정산방법-파트너에게 요청', '압구정역 2번 출구 소망교회 방면 3분거리 

* 버스이용시
147,148,463,4211,6800번 압구정역3번출구역에 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1700, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '길동사거리의 뉴-페이스, 스타벅스 천호대로길동점에서 새로워진 스타벅스를 경험해 보세요.', '1. 주차불가능', '강동역 2번 출구에서 길동사거리 방향으로 400m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1682, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', 'WHCROAD', '기분좋은 커피향으로 일상을 빛내주는 스타벅스 천호사거리점입니다.', '1. 주차불가능', '지하철 5호선 천호역 2번 출구', 'N', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (766, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@P70@P80@P90', 'WHCROAD', '멋진 View와 커피 한잔의 여유를 즐길 수 있는 명일이마트점입니다.', '1. 주차가능 2. 주차장 위치 - 이마트 본관/별관 주차장 3. 주차가능대수 - 20대 이상 4. 주차조건 - 조건부 무료 (구매시 2시간 무료) 5. 주차요금정산방법 - 파트너에게 주차증 요청 후 무인정산기에서 정산 후 출차', '5호선 고덕역 4번 출구에서 300M', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (17, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80@P90', 'WHCROAD', '따뜻한 라떼 한잔의 여유와 포근하고 아늑한 분위기, 친절한 미소가 있는 스타벅스 천호역점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면/후면 3. 주차가능대수 - 30대 이상 4. 주차조건 - 유료 (30분당 2,000원)', '지하철 5호선 천호역 7번 출구', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (776, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '맑고 쾌적한 공기를 담은 편안한 휴식공간 올림픽공원북문점입니다.', '1.주차불가능', '8호선 강동구청역 3번 출구로 나와 강동구청 방향으로 뒤돌아 강동구청 정류소(25-282)에서 3321번 버스이용 ''현대 토파즈아파트'' 정류소 하차.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (677, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '강동의 숨은 오아시스 상일동 스타벅스에서 지친 일상의 휴식을 가져보세요.', '1. 주차가능 2. 주차장 위치 - 건물 지하 3. 주차가능대수 - 10대 이상 4. 주차조건 - 조건부 무료 (구매시 1시간 무료) 5. 주차요금정산방법 - 주문 후 파트너에게 요청시 주차권 제공', '지하철 5호선 상일동역 4번 출구로 나와 바로 앞에서 지선 3321(고덕종합상가) 이용 고덕리엔파크 3단지 정류장 하차, 세종텔레콤 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (789, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '안녕하세요, 따뜻한 햇살과 사람이 머무는 공간, 스타벅스 길동역점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 후면 3. 주차가능대수 - 4대 4. 주차 조건 - 무료', '지하철 5호선 길동역 1번 출구, 굽은다리 방향으로 100M 내외 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (743, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '바쁜 일상 속에서 커피 한 잔의 여유로움을 천호이마트점에서 느껴보세요.', '1. 주차가능 2. 주차장 위치 - 이마트 천호점 주차장 3. 주차가능대수 - 50대 이상 4. 주차조건 - 조건부 무료 (1만원 이상 구매시 1시간 무료, 2만원 이상 구매시 2시간 무료) 5. 주차요금정산방법 - 파트너에게 이마트 주차권 제시 후 구매금액 확인하여 주차도장 날인', '천호역 5번 출구에서 이마트천호점과 현대백화점 사이, 도보 2분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (956, 'T03@T05@T07@T08@T16@T17@T20@@T30@T36@P80@P90', 'WHCROAD', '강동의 랜드마크 스타벅스 천호로데오점에서 고품격 리저브 커피를 경험해보세요~!!', '1. 주차불가능', '지하철 5호선, 8호선 천호역 5번출구 강동역 방면 도보 3분 거리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1046, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '둔촌동의 새로운 사랑방, 따뜻한 커피와 파트너가 함께하는 둔촌동점입니다.', '1.주차가능 (BMW, SUV, 대형차량은 주차불가능) 2.주차장 위치-건물 후면 기계주차 3.주차 가능 대수 - 5대 (만차시 이용불가) 4.주차조건- 조건부 무료 (구매시 60분 무료, 60분 이상 주차 불가) 5. 주차요금정산방법 - 영수증 제시', '지하철 5호선 둔촌동역 3번출구에서 도보 10분', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1102, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '강동의 새로운 휴식처, 강동역점에서 향긋한 커피향과 함께 여유를 즐겨보세요.', '1. 주차가능 2. 주차장위치 - 파밀리에아파트 지하주차장 B1 (업무동 유료주차장) 3. 주차가능대수 - 30대 이상 4. 주차조건 - 유료 (10분 무료, 이후 10분당 1,000원)', '지하철 5호선 강동역 2번 출구 또는 강동헤르셔 출구 이용', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1645, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', 'WHCROAD', '기분좋은 만남, 스타벅스 굽은다리역점 입니다.', '1. 주차가능 2. 주차장 위치 - 건물 후면 3. 주차가능대수 - 5대 4. 주차조건 - 유료 (최초 30분 무료, 10분당 500원) 5. 주차요금정산방법 - 출차시 무인정산기 신용카드 정산 (최초 30분 무료 외 주차 지원 없음)', '5호선 굽은다리역 4번 출구 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1474, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '강동의 첫 Drive Thru 매장, 커피 한잔의 여유와 편안함을 드리는 강동암사DT점 입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 5대 4. 주차조건 - 무료', '지하철 8호선 암사역 1번 출구이용 도보8분( 약 850m)
버스 3411, 3318, 340번 삼성광나루아파트, 암사동유적 정류장 하차 도보 3분이내
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1506, 'T01@T04@T08@T09@T16@T17@T20@T35@T36@P80@P90', 'WHCROAD', '커피 한잔의 여유와 편안함을 드리는 강동구청DT점 입니다.', '1. 주차가능 2. 주차장 위치 - 매장 후면 3. 주차가능대수 - 5대 4. 주차조건 - 무료', '강동구청역(8호선) 2번 출구 이용 도보 3분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1445, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', NULL, '도심속의 쾌적하고 미세먼지 없는 청정매장, 스타벅스 명일역점입니다.', '1. 주차불가능', '지하철 5호선 명일역 2번출구 방향 100m 직진', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (509, 'T04@T05@T07@T08@@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '가족같은 포근함과 즐거움이 교차하는 미아역점입니다.', '1.주차 불가능', '지하철 4호선 미아역 3번 출구 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (254, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36@P80', 'WHCROAD', '도심속 편안함과 즐거운 만남이 있는 곳 수유역점 입니다~*', '1.주차가능 2.주차위치- 건물뒷편 위치 3.주차가능대수-10대이하 주차가능 4.주차조건- 30분당 1,000원 주차비용 발생 5.주차정산방법-건물 주차장관리실 정산문의', '지하철 4호선 수유역 2번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (872, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '번잡한 도심 속... 시간이 멈춘 듯 커피 한잔의 여유를 즐길 수 있는 미아사거리역점 입니다.', '1.주차 불가능', '지하철 4호선 미아사거리역 하차 3번출구 직진 도보 1분
(버스: 09-012 미아 사거리역 하차 후 CGV방향으로 직진 도보 3분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (971, 'T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '활기 넘치는 일상 생활 속, 편안한 휴식공간 스타벅스 강북구청사거리점 입니다.', '1.주차불가능', '지하철 4호선 수유역 8번출구 쌍문역 방면 도보 5분 거리(270m)
', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1120, 'T04@T05@T07@T08@T16@T17@T20@@T21@T30@T36', 'WHCROAD', '미아동의 떠오르는 휴식처, 사랑하는 사람과 함께 커피 한 잔을 즐겨보세요', '1.주차 불가능', '지하철 4호선 미아사거리역 1번 출구 1115번 버스 이용
지하철 4호선 길음역 9번 출구 121번 버스 이용
삼양동 사거리 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (549, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '까치산역 앞 좋은 소식이 생길 것만 같은 매장, 까치산역점입니다.', '1.주차가능 2.주차장 위치- 입점건물 주차타워1~4층 3.주차가능대수-16대 4.주차조건-조건부 무료(영수증 지참 1시간 무료) 5.주차요금정산방법-출차 시 영수증 제시', '까치산역 4번 출구 앞 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0830-2300', '0830-2200', '0830-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (205, 'T02@T04@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑과 함께 즐기는 커피 한잔의 여유! 지금 가양이마트점에서 즐겨보세요.', '1.주차가능 2.주차장 위치- 이마트 주차동 1~6층 3.주차가능대수- 100대 이상 4.주차조건- 조건부 무료(2시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '가양이마트 옆 주차동건물 1층. 지하철 9호선 증미역 2번 출구로 나와서 왼쪽', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0800-2230', '0900-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (731, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '친근한 파트너들과 여유를 가지며 커피를 즐길 수 있는 발산역점입니다.', '1.주차가능 2. 주차장 위치- 웨딩홀주차장 (20시 이후 입차불가/22시이후 출차불가) 3.주차가능대수- 50대 이상 4.주차조건- 조건부 무료(60분 무료) 5.주차요금정산방법- 파트너에게 요청', '지하철 5호선 발산역 3번 출구 전방 100M', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0830-2230', '0830-2230', '0830-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (703, 'T04@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '따뜻한 커피 향기와 편안한 분위기가 있는 스타벅스 염창역점 입니다.', '1.주차가능 2.주차장 위치- 입점건물 지하및 기계식주차장 3.주차가능대수- 4대 4.주차조건- 조건부 무료(60분 무료, 이후 30분당 1천원) 5. 주차요금정산방법 - 출차 시 영수증 제시', '9호선 염창역 1, 2번 출구 사이에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (898, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '서울 서남권의 중심지, 향기로운 커피 한잔의 여유가 있는 스타벅스 등촌점입니다.', '1.주차 불가능', '지하철 5호선 발산역 4번출구로 나와 강서로56길 따라 도보 10분 거리 (700M)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (909, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '화곡동의 새로운 휴식처가 될 화곡동점에서 즐거운 만남과 추억을 만드세요!', '1.주차가능 2.주차장 위치 - 입점건물 지하주차장 3.주차가능대수-50대이상 4.주차조건-조건부 무료(60분 무료) 5.주차요금정산방법- 출차 시 당일 영수증 도장확인', '지하철 5호선 화곡역 6번출구로 나와 도보로 5분 거리 (300m)', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1119, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '쾌적하고 편안한 힐링의 공간, 양천향교역점 입니다.', '1.주차 불가능', '지하철 9호선 양천향교역 7번 출구 직진 126M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0830-2200', '0830-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1114, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '도심 속 편리함을 제공하는 Drive Thru와 편안하고 안락한 Cafe가 있는 화곡DT입니다.', '1.주차가능 2.주차장 위치- 매장전면 3.주차가능대수- 5대 4. 주차조건- 무료(스타벅스 이용 시 사용 가능) 5.주차요금정산방법- 정산없이 출차', '목동역 3번출구 홍익병원 정류장에서 간선버스 602, 650, 654번 / 지선버스 6715, 6623, 6629, 5616번 영도중.강서고입구.기아양서대리점 하차 후 길 건너편에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1196, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '스타벅스 가양역점입니다', '1.주차가능 2.주차장 위치- 입점건물 지하주차장 3.주차가능대수- 50대이상 4.주차조건- 유료(10분당 1천원) 5.주차요금정산방법- 출차시 결제 가능', '가양역 9번출구에서 10m (도보 2분이내)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1217, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '마곡단지 1호점 스타벅스 , 마곡지구의 랜드마크입니다.', '1.주차 불가능', '마곡역 2번 출구로 나와 직진 후 마곡GMG 타워 1층 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0830-2130', '0830-2130', '0830-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1267, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '마곡나루역 스타벅스 , 마곡지구의 랜드마크입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하주차장 3.주차가능대수-50대이상 4.주차조건-조건부 무료(30분 무료, 이후 1시간당 3천원) 5.주차요금정산방법- 출차시 카드결제만 가능', '9호선 마곡나루역 1번 출구로 나와 라마다 엥코르 호텔 건너편 보타닉 파크 타워 1층 매장입니다.', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0900-2230', '0900-2230', '0900-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1311, 'T01@T04@T05@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '차 안에서 간편하게 스타벅스를 주문하실 수 있는 편안함이 있는 매장 스타벅스 방화DT점 입니다', '1.주차가능 2.주차장 위치- 매장 지하주차장 3.주차가능대수-9대 4. 주차조건-무료(스타벅스 이용 시 사용 가능) 5.주차요금정산방법-정산없이 출차', '신방화역 3번출구 에서 강서공업고등학교 방향으로 600M 
장미아파트 맞은편 2층건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1396, 'T03@T05@T08@T16@T17@T20@T21@T26@T29@T30@T33@T36@T40@@P90', NULL, '강서구의 첫번째 리저브 매장으로 차별화된 서비스와 프리미엄 커피를 즐길 수 있는 마곡사이언스타워R점입니다.', '1.주차가능 2.주차장 위치- 입점건물 지하주차장 3.주차가능대수- 50대이상 4.주차조건- 유료(최초 30분당 2천원) 5.주차요금정산방법- 출차시 카드결제만 가능', '지하철 5호선 발산역 1번,9번출구로 나와 도보로 10분거리(약 900M)', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1383, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', 'WHCROAD', '향긋한 커피와 따뜻한 서비스를 제공하는 우장산역의 쉼터', '1.주차가능 2.주차장 위치- 입점건물 지하주차장 3.주차가능대수- 30대이상 4.주차조건- 조건부 무료(60분 무료) 5.주차요금정산방법- 파트너에게 요청', '지하철 5호선 우장산역과 연결된 송화 쇼핑센터 1층
지하철 5호선 우장산역 4번출구 전방 100m 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1625, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P80', NULL, '안녕하세요. 바쁜 일상 속, 커피한 잔의 여유를 즐길 수 있는 스타벅스 마곡역점 입니다.', '1.주차가능 2.주차장 위치- 입점건물 지하주차장 3.주차가능대수- 50대이상 4.주차조건- 조건부 무료(60분 무료, 이후 10분당 500원) 5.주차요금정산방법- 파트너에게 요청', '마곡역 6번출구 도보 1분이내 (10M)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1547, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P80@P90', 'WHCROAD', '아늑하고 포근한 도심속의 휴식처, 커피 한 잔의 힐링을 발산역사거리점에서 느껴보세요.', '1.주차가능 2.주차장 위치- 입점건물 지하주차장 3.주차가능대수- 50대이상 4.주차조건- 유료(10분당 500원) 5.주차요금정산방법- 출차시 카드결제만 가능', '지하철 5호선 발산역 8번출구에서 도보 3분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (468, 'T04@T05@T07@T08@T16@T17@T20@T30@P20@P80', 'WHCROAD', '바쁜 일상에서 나만의 여유를 가질 수 있는 공간. 친근한 파트너와 따뜻한 인테리어가 있는 서울대입구역점입니다.', '주차 불가', '서울대입구역 4번출구 전방 20M
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (30, 'T04@T05@T08@T09@T16@T17@T20@T22@T30@T36@P40@P80@P90', 'WHCROAD', '친절한 파트너의 미소와 향긋한 커피향기 가득한 스타벅스 신림역 포도몰점입니다.', '1.주차가능 2.주차위치-포도몰 지하주차장 3.주차대수-10대이상 4.주차조건-조건부무료(영수증 1만원이상 1시간, 3만원이상 2시간, 5만원이상3시간 무료) 5.주차요금정산방법-파트너에게 요청', '2호선 신림역 1번출구 포도몰 쇼핑몰 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0800-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (24, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '신림사거리의 이야기 창고! 깔끔한 좌석과 커피향과 미소가 넘치는 매장! 특별한 인연이 있는곳 스타벅스 신림점을 소개합니다.', '주차 불가', '지하철 2호선 신림역 6번 출구에서 25M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (649, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T36@P80@P90', 'WHCROAD', '환영합니다. 편안하고 넓은 휴식처, 따뜻한 커피 한 잔. 신림사거리점 스타벅스를 찾아주세요.', '주차 불가', '신림역 8번 출구에서 도보 10m', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0830-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (639, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36', 'WHCROAD', '도심 속에서 여유를 찾을 수 있는 편안한 공간으로 고객님께 최상의 서비스를 제공하겠습니다.', '1.주차가능 2.주차위치-대교타워지하주차장 3.주차대수-10대이상 4.주차조건-유료(60분당 3,000원) 5.주차요금정산방법-출차 시 경비실 정산', '보라매 공원 후문에서 직진하여 약 200M 지점', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0900-2000', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (733, 'T03@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '버스를 기다릴 때, 친구를 만나기 전 사당점에서 커피 한잔 어떠세요?', '주차불가능', '사당역 5번 출구 오른쪽에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1094, 'T01@T04@T05@T07@T08@T16@T17@T20@T30@T32@P80', 'WHCROAD', '도심 속 한 가운데 Drive Thru의 편리함과 커피 한 잔의 여유로움을 느낄 수 있는 낙성대DT점입니다.', '주차 불가', '지하철 2호선 
낙성대역 1번출구 80m 직진

', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1143, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@P20@P80', 'WHCROAD', '쾌적하고 편안한 힐링의 공간, 서울대역점 입니다.', '1.주차가능 2.주차위치-Q타워건물주차장 3.주차대수-10대이상 4.주차조건-유료(20분당 1,000원) 5.주차요금정산방법-출차 시 경비실 정산', '지하철 2호선 서울대입구역 5번 출구 바로 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1292, 'T01@T04@T05@T08@T16@T17@T20@T36', 'WHCROAD', '아늑한 커피하우스와 스타벅스 디지털 경험 및 Drive Thru를 함께 즐기세요.', '주차 불가', '자차이용 시:난곡사거리에서 시흥IC방향으로 600m 위치
대중교통 이용 시:지하철 2호선 신림역에서 버스(5528,5535,651,5530) 이용 후 등불교회 하차 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1500, 'T03@T04@T05@T08@T16@T17@T20@T21@T22@T26@T29@T30@T40@@P20@P80@P90', 'WHCROAD', '리저브 매장의 프리미엄 서비스를 즐길 수 있는 관악서울대입구R점 입니다.', '주차 불가', '서울대입구역 2번 출구로 나와 50m 직진, BS타워 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1546, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@P80@P90', NULL, '도심 속 커피 한 잔의 여유와 특별함을 느낄 수 있는 낙성대역점입니다.', '1.주차가능 2.주차위치-건물 지하주차장 3.주차대수-최대9대 4.주차조건-조건부무료(최초 60분 무료 이후 10분당 1,000원) 5.주차요금정산방법-출차 시 경비실 정산', '낙성대역 4번 출구로 나와 200m 직진, 대원기업빌딩 1~2층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1677, 'T02@T04@T07@T08@T09@T16@T17@T20@T30@T32@T34@T35@P40@P90', 'WHCROAD', '자양이마트점에서 커피향이 가득한 즐거운 감성 공간, 아늑한 휴식과 특별함을 경험해 보세요!', '1.주차가능 2.주차장위치:건대스타시티 건물 지하2층~지하3층 3.주차가능대수:10~20대 4.주차조건:이마트 주차 혜택과 동일(최초30분무료, 이후 15분당 700원, 1만원이상 구매시 1시간 무료/3만원 이상 구매시 2시간 무료) 5. 주차정산방법 : 출차 시 영수증 제시', '서울시 광진구 아차산로 272 이마트 자양점 입구 앞', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (528, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '가족, 연인, 친구들과의 여유롭고 안락한 도심 속 쉼터 건국클래식점입니다.', '1.주차가능 2.주차장위치:건물내 지하주차장 3.주차가능대수:10~20대 4.주차조건:스타벅스 1만원이상 구매시 1시간, 3만원이상 구매시 2시간 무료주차 가능', '지하철 2호선 건대입구역 5번출구 앞 횡단보도를 건너, 롯데백화점 오른편 더클래식500 1층 로비 안쪽', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (517, 'T04@@T07@T08@T16@T17@T20@T21@T30@T32@T36@P90', 'WHCROAD', '가족, 연인, 친구같은 포근하고 여유로운 공간 광장점입니다!', '1.주차불가능', '지하철 5호선 광나루역 4번출구 직진 도보 약10분', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (488, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '따뜻한 커피와 따뜻한 미소, 편안한 공간이 준비되어 있는 구의역점 입니다.', '1.주차가능 2.주차장위치:매장앞 지상주차장 3.주차가능대수:10~20대 4.주차조건:스타벅스 당일 구매 영수증 지참시 1시간 무료, 이후 10분당 1,000원', '2호선 구의역 1번 출구에서 직진하여 도보로 2분거리, 오른편에 위치.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (297, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80', NULL, '아늑하고 포근함을 느낄 수 있는 건대입구점입니다.', '1.주차불가능', '2호선 건대입구역 2번출구로 나오셔서 30m 직진하시면 건물 내 2, 3층에 위치한 스타벅스 건대입구점을 만나실 수 있습니다.', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0900-2200', '1000-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (772, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P60@P80@P90', 'WHCROAD', '따뜻한 환영의 인사와 밝은 미소, 향기 가득한 커피가 어우러진 강변역점입니다.', '1.주차가능 2.주차장위치:아크로리버 1층 지상주차장 3.주차가능대수:5대 이하 4.주차조건:스타벅스 구매시 2시간 무료주차권 제공(고객요청시)', '지하철 2호선 강변역 4번 출구 건너편 도보 180M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (21, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '한 분의 고객, 한 잔의 음료, 하나의 이웃에 정성을 다하는 스타벅스 자양점 입니다.', '1.주차가능 2.주차장위치:건물 지하주차장(이튼타워상가) 3.주차가능대수:5대이하 4.주차조건:주차권에 스타벅스 도장 확인시 1시간 무료', '지하철 2,7호선 건대입구역 5번 출구 뚝섬유원지역 방향 10분 거리, 7호선 뚝섬유원지역 1번 출구 건대입구역 방향 5분 거리', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (139, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P40@P80@P90', 'WHCROAD', '쇼핑,영화,공연 다채로운 문화와 젊음의 열기로 가득한 건대스타시티점입니다.', '1.주차가능 2.주차장위치:건대스타시티 건물 지하2층~지하3층 3.주차가능대수:10~20대 4.주차조건:최초 30분 무료, 이후 15분당 700원,1만원이상 구매시 1시간 무료/3만원 이상 구매시 2시간 무료', '지하철 2,7호선 건대입구역 5번 출구, 롯데백화점 옆 스타시티 내 1층, 이마트 자양점 바로 위층', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (659, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '공연, 여유, 편안함을 느낄 수 있는 광나루점입니다.', '1.주차불가능', '지하철 5호선 광나루역 2번 출구 도보 5분', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (761, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '매일매일 찾고 싶은 커피향이 가득한 군자역점입니다.', '1.주차불가능 (건물내 유료주차장 이용)', '지하철 5,7호선 군자역 7, 8번 출구 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (882, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '은은한 커피향이 가득한 일상의 여유로움을 자양사거리점에서 느껴보세요.', '1. 주차가능 2. 주차장 위치 : 건물내 지하1층~지하2층 3. 주차가능대수 20~50대 4. 주차조건 : 스타벅스 1만원 이상 결재시(스타벅스카드 충전 제외) 2시간 무료주차 가능(스타벅스 매장에서 차량등록 요청 필)', '지하철 2호선 구의역 1번출구 건대입구역 방면 직진 250M', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (921, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '커피한잔의 여유와 빠르고 편리한 DT(Drive Thru)를 경험할 수 있는, 여기는 구의DT점입니다.', '1.주차가능 2.주차장위치:매장전면 3.주차가능대수:5대이하 4.주차조건:스타벅스 구매고객에 한함', '구의사거리에서 올림픽대교 방향 150m', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1278, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '아늑한 분위기, 부드러운 커피향기가 가득한 스타벅스 올림픽대교북단점 입니다.', '1.주차불가능', '구의사거리에서 올림픽대교 방향으로 직진 올림픽대교북단 교차로 제일빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1414, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@P80@P90', 'WHCROAD', '생활에 활기를 주는 푸른 산처럼 친근한 스타벅스 아차산역점입니다.', '1.주차불가능 2.인근 어린이대공원후문 공영주차장 이용 가능(유료)', '5호선 아차산역 3번출구에서 아차산역 사거리 방향으로 도보 1분 율림빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1458, 'T04@T05@T08@T16@T17@T20@T30@T36@P20@P80@P90', 'WHCROAD', '도심 속 공원의 여유와 문화의 공간인 어린이대공원역점에서 커피 한잔의 여유를 느껴보세요.', '1.주차불가능', '지하철 7호선 어린이대공원역 6번 출구 500m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1544, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36@P20@P80@P90', 'WHCROAD', '따뜻한 커피와 활기찬 미소, 행복한 공간이 있는 스타벅스 건국대점입니다.', '1.주차불가능', '지하철 2호선, 7호선 건대입구역 2번 출구 150m 직진 (건물 1,2층)', 'N', '0730-2300', '0730-2300', '0730-2300', '0730-2300', '0730-2300', '0830-2300', '0900-2200', '0830-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1690, 'T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P40@P80@P90', NULL, '행복이 가득한 스타벅스 구로NC점입니다.', '1.주차가능 2.건물 지하층 3.100대 이상 4.1만원 이상 구매 시 2시간 무료 5.파트너에게 영수증 제시후 요청', '1호선 구로역 1번 출구 NC아울렛 신구로점 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (428, 'T04@T05@T07@T08@T16@T17@T20@T30@P40@P80', 'WHCROAD', '자연과 문화, 쇼핑의 조화,새로운 문화복합 공간, 스타벅스 현대디큐브B2점과 함께 풍요로운 문화생활을 누리세요!', '1.주차가능 2.현대디큐브주차장 3.100대 이상 4.조건부 무료(1만원이상 1시간 무료) 5.파트너에게 요청', '지하철1,2호선 신도림역 하차, 1번 출구 현대백화점(디큐브시티점) 지하 2층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (568, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36@P80@P90', 'WHCROAD', '따스한 커피 한잔의 여유를 구로호텔점에서 즐기세요~', '1.주차가능 2, 주차장위치-호텔지하주차장 3.주차가능대수-50대이상 4.주차조건-최초 30분무료, 이후 10분당 7백원', '2호선 구로디지털단지역 3번출구 5분거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (429, 'T04@T05@T08@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '서남권의 새로운 쇼핑몰 디큐브시티, 도림천과 연계된 생태공원이 한눈에 보이는 현대디큐브2F점입니다.', '1.주차가능 2.현대디큐브주차장 3.100대 이상 4.조건부 무료(1만원이상 1시간 무료) 5.파트너에게 요청', '지하철1,2호선 신도림역 하차, 1번 출구 현대백화점(디큐브시티점) 2층', 'N', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2130', '1100-2130', '1100-2130', '1100-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (333, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '여유롭고 편안한 휴식공간과 미소가득한 파트너들이 함께하는 구로하이엔드점입니다.', '1.주차가능 2.주차장위치-건물주차장 3. 주차가능대수-50대이상 4.주차조건-최초 60분 무료, 이후 30분당 1천원 5.주차요금정산방법-파트너에게문의', '구로 디지털 2단지 만민중앙교회 앞 구로 에이스 하이엔드타워 1층입니다.', 'N', '0730-1730', '0730-1730', '0730-1730', '0730-1730', '0730-1730', '0000-0000', '0000-0000', '0000-0000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (28, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P80@P90', 'WHCROAD', '따뜻한 햇살이 창문에 비쳐 오는 아늑하고 편안함을 느낄 수 있는 구로에이스점입니다.', '1.주차가능 2.주차장위치-지하주차장 3.주차가능대수-50대이상 4.주차조건-최초 30분 무료,이후 영수증 당 1시간 무료(평일 저녁 7시이후, 토요일 오후 2시이후, 일/공휴일 종일 무료주차 가능) 5.주차요금정산방법-POS에서 주차권 지급', '1. 지하철 2호선 구로디지털단지역 1번출구에서 도보 5분 후 sk텔레콤앞정류장 앞에서 버스 (5536 / 5616) 승차후 디지털 산업단지 하차.
2. 지하철 2호선 구로디지털단지역 1번출구에서 구로이마트 방향으로 도보15분, 산업단지 사거리에서 우리은행건물.', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1800', '1000-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (225, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '구로동의 조용하고 편안한 아지트, 신세계아이앤씨점입니다. 언제나 밝은 미소로 환영합니다.', '1. 주차가능 2. 주차장위치-건물주차장 3. 주차가능대수-10대 미만 4. 주차조건- 조건부 무료(입차 후 최초 10분 무료 / 이후 10분당 700원, 24시간 30,000원)', '지하철 7호선 남구로역 1번 출구에서 아파트 단지로 우회전 후 직진 5분거리 (해피랜드본사 맞은편)', 'N', '0700-1700', '0700-1700', '0700-1700', '0700-1700', '0700-1700', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (657, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '바쁜 도심 속 휴식을 전해드리는 구로디지털로점입니다.', '1.주차가능 2.주차장위치-건물주차장 3. 주차가능대수-50대이상 4.주차조건-최초 60분 무료, 이후 30분당 1천원', '구로 이마트에서 대림역 방향 첫번째 사거리에서 우회전 후 50M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0930-2100', '0930-2100', '0930-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (787, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '부드러운 커피 향기와 아늑한 분위기가 있는 스타벅스 오류동역점 입니다.', '1.주차 불가능', '오류동역 3번 출구로 나와 오류동역 삼거리에서 우회전 후 약 70M직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1182, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '바쁜 일상 속에서 따뜻한 위로와 편안함을 느낄 수 있는 구로디지털타워점 입니다.', '1.주차가능 2. 주차장위치-건물주차장 3.주차가능대수-50대이상 4.주차조건-최초 30분 무료. 이후 30분 당 1천원', '2호선 구로디지털단지역 3번 출구 7분거리 (구로이마트 맞은편)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '1000-2000', '1000-2000', '1000-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1283, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P90', 'WHCROAD', '부드러운 커피향기가 있는 조용하고 편안한 공간', '1. 주차가능 /2. 지하 주차장 이용/3. 50대이상 /4. 기본30분 무료 이후 30분당 1,000원', '구로역 3번 출구 방면 직진 751m
신도림역 1번 출구 방면 직진 945m
S컨벤션 웨딩홀 1층', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (340, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '바쁜 일상 속의 편안한 휴식처가 되어 줄 스타벅스 가산그레이트점 입니다.', '1. 주차 가능 2. 주차장 위치-입점건물 지하2~3층 3. 주차가능대수-10대 이상 4. 주차조건-평일 60분 무료(단, 18시 이후 입차, 23시 이전 출차 시 300분 무료) / 주말 및 공휴일 180분 무료(대체공휴일 및 근로자의 날 제외) 5.주차요금정산방법-파트너에게 요청', '가산 디지털단지역 4번 출구에서 도보 5분소요. 마리오 아울렛 2관 정문 건너편 위치.', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0930-2000', '1000-2000', '0930-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (364, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '힘찬하루 시작의 활력을 드릴 스타벅스 가산브이타워점 입니다.', '1. 주차가능 2. 주차장 위치 - 입점건물 지상,지하1-3층 3. 주차가능대수 - 50대 이상 4. 주차조건 - 30분 무료, 이후 30분당 1천원 5. 주차요금정산방법 - 출차 시 or 지하무인정산기 이용', '7호선 가산디지털단지역 5번출구에서 출구방향으로 나오셔서 도보 약 8분 거리', 'N', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0000-0000', '0000-0000', '0000-0000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (555, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '즐거고 알찬 쇼핑 후 편안한 휴식처가 되는 마리오 아울렛점 입니다.', '1. 주차가능 2. 주차장 위치- 입점건물 지하 2-3층 3. 주차가능대수- 100대 이상 4. 주차조건- 최초 120분 무료, 이후 10분당 5백원 5. 주차요금정산방법- 파트너에게 요청', '가산디지털단지역 1호선 4번 출구, 도보 5분거리리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (144, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80@P90', 'WHCROAD', '패션 아울렛에서 득템하고 맛있는 커피까지 즐길 수 있는 W-mall점으로 오세요~', '1.주차가능 2.주차장위치-지하주차장 3.주차가능대수-50대이상 4.주차조건-스타벅스 이용시 2시간 무료. 단, 차량당 주차지원은 최대 3시간(예시:스타벅스 2시간지원, 9층음식점에서 2시간지원 받더라도 3시간만 무료)', '지하철 7호선 가산디지털단지역 4번 출구, 마리오아울렛 방향 도보10분, 2번 출구 건너편 버스 (5712, 5616)', 'N', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2130', '1030-2130', '1030-2130', '1030-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (227, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', 'IT산업단지의 랜드마크 가산디지털점을 소개합니다.', '1. 주차가능 2. 주차장위치- 건물주차장 3. 주차가능대수- 20대미만 4. 주차조건- 최초 30분 무료, 이후 30분당 1천원', '지하철 7호선 가산디지탈단지역 5번 출구', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1800', '0900-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (778, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P90', 'WHCROAD', '바쁜 생활 속에 안락한 휴식공간이 되는 곳 금천독산점입니다.', '1.주차가능 2.입점건물 지하2층~4층 3.주차가능대수 -약500대이상 4.주차조건- 1시간 무료 5.주차요금 정산방법 없음', '금천우체국 사거리 200M 방향 롯데 빅마켓 맞은편 현대지식산업센터 로비층에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0930-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1076, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심속 작은휴식, 스타벅스 가산디지털단지역점입니다.', '1.주차가능 2.주차장위치-입점건물 지하주차장 1-4층 3.주차가능대수-655대 4.주차조건-평일 7시 이후 11시 30분 이전 60분 무료, 11시 30분 이후 17시이전 90분 무료 ,17시이후 23시 300분 무료, 주말/공휴일 300분 무료 5.주차요금정산방법-파트너에게 요청', '가산디지털단지역 7호선 2번출구 앞 위치, 1호선 1번 출구 길 건너편에 위치', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-2000', '1030-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1184, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P90', 'WHCROAD', '커피 한잔의 여유로움을 함께 느낄 수 있는 편안하고 아늑한 공간, 스타벅스 금천시흥점입니다.', '1. 주차불가능', '시흥대로 박미삼거리 코너에 위치
[대중교통/버스 이용시] 박미삼거리/국립전통예술중고 버스 정류장 하차, 바로 맞은편에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1218, 'T04@T07@T08@T16@T17@T20@T21@T30@T36@P70@P90', 'WHCROAD', '햇살을 가득 품은 따듯하고 아늑한 스타벅스 독산사거리점입니다.', '1. 주차불가능', '시흥대로 독산사거리 코너에 위치
[대중교통/버스 이용시] 금천우체국 정류장 또는 남문시장 정류장에서 하차하여 걸어서 3분 거리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1405, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', 'WHCROAD', '새로운 만남이 기다리고 있는 따뜻하고 활기찬 가산에스케이점입니다.', '1. 주차가능 2. 주차장 위치 - 입점건물 지하주차장 3. 주차가능대수 - 50대 이상 4. 주차조건 - 유료(최초 30분 무료, 이후 30분당 2,200원) 5. 주차요금정산방법 - 무인정산기', '7호선 가산디지털단지역 6번 출구 ,1호선 가산디지털단지역 7번 출구 
맞은편 가산SK V1 센터 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1800', '1000-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1637, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P70@P80@P90', NULL, '금천구청 맞은편에 위치한 매장 입니다.', '1.주차가능 2.입점건물 지하3층~6층 3.주차가능대수-150대이상, 4.주차조건-조건부무료(구매시 2시간) 5.주차요금정산방법-파트너에게주문시등록요청', '금천구청역 1번 출구 도보 2분(161m)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (587, 'T02@T04@T05@T08@T16@T17@T30@T36@P40', 'WHCROAD', '쇼핑과 달콤한 휴식, 향기로운 커피와 즐거움이 있는 월계이마트점입니다.', '1. 주차 가능 2. 주차위치 - 입점건물 3. 주차가능대수 - 10대 이상 4. 주차조건 - 무료', '석계역 1,2번 출구에서 버스 1136,1146,1131,1222 승차 후 월계동 진아교통 하차
월계역 2번 출구에서 버스 147, 1131 승차 후 월계동 진아교통 하차', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (596, 'T05@T08@T16@T17@T20@T22@T30@T34@T35@T36@P80', 'WHCROAD', '바쁜 일상 속 커피 한 잔의 여유를 즐길 수 있는 스타벅스 노원역점 입니다.', '주차 불가', '7호선 노원역 8번 출구 앞.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (574, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '향긋한 커피 향기처럼 하루를 기분좋게 만드는 중계역점 입니다.', '주차 불가', '지하철 7호선 중계역 6번출구 약 400m (상계백병원 앞)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (498, 'T04@T08@T16@T17@@T20@T21@T30@P20@P80@P90', 'WHCROAD', '활기찬 기운이 가득한 광운대점으로 가족, 친구, 연인과 함께 오세요~', '주차 불가능', '1호선 광운대역 2번출구로 나와서 도보 50m', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (540, 'T04@@T08@T16@T17@T20@T21@@T30@T36@P40@P80', 'WHCROAD', '노원의 활기찬 문화공간, 커피와 함께하는 나만의 공간, 여러분의 스타벅스 노원KT점 입니다.', '주차 불가', '지하철 노원역 4호선 2번출구 좌측 문화의 거리 방향 150M, 7호선 5번출구 좌측 직진 200M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (120, 'T04@T05@T08@T16@T17@T20@T21@T30@P90', 'WHCROAD', '마음이 통하는 사람과 만나는 따뜻한 공간, 은행사거리점입니다.', '주차 불가', '중계동 은행사거리 우리은행 방면으로 들어와 30M 직진, 중흥빌딩 1층 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1244, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '향기로운 커피와 은은한 분위기로 진정한 힐링을 즐길 수 있는 공릉역점입니다.', '1. 주차 가능 2. 주차위치 - 건물 전면 3. 주차가능대수 - 3대로 협소 4. 주차조건 - 구매 고객에 대해 무료', '지하철 7호선 공릉역 4번 출구 약 50m', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1266, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '부드러운 커피향과 일상 속의 여유를 즐길 수 있는 노원마들역점입니다.', '주차 불가', '지하철 7호선 마들역 5번출구 350m', 'N', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1379, 'T01@T04@@T08@T09@T16@T17@T20@@T36@P80@P90', 'WHCROAD', '바쁜 도심속 커피 한잔의 여유로운 휴식과 편리한 Drive Thru 서비스가 있는 스타벅스 공릉DT점 입니다.', '1. 주차 가능 2. 주차위치 - 건물 전면 3. 주차가능대수 - 10대 4. 주차조건 - 구매 고객에 대해 무료', '태릉입구역 3번 출구 도보 300m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1484, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80', NULL, '노원역 4,7호선 1번 출구에서 도보 200m, 넓고 아늑한 공간에서 다양한 사람들과 만나보세요.', '주차 불가', '- 지하철 4호선, 7호선 노원역 1번출구 도보이동 200m
- 시내버스 102,1129, 1132, 1138외 노원역1번출구 정류장
', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1475, 'T05@T08@T16@T17@T20@T30@T35@T36@P40', NULL, '서울시내 첫 트레이더스에서 만나는 특별한 스타벅스 경험!', '1. 주차 가능 2. 주차위치 - 입점건물 3. 주차가능대수 - 10대 이상 4. 주차조건 - 무료', '석계역 1,2번 출구에서 버스 1136,1146,1131,1222 승차 후 월계동 진아교통 하차 
월계역 2번 출구에서 버스 147,1131승차 후 월계동 진아교통 하차', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1616, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T35@P20@P80', NULL, '1호선 월계역 3번출구에서 도보 5분, 따뜻한 커피향을 품은 스타벅스 월계역점입니다.', '1.주차 불가능', '1호선 월계역 3번출구에서 도보 5분, 인덕대학교 버스 정류장에서 하차', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (698, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '아늑한 휴식공간, 친절한 파트너들이 있는 쌍문역점에서 커피 한잔의 여유를 즐기세요.', '1.주차 불가능', '지하철 4호선 쌍문역 1, 2번 출구 사이', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1511, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36', NULL, '창동이마트에서 다양한 사람들과 만나보세요.', '1.주차가능 2.주차장 위치-이마트 유료주차장 이용 가능 3.주차가능대수 -50대이상 4.주차조건-구매시 최대 2시간 무료주차 가능 / 10분당 1,000원 추가 요금 5.주차정산방법-이마트 키오스크 주차정산 시스템 등록', '지하철 1,4호선 창동역 2번 출구, 창동이마트 1층 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (345, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P90', NULL, '대학가 젊음의 패기를 커피에 가득 담았습니다. 바리스타의 환한 웃음과 고객에 대한 열정을 스타벅스 경희대점에서 느끼실 수 있습니다.', '주차 불가능', '경희대 정문에서 회기역 방향으로 50m 직진하면 좌측에 위치해 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (485, 'T04@T05@@T08@T16@T17@@T20@T30@T36@P80@P90', 'WHCROAD', '따뜻한 커피와 미소, 행복한 시간이 기다리는 곳. 2층의 넓고 안락한 여러분 모두의 공간 매력적인 장한평역점입니다.', '1. 주차 불가능', '5호선 장한평역점 3번출구로 나오시면 바로 우측에 매장이 보입니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (242, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '안녕하세요. 책과 커피 한 잔의 즐거움이 있는 스타벅스 외대점입니다.', '주차 불가능', '지하철 1호선 외대앞역 5번 출구, 외대정문 방향으로 약 100m직진후 왼편에 위치(도보로 약 5분 거리)', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (784, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '따뜻한 커피와 따뜻한 미소, 행복한 공간이 있는 회기역사거리점 입니다.', '1.주차가능 2.입점건물 지하 3. 주차가능대수 -4대 이상 4.주차조건-조건부 무료 (구매영수증 지참 1시간 ) 5.주차요금 정산 방법 -파트너 문의', '회기역 1번 출구에서 회기역 사거리 방향으로 직진, 사거리 길 건너 오른 편 베라체캠퍼스 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (952, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '편안하고 안락한 휴식처, 스타벅스 신설동역점입니다.', '주차 불가능', '신설동역 3번출구 20M 직진', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1171, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '안녕하세요. 따뜻한 커피와 행복한 미소가 가득한 스타벅스 외대정문점입니다.', '1.주차가능 2.입점건물 기계식 주차장 3. 주차가능대수 -2대 이상 4.주차조건-조건부 무료 (구매영수증 지참 1시간 ) 5.주차요금 정산 방법 -파트너 문의', '지하철 1호선 외대앞역 5번출구 하차, 외대정문 방향으로 직진 후 삼거리 좌측방향, 우리은행 옆에 위치(도보로 약 7분 거리)', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1226, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '향기로운 커피와 일상의 여유를 스타벅스 경희대삼거리점에서 즐겨보세요.', '주차 불가능', '1호선 회기역 1번출구 경희대방면 도보 10분
경희대정문 약 250m 도보 3분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1203, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '따뜻한 커피와 행복한 미소가 가득한 스타벅스 답십리역점입니다', '1.주차 불가능', '지하철 5호선 답십리역 1번출구 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (307, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', NULL, '향기로운 커피와 즐거운 만남이 있는 사당의 랜드마크, 스타벅스 사당역점입니다.', '주차불가능', '4호선 사당역 10번 출구 양지빌딩 1-3층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (10, 'T04@T05@T07@T08@@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '사계절 마음을 사로잡는 감미로운 커피향, 그 멋과 맛을 향유할수 있는곳, 숭실대점입니다.', '주차불가능', '지하철 7호선 숭실대입구역 4번 출구에서 왼편 건물 1층', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1015, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '그윽한 커피향과 안락한 공간으로 편안함을 제공 해드리는 숭실대입구역점입니다', '주차불가능', '7호선 숭실대입구역 2번 출구, 직진 도보 약 5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1126, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P70', 'WHCROAD', '한잔의 커피와 일상에서 여유로움을 느낄 수 있는 중앙대점 입니다.', '주차불가능', '9호선 흑석역 3,4번 출구 이용 중앙대학교 방향 600M 이동 중앙대학교 정문 앞', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2030', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1272, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '한분의 고객과 한잔의 음료에 정성을 다하는 스타벅스 신대방삼거리역점 입니다.', '1.주차가능 2.주차위치-입점건물옥외주차장 3.주차대수-10대이상 4.주차조건-조건부무료(최대 1시간 무료, 최초 30분 1,000원 이후 10분당 500원) 5.주차요금정산방법-파트너에게 요청, 추가금액은 주자창 정산기 사용', '7호선 신대방삼거리역 1번 출구 직진 250m 위치한 2층 매장', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1357, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', NULL, '젊음과 열정이 살아 숨쉬고, 낭만과 문화가 공존하는 스타벅스 노량진역점입니다.', '주차불가능', '1호선 노량진역 1번출구 맞은편
9호선 노량진역 4번출구 앞
동작구청 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1439, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', NULL, '도심속의 편안한 안식처 이수자이점으로 오세요~!', '주차가능/입점 건물 지하주차장/50대 이상/유료(10분당 1,000원)', '이수역 4호선 7호선 9번 출구 후방 30m(10번 출구에서 횡단보도 이용)
이수자이 주상복합 1층에 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1466, 'T03@T04@T05@T08@T16@T17@T20@T21@T22@T26@T29@T30@T33@T36@T40@@P70@P90', NULL, '고품격 프리미엄 리저브 원두를 다양한 추출기구로 만나볼 수 있는 보라매공원R점입니다.', '1.주차가능 2.주차위치-건물 지하주차장 3.주차대수-10대이상 4.주차조건-조건부무료(최초 30분 무료 이후 20분당 1,000원) 5.주차요금정산방법-파트너에게 주차권 요청', '[대중교통 이용시] 7호선 보라매역 1번 출구, 서울공업고등학교 정류장에서 버스 153번(대체버스 6516, 6513, 6514, 461) 승차, 보라매병원 하차 후 보라매현대APT 방면 도보 170m 이동

[자차 이용시] 서울시 동작구 보라매로 5길 35로 도착지 설정 후 건물 지하 주차(2,3,6층 주차 가능)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1657, 'T08@T16@T17@T20@T21@T30@T32@T34@T35@T36@P80@P90', 'WHCROAD', NULL, '주차불가능', '지하철 7호선 상도역 5번 출구 이용. 상도 터널 방향 10m', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1533, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P80@P90', NULL, '남성역점에서 생활 속 커피 한잔의 여유를 느껴보세요.', '주차불가능', '남성역 4번 출구 방향으로 43m 거리에 있습니다.
남성역 메트로 빌딩 1층~2층에 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1553, 'T05@T08@T09@T16@T17@T20@T21@T30@T34@T35@T36@P90', 'WHCROAD', '바쁜 일상 속 커피향기로 행복을 드리는 노량진동점 입니다.', '주차가능/건물 후면 지상 주차장/20대 이상/유료(10분당 500원/1대당 1일 최대 8,000원 부과)', '지하철 9호선 노량진역 3번 출구, 노들역 5번 출구 약 500m, 도보 10분 미만
버스 이용시 사육신공원 노들역 방면 하차 (간선 752, 지선 5516,5535,5536 이용)
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (546, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '합정역의 랜드마크, 도심속 달콤한 휴식공간! 합정메세나몰점입니다.', '1. 주차가능/2. 주차대수: 50대이상/3.주차위치: 홍익지구대 옆 메세나폴리스몰 지하주차장/4. 주차조건 : 조건부 무료(기본 1시간 무료, 구매금액 1/3/5만원 이상 시 1/2/3시간 추가 등록(최대4시간))/ 5. 주차요금정산방법 : 파트너가 영수증확인 후 등록 (영수증당 차량1대)', '합정역 9,10번 출구 사이, 꽃가게 옆에 있습니다.(합정폴리스R점과 다릅니다.)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (472, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80@P90', 'WHCROAD', '진정한 제3의공간 쇼핑후 즐기는 커피한잔의 여유! 마포이마트점이 함께합니다~', '1. 주차가능 2. 주차장 위치-이마트 B4-B7층 3. 주차가능대수-100대 이상 4. 주차조건-조건부 무료(POS&사이렌오더 결제 시 주차권 출력, 1시간 무료) 5. 주차요금 정산방법-기타방법(고객이 직접 이마트 사전무인정산기에서 주차증 스캔하여 정산)', '공덕역 7번출구 50m직진 이마트 마포점 2층', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (358, 'T04@T05@T07@T08@@T16@T17@T20@T21@T30@T36@P80', NULL, '커피향과 함께하는 행복한 휴식, 스타벅스 망원역점 입니다.', '1.주차가능 2.주차위치: 매장건물뒷편 3.주차대수:5대 (기계식,승용차만가능,suv이상불가) 4.주차조건: 구매영수증 확인 30분무료 5.주차요금정산방법 :주차장 관리직원 영수증확인/ 주차장 만차시 이용불가', '지하철6호선 망원역 1번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (397, 'T04@T05@T08@T16@T17@T20@T30@T36@P20@P80@P90', NULL, '젊음의 거리, 홍대삼거리점입니다.', '1, 주차 불가능', '지하철 6호선 상수역 2번 출구, 홍익대학교 방면 400m 직진(도보 3분)', 'N', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '1000-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (84, 'T04@@T08@T09@T16@@T20@T21@T30@T32@T34@T36', 'WHCROAD', '새로운 공간으로 변신한 마포아크로점으로 초대합니다.', '1, 주차가능 2. 주차장 위치 - 건물 지하 B2-B3층 3. 주차가능대수 - 50대 이상 4. 주차조건 - 금액제한 없이 1시간 무료 5. 주차요금정산방법 - 파트너에게 요청', '지하철 5호선 공덕역 8번 출구, 마포역 3번 출구 도보 5분 거리', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0830-2100', '0830-2000', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (87, 'T04@T05@T08@@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '마포의랜드마크! 일진빌딩점 입니다. 고급스러운 느낌과 더 넓어진 좌석으로 제3의 공간을 만나보세요.', '1.주말, 공휴일 주차가능(평일주차불가) 2.주차장 위치- 일진빌딩 지상, 지하 주차장 3.주차가능대수-10대 이상 4.주차조건-매장 이용 시 2시간 무료 5.주차요금정산방법-파트너에게 요청', '지하철 5호선 마포역 2번 출구에서 도보 1분', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (88, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '안녕하세요, 친근한 파트너들과 여유를 가지며 커피를 즐길 수 있는 스타벅스 상암DMC점입니다.', '1.주차가능 2.주차대수:50대이하 3. 주차장위치:1단지 건물 지하주차장 4. 주차조건: 만원이상 구매고객 영수증당 2시간무료 (쿠폰,충전금액 제외) 5. 주차요금정산방법: 파트너가 영수증확인 후 주차등록', '상암초등학교 사거리에서 수색교 방향으로 직진, DMC홍보관 맞은 편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (18, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P20', 'WHCROAD', '젊은이들의 성지, 홍대의 핫플레이스 홍대갤러리점입니다.', '주차불가능', '홍익대학교 정문 앞 하나은행 옆', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (70, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '주거권의 아늑한 쉼터, 애오개역점입니다.', '1.주차불가능', '지하철 5호선 애오개역 1번 출구 마포경찰서 방향으로 도보 1분 거리 마포트라팰리스 상가 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (644, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '커피 한 잔의 여유, 기분 좋은 만남이 기대되는 설레임이 가득한 동교점입니다.', '주차 불가', '지하철 2호선, 공항철도 홍대입구역 1번 출구 130m 직진, 홍대입구역 사거리에서 우회전 후 도보 5분', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0900-2200', '0900-2130', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (680, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', NULL, '홍대의 만남의 장소 스타벅스 홍대역점입니다.', '주차 불가능', '지하철 2호선, 공항철도 홍대입구역 2번 출구 좌측 10M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (803, 'T05@T07@T08@T16@T17@T20@@T30@T36', 'WHCROAD', '다양한 커피와 음료,푸드와 함께 상암MBC점에서 기분좋은 하루를 보내세요~~', '1. 주차가능/2. 주차대수 :50대이상(주차혼잡) 3.주차장위치: 상암MBC사옥 GATE3 고객용 주차장/4.주차조건: 구매금액 1만 5천원 이상 60분 무료 (쿠폰,충전금액제외)/5. 주차요금정산방법 :POS에서 영수증 확인 후 주차권 제공', '상암MBC 신사옥 경영센터와 미디어센터 사이에 위치해 있습니다.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (793, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '활기 넘치는 열정과 최고 품질의 커피로 고객님께 최상의 서비스를 제공하겠습니다.', '1.주차가능 2.주차장위치-입점건물 주차장 3. 주차가능대수-10대 이상 4.주차 조건-1시간 무료(1분~90분까지 기본요금 2,000원 / 91분부터 10분당 500원 추가) 5.주차요금 정산방법-파트너 문의 후 영수증에 주차도장 확인 후 정산소에 제출', '신촌역 6번 출구로부터 서강대 방면으로 300M(도보 3분)', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (873, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '서교동 카페거리 입구에 있는 ''서교점''에서 파트너들과 함께 기분 좋은 경험을 해보세요.', '주차 불가', '지하철 2호선, 6호선 합정역 3번출구에서 직진 130M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-2200', '0900-2130', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (949, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심속의 쉼터 공덕오거리점에서 커피 한잔의 여유를 느껴보세요.', '1.주차가능 2. 주차장 위치 - 입점건물 지하 2층 3. 주차가능대수 - 10대 이상 4. 주차조건 - 유료(기본 30분 1800원, 초과 10분당 600원) 5. 주차요금정산방법 - 출차 시 카드 결제(현금결제불가)', '지하철 5,6호선 공덕역 8번출구에서 직진방향 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (943, 'T04@T05@T07@T08@T16@T17@T20@T21@@T30@T36@P80', NULL, '개성과 낭만이 있는 예술의 거리. 상수역점과 함께하세요.', '주차 불가', '지하철 6호선 상수역 3번출구 바로 앞', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (910, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '항상 편안하고 안락하게 커피 한잔의 여유를 즐길수 있는 매장', '1.주차가능/2.주차대수: 50대이상/3.주차장위치: 건물 지하1~지하7층/4.주차조건: 만원이상 구매고객 1시간무료(영수증당 차량1대,충전금액,쿠폰금액제외)/5. 주차요금정산방법: 파트너가 영수증확인 후 주차권제공', '지하철 6호선 디지털미디어시티역 2번출구에서 6715, 7711번 버스로 상암DMV홍보관, YTN정류장 하차 후 사거리 우측 방향으로 도보 250m', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1067, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P20@P80@P90', 'WHCROAD', '''신촌오거리''점에서 파트너들과 함께 특별한 경험을 해보세요!', '주차 불가 (매장 앞 공영 주차장 유료 이용 가능)', '신촌역(2호선) 8번출구에서 직진 80m (도보 2분)
현대백화점 신촌점 건너편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1069, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '도심속 제3의 공간 상암사보이시티점입니다.', '1.주차가능/2.주차대수:50대 이상 3.주차장위치:입점건물지하 2~4층/4.주차조건: 유료주차 주차비 발생(10분 500원)/ 5.주차요금정산방법: 출차시 비용지불', '-공항철도 디지털미디어시티역 1번출구 하차후 마포 18번 서울산업진흥원 국악방송정류장 하차
-디지털미디어시티역2번출구 하차후 6715,7711,7730번 환승 월드컵파크5단지 정류장하차후 도보 4분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1031, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '서교동의 새로운 핫플레이스! ''서교동사거리점''에서 파트너들과 함께 특별한 경험을 해보세요!', '주차 불가', '지하철 2호선, 6호선 합정역 2번출구에서 직진 350M 도보 5분거리', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1137, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '커피 한 잔의 여유로움과 즐거움을 서강대흥역점에서 느껴보세요.', '주차 불가', '대흥역 1번출구 앞 (도보 1분이내)
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1079, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '합정역의 중심, 만남의 장소, 행복과 사랑이 넘치는 합정점입니다.', '1. 주차가능/2. 주차대수:50대이상/3.주차장위치: 딜라이트 스퀘어 A동=1차 주차장 (B동=2차 주차장불가)/4. 주차조건: 입차시간기준 만원 이하 30분 무료, 만원 이상 구매 고객 1시간 무료 적용/5. 주차요금정산방법 :파트너가 영수증확인 후 주차등록', '합정역 8번출구 나와서 뒤쪽방면 마포한강푸르지오 1층에 위치
또는 합정역 지하 마포한강푸르지오 출구 에스컬레이터 이용 지상 1층 (도보1분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1157, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '향긋한 커피 한 잔의 여유로움과 즐거움, 서강 광흥창역점에서 함께하세요.', '주차 불가 (매장 입점 건물 주차장 지정 주차공간으로 주차 불가)', '광흥창역 1번출구에서 직진 200m (도보 3분)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1123, 'T04@T05@T07@T08@T09@T16@T17@T20@T22@T30@T36@P80', 'WHCROAD', '''마포염리''점에서 파트너들과 함께 특별한 나이트로 콜드브루를 경험해 보세요!!', '1.주차가능 2.주차장위치-입점건물1층(재화스퀘어) 및 지하주차장 3.주차가능대수-10대이상 4.주차조건-구매시 1시간 무료 파트너등록(이후 10분에 500원)', '공덕역 1번출구에서 직진 200m (도보 5분)
경의선 공원 및 공덕파크자이 뒷편, 재화스퀘어 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1285, 'T04@T05@T08@T16@T17@T20@T30@T36@P20@P80@P90', 'WHCROAD', '홍대 도심속의 여유를 느낄수 있는 홍대공항철도역점 입니다.', '주차 불가', '홍대입구역 8번출구 직진 100M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1366, 'T03@T05@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T36@T40@@P90', 'WHCROAD', '합정의 편안하고 특별한 공간, 스타벅스 리저브커피를 만날 수 있는 합정폴리스R점입니다.', '1. 주차가능 2.주차장 위치-홈플러스 지하3,4층 주차장 3.주차가능대수-100대 이상 4.주차조건-조건부무료(기본1시간무료, 구매금액 1/3/5만원 이상 시 1/2/3시간 추가등록(최대4시간)) 5. 주차요금정산방법-파트너에게 요청', '지하철 합정역 9,10번출구 사이 메세나폴리스몰 100M 거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1323, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', NULL, '1.주차가능 (평일 06~22시, 토요일 9~18시까지 사용가능, 일요일 및 공휴일 사용불가) 2.주차장 위치 - 입점건물 지하2층 ~5층 3.주차가능대수 - 10대이상 4.주차조건- 30분 무료 ( 30분 이후 10분당 500원) 5.주차요금정산방법 - 출차 시 카드 결제 (현금결제불가)', '공덕역 4번출구 직진 50m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1335, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36', 'WHCROAD', '커피 한 잔과 함께 일상의 여유를 느낄 수 있는 아늑하고 편안한 마포경찰서후문점입니다.', '1.주차가능 2.건물지하주차장 3.10대이상 4.조건부무료(구매시60분 무료, 이후10분당500원) 5.파트너에게요청', '애오개역 1번 출구 마포경찰서 방향으로 150m 직진 후 오른쪽 길로 150m 이동, 마포경찰서 바로 뒤 마포 센텀 슬로우 스퀘어 상가 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1322, 'T03@T05@T08@T16@T17@T20@T21@T22@T26@T29@T30@T33@T36@T40', 'WHCROAD', '스타벅스 리저브 경험을 제공하는 홍대입구역사거리점입니다.', '주차불가능', '자차 이용시:동교동 삼거리에서 U턴 후 합정역 방면 직진
대중교통 이용시:홍대입구역 1번출구 방변 하차 후 도보 5분(약 200m)거리 경남관광빌딩 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1428, 'T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '마포 음식문화 거리에서 만나는 제3의 공간 마포용강동점 입니다.', '주차불가능', '마포역1번 출구 직진 후 우회전, 음식문화사거리에 위치', 'N', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1490, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '안녕하세요, 아늑한 휴식 공간에서 커피 한 잔의 여유를 즐길 수 있는 스타벅스 상암YTN점 입니다.', '1.주차가능/2.주차대수: 50대이상(혼잡)/ 3.주차장위치:건물 지하/ 4. 주차조건 : 유료주차가능 10분 500원 / 5. 주차요금정산방법: 출차비 결제', '상암동 YTN뉴스퀘어 1층 (CJ ENM 건물 옆, MBC광장 맞은편)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1555, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P20@P90', 'WHCROAD', '캠퍼스의 낭만이 느껴지는 서강대프라자점', '1. 유료 주차 가능 2. 주차장 위치-입점건물 곤자가프라자 지하 주차장 3. 주차대수-100대 이상 4. 주차 조건-유료(최초 30분 2천원, 이후 10분당 500원 /일 최고 2만5천원)', '대흥역 1번 출구에서 서강대 후문쪽으로 500m 거리 곤자가프라자 내 지하1층에 위치.', 'N', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (326, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '충정로에 오시면 꼭 방문해 주신다는 그 매장, 진정한 제 3의 공간을 느낄 수 있는 스타벅스 충정타워점 입니다.', '1. 주차가능(단, 주말에만 이용시간 제한 있음 /토요일 오후 5시까지 가능, 일요일 주차 불가) 2.주차장 위치-입점건물 지하 3.주차 대수-10대 이상 4. 주차조건-조건부 무료 (영수증 1만원당 1시간 무료) 5. 주차정산 방법-파트너에게 요청', '충정로역(2,5호선 환승역) 2번 출구에 위치한 충정타워 빌딩 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-1900', '0830-1900', '0830-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (353, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '엘리베이터가 있는 1~5층에서 여유를 느끼실 수 있는 신촌명물거리점입니다.', '1.주차 불가', '신촌역 3번출구에서 160m직진(도보 2분) 후 사거리에서 명물거리쪽으로 110m 직진', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (453, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P20@P90', 'WHCROAD', '편안하고 아늑한 매장, 고객 한분 한분 에게 최고의 서비스를 제공해 드리겠습니다', '1.주차 불가', '연세 세브란스병원에서 금화터널 방면으로 500m정도 직진, 봉원 고가차도 밑 봉원사 입구에 위치', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (487, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '아름다운 별이 떨어지는 듯한 아늑한 공간과 친절함이 가득한 파트너들을 만날수 있는 충정로역점입니다.', '1. 주차가능 2.주차장위치-입점건물 지하 3.주차가능대수-10대 이상 4.주차조건-영수증 1만원 이상 60분 무료 5. 주차요금정산 방법-파트너 문의 후 주차권 지급', '지하철 5호선 충정로역 8번출구 서대문방향 도보3분.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (403, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '높은 천정의 탁 트인 공간이 도심속 여유로움을 느끼게 해주는 공간, 강한 레드 포인트 칼라가 젊은이들의 시선을 집중시키는 신촌 아트레온점입니다.', '1. 주차가능 2. 주차가능위치:건물뒤편 CGV주차장 3. 주차대수: 20-5-0대 4. 주차조건: 유료주차. 주차지원없음. 10분당 900원, 기계식 주차장', '지하철 2호선 신촌역 4번 출구 도보로 300m 직진, 신촌 아트레온 CGV극장 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (443, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@P20@P80', NULL, '커피 한잔의 은은함과 젊은이들의 에너지가 넘치는 연대점입니다.', '1.주차 불가', '신촌역에서 연대정문 방향으로 100M 직진', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (134, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P20', 'WHCROAD', '이대안에서 커피 한잔의 여유를 즐기실수 있는 공간, 이대ECC점 입니다.', '1. 주차가능 2. 주차가능위치: ECC건물 지하 5,6층 3. 주차대수: 50대이상 4. 주차조건: 유료주차. 주차지원없음.', '지하철 2호선 3번 출구로 나와서이대 정문쪽으로 직진후 ECC 건물 4번 게이트에 삼성홀 공연장 우측에 위치(도보로 약 7분 가량)', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1800', '0900-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (141, 'T04@T05@T08@T16@T17@T20@T30@P70', 'WHCROAD', '하루의 쉼표 찍고 가세요. 스타벅스 연세종합관점 입니다.', '1. 주차가능 2. 주차가능위치: 연세세브란스 주차장 3. 주차대수: 50대이상 4. 주차조건: 유료주차. 유료주차 / 최초30분 무료 / 30분 초과 2000원 이후 10분당 500원 가산', '연세종합관 내 1층 (장례식장)', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (149, 'T03@T05@@T07@T08@T16@T20@T26@T29@T33@T34@T36@P20@P80', NULL, '스타벅스 커피 코리아 1호점. 리저브 & 티바나 전용 매장 이대R점입니다.', '1.주차 불가', '이대역 3번 출구 이화여자대학교 방면150m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (177, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36@P20@P80@P90', 'WHCROAD', '신촌의 랜드마크, 만남의 장소 신촌에서 따듯하고 정겨운 파트너들을 만나고 싶으시다면 신촌점으로 놀러오세요!!', '1.주차 불가', '신촌역 3번 출구에서 연세대학교 방향으로 50M 직진
', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (33, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '마음이 편해지는 커피한잔, 경기대점에서 만날 수 있습니다.', '1.주차가능 2.주차장 위치-입점건물 지상/지하 3.주차가능 대수-10대 이상 4.주차 조건- 조건부 무료(제품 구매 시 1시간 무료) 5. 주차요금정산방법-파트너 문의', '지하철 5호선 서대문역 1번 출구에서 직진, 육교 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (911, 'T01@T05@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '11/20 오후 3시 재오픈합니다.(리뉴얼 공사로 인해 11/7~11/19일까지 휴점)', '1.주차가능(공간 협소로 만차 시 매장 옆 주차장 유료로 이용 가능) 2.주차장 위치-매장 주차장 3.주차대수-5대 4. 조건-무료', '동교동삼거리에서 서대문소방서 방향 1.3km (연희초등학교 앞)', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '1500-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (993, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P20', 'WHCROAD', '한잔의 행복한 여유, 아늑한 공간 연세백양로점에서 느껴보세요.', '1. 주차가능 2. 주차가능위치:연세대학교내 주차장 3. 주차대수: 50대이상 4. 주차조건: 유료주차. 주차지원없음. 주차장유료운영. 최소입차~30분까지 2,000원. 그 후 10분당 500원. 2시간 이후부터 10분당 1,000원.', '지하철 2호선 신촌역 2,3번 출구로 나와 신촌 정문쪽으로 도보로 약 500m 직진후 연세대 교차로 지나 ''백양로''지하 2층 (중앙도서관과 100주년 기념관 사이)', 'N', '0900-1800', '0900-1800', '0900-1800', '0900-1800', '0900-1800', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1193, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '홍제동의 새로운 휴식 공간, 활기차고 따뜻한 홍제역점입니다.', '1.주차불가능', '지하철 3호선 홍제역 3,4번 출구 사이', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1231, 'T04@T05@T07@T08@T09@T20@T21@T30@T36@P80@P90', 'WHCROAD', '안락한 휴식 공간, 설레임을 주는 아현역점으로 초대합니다.', '1. 주차가능 2.주차장 위치-입점건물 지하 2층 3. 주차가능 대수- 10대 이상 4. 주차 조건-조건부 무료(구매 시 2시간 무료) 5. 주차요금 정산 방법-파트너 문의', '지하철 2호선 아현역 1번 출구, e편한세상신촌4단지 상가 1층에 위치.', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1178, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '스타벅스 연희동점에서 연희동 맛집 탐방도 하시고, 스타벅스만의 여유롭고 특별한 경험을 만나보세요.', '1. 유료 주차 가능 2.주차장 위치-매장 앞 3. 주차 대수-약 10대 4. 주차 조건-유료 (최초 30분 무료/ 추가 시 10분 당 1,000원)', '연희교차로에서 서대문구청 방향 사러가 쇼핑 앞 위치.
버스 이용 시 연희동 ''사러가 쇼핑'' 정류장 하차 후 도보 1분 거리.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1293, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P20@P80', 'WHCROAD', '젊음의 거리 신촌의 새로운 랜드마크 신촌역점 입니다.', '1. 주차가능 2. 주차가능위치: 건물뒤편 지상 지하주차장 3. 주차대수: 5~10대 4. 주차요금정산방법: 최초 30분 무료(건물내 발행되는 주차권에 도장 확인)', '신촌역 1번 출구 200m (홍대 방향 도보 3분), 현대백화점 옆 메가스터디 건물 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1656, 'T08@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '남가좌의 편안한 휴식공간!! 스타벅스 남가좌사거리점입니다.', '1.주차가능 2.주차장 위치-상가 1층 외부인 전용 주차장 3.주차가능 대수-21대 가능(경차전용2대/ 장애인2대 포함) 4.주차조건-무료주차', NULL, 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1510, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', NULL, '가재울뉴타운의 랜드마크! 스타벅스 가재울뉴타운점입니다.', '주차 불가', '버스이용시 DMC 파크뷰자이 정류장 하차 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1713, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '여유롭게 한강 뷰를 감상할 수 있는 물위에 떠있는 가장 아름다운 공간 스타벅스 서울웨이브아트센터점 입니다.', '잠원 한강 시민 공원 주차장 이용가능', '잠원역 3,4번출구 잠원 한강시민공원 방면 도보 15분
일반 버스 : 143번 , 362번 , 4318번 잠원 한신아파트 하차 후 잠원 한강시민공원 방면 도보 5분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (598, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심속의 편안한 휴식처, 기분좋은 에너지가 넘치는 강남에비뉴점입니다.', '1. 주차가능 2. 주차장위치-입점건물 지하 3층~7층 3.주차가능대수- 100대이상 4. 주차조건- 유료 10분당 1천원 5. 주차요금정산-출차시 직접 카드결제( 현금불가)', '9호선 신논현역 7번 출구 200m직진 주유소 골목 좌회전후 약 150m거리에 위치(도보 5분)', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-2000', '0900-1900', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (327, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '아늑하고 평온한 서울교대점에서 부드러운 행복을 느껴보세요!', '주차 불가능', '3호선 남부터미널역 1번출구에서 교대방향으로 약 200m직진, 서울교대사거리 근방에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2030', '0830-1930', '0800-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (462, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '편안한 공간에서 여유롭게 커피를 즐기실 수 있는 서초동점입니다.', '주차불가능', '남부터미널역 3번출구에서 도보 약 10분, 서일초등학교 골목 초입', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (486, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '커피향으로 가득한 섬, 강남GT타워점입니다.', '1.주차가능 2.주차장위치-지하주차장 3.주차가능대수-100대이상 4.주차조건-1시간 무료 5.주차정산방법-파트너에게 요청', '2호선 강남역 9번 출구를 나오셔서 도보로 1분 거리입니다.', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-2000', '0900-1700', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (396, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '바리스타의 정성이 담긴 음료와 탁 트인 높은 천정 아래 편안한 공간이 매력적인 교대법원점입니다.', '주차 불가능', '지하철 2호선 교대역 6번출구에서 아크로비스타 방향으로 150m 직진', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0900-1930', '0900-1930', '0900-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (299, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '예술의 전당에서의 멋진 공연, 그 감동의 순간을 더욱 오래 느끼도록 해드리는 매장, 예술의전당점입니다.', '주차불가능', '3호선 남부터미널역 5번출구로 나와서 남부터미널 끼고 좌회전 후, 약 400M 직진. 우측 백년옥 옆 예전빌딩 1층
(남부터미널역 5번 출구 앞 정류장에서 서초22번 마을버스 이용, 예술의전당역 하차)', 'N', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (25, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '언제 방문해도 항상 편안하고 기분이 좋아지는 공간, 서초역점입니다.', '주차 불가능', '지하철 2호선 서초역 2번 출구에서 약 100M , 사랑의교회 맞은편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (97, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '친절하고 신속한 서비스를 제공하는 강남역 9번출구에 위치한 기분좋은 몬테소리점입니다!', '주차 불가능', '지하철 2호선 강남역 9번 출구 오른편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (100, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', NULL, '다양한 문화가 서로 조화롭게 공존하는 평화로운 쉼터, 서래마을 입구점입니다.', '주차 불가', '반포 래미안에서 서래마을쪽 방면 300m, 건너편 서래마을 초입 왼편에 위치.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0730-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (103, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T36@P60@P80', 'WHCROAD', '남부터미널역 5번 출구 전방 100M,남부터미널 2점입니다.', '주차 불가능', '지하철 3호선 남부터미널역 5번 출구에서 100M 직진', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0830-2100', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (23, 'T04@T08@@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '양재천에서 산책 후 커피한잔 어떠세요? 안락하고 여유로운 휴식을 즐기실 수 있는 영동2교점 입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수-선착순 3대 4.주차조건- 평일 건물 주차관리요원에게 문의/ 주말무료', '지하철 3호선 양재역 5번 출구에서 직진. 마을버스 18번,21번 환승, 원불교정류장(서초노인사회복지관) 하차, 100M 직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (768, 'T04@T05@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '제3의 공간, 아늑하고 편안한 신논현역점으로 오세요!', '주차 불가능', '신논현역 2번 출구에서 약 70M 거리
', 'N', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0900-2000', '1030-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (277, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '쇼핑의 즐거움, 나른한 오후 즐거운 브레이크 타임, 휴식같은 편안한 공간이 있는 하이브랜드점입니다.', '1. 주차가능 2. 주차장 위치- 빌딩 지하 3층 3. 주차가능대수- 100대 이상 4. 주차조건- 조건부 무료(기본 60분, 당일 5만원 이상 구매 시 180분 무료) 5. 주차요금정산방법- 출차 시 영수증 제시', '코스트코 양재점 맞은편 하이브랜드 1층 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (207, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '아늑하고 향긋한 커피향이 가득한 교대점입니다.', '주차 불가능', '지하철 2,3호선 교대역 13번 출구로 나와 왼쪽 편', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0830-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (214, 'T04@T05@T07@T08@T16@T17@T20@T30@P80', 'WHCROAD', '강남도심속의 편안한 휴식처 ''강남2점''에서 여유로운 커피한잔을 즐겨보세요.', '주차 불가능', '지하철 2호선 강남역 10번 출구에서 100M 직진 후 지오다노옆 골목 진입, 15M 직진하시고 왼쪽으로 20M 직진 후 오른쪽', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (174, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑의 즐거움과 일상의 여유로움을 만끽할 수 있는 나만의 휴식처, 뉴코아강남점입니다.', '1.주차가능 2.주차장 위치 -킴스클럽 3.주차가능대수- 10대이상 4.주차조건- 당일영수증 2시간무료 5.주차요금정산방법-당일영수증을 매장 파트너에게 제시 후 차량 등록 필요.', '3호선 잠원역 3번출구 600m, 3호선,7호선 고속터미널역 8-2번에서 500m, 7호선 반포역 4번출구에서 500m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (217, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P60@P80@P90', 'WHCROAD', '바쁜 일상 속 한잔의 편안한 쉼표, 스타벅스 남부터미널점은 소소한 일상에 행복을 드립니다.', '1. 주차가능 2. 주차장위치 - 건물 지하 주차장 이용(지하 1층) 3.주차가능대수 - 20대 이상 4.주차조건 - 1만원 이상 구매 시 1시간 무료주차권 지급 (스타벅스카드 충전금액 미포함/ 당일 영수증에 한함) 5.주차정산방법-파트너에게 요청하시면 무료 주차권 지급', '지하철 3호선 남부터미널역 3번 출구 옆', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (233, 'T04@T05@@T07@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '넓은 주차시설과 지하철 이용이 편리한 반포지역 주민의 사랑방, 반포역점 입니다.', '1.주차가능 2. 주차장위치-매장 전면 3. 주차가능대수 10대이상 4.주차조건 -조건부 무료(영수증 만원이상 1시간 무료) 5. 주차요금 정산방법 -출차 시 영수증 제시', '지하철 7호선 반포역 6번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (218, 'T04@T05@T07@T08@@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '환영합니다! 스타벅스 방배역점입니다. 커피 한 잔으로 즐거운 하루를 선물해 드리겠습니다.', '주차 불가능', '지하철 2호선 방배역 4번 출구', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (78, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36@P80', 'WHCROAD', '도심빌딩 숲속 단독2층건물에서 운치있는 커피 한 잔의 여유가 있는 강남삼성타운점입니다.', '주차 불가능', '지하철 2호선 강남역 6번 출구 던킨도너츠 옆 골목 진입 후 좌회전', 'N', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0800-2100', '0900-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (662, 'T04@T05@@T07@T08@T16@T17@T20@T30@T36@P60@P80@P90', 'WHCROAD', '설레임과 따뜻한 추억의 공간 스타벅스 센트럴시티점입니다.', '파미에스테이션주차장-구매금액 3마원이상 1시간무료/신세계백화점 주차장-구매금액 5만원이상 한시간 무료/ 영수증 합산 가능/ 미충족시 기본요금 10분에 1000원', '지하철 3,7,9호선 고속터미널역 하차
3번 혹은 7번 출구를 통해 센트럴파크 1F으로 이동 후, 센트럴터미널(호남선 방면)위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (730, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '부드러운 커피향이 가득한 서초중앙로점에서 여유로운 하루를 보내세요.', '주차 불가능', '교대역 6번 출구 마을버스 서초 10번 이용, 한양아파트 하차.
고속터미널역 8-1번 출구 지선 3012번 이용 &gt; 반포미도아파트 앞 하차
고속터미널역 8번 출구 마을버스 서초 10번 이용 &gt; 반포미도아파트 앞 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (751, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '좋은 사람들과 멋진 문화공간이 함께하는 서울아트센터점에서 커피 한 잔으로 여유를 찾아보세요.', '1. 주차가능 2. 주차장 위치- 입점 빌딩 지하 2층 3. 주차가능대수- 5대 이하 4. 주차조건- 조건부 무료(당일 구매 시 1시간 무료) 5. 주차요금정산방법- 출차 시 영수증 제시', '예술의전당 맞은편 SK 주유소 옆
호경빌딩 1층
', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0730-2100', '0800-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (729, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P80', 'WHCROAD', '바쁜 일상에서 나만의 여유를 가질 수 있는 공간, 친근한 파트너와 달콤한 커피향이 베여있는 서초파라곤점입니다.', '1. 주차가능 2. 주차장위치-건물내 지하 3. 주차가능대수-제한없음(장애인2대 포함) 4. 조건부 무료(영수증 1만원 이상 주차권 50분 무료/ 이후 10분당 1000원) 5. 주차요금정산방법-파트너에게 요청', '지하철 2호선 강남역 6번 출구 던킨도너츠 옆 골목 진입 후, 두 블록 직진 후 편의점 앞 좌회전', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-1930', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (753, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '바쁜 일상에 지친 당신의 마음에 커피 한 잔의 여유로움을 드리는 내방역점으로 초대합니다.', '주차 불가능', '내방역 7번출구 방면 240M , 1-2층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (811, 'T03@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '활기차고 편안한 휴식 공간, 이수역점입니다.', '주차불가능', '이수역 3번 출구 50m직진 총신대입구역 2번 출구 50m직진', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (831, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P60@P70@P80', 'WHCROAD', '강남대로변에 위치한 안락하고 편안한 제 3의 공간, 논현역점입니다.', '주차 불가능', '지하철 7호선 논현역 6번출구 앞
지하철 3호선 신사역 4번출구 나와 약 400M 직진, 도보로 7분 소요', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1900', '0900-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (830, 'T03@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '지하철 3호선, 신분당선과 인접하여 출근길 상쾌한 하루의 시작과 퇴근길 지친 하루의 마무리를 지을 수 있는 양재역점에서 편안한 휴식을 즐겨보세요.', '주차불가능', '양재역 8번출구 전방 도보 100미터 내', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (792, 'T04@T05@T08@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '교대역 사거리가 한눈에 내려다보이는 교대역점에서 특별한 커피 한잔 어떠세요?', '주차 불가능', '교대역 6번,7번 출구 코너 우림빌딩 1,2층
(KFC YK법률사무소와 같은건물)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2100', '0830-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (812, 'T03@T05@@T08@T16@T17@T20@T22@T26@T29@T30@T36@P60@P80', 'WHCROAD', '특별한 경험을 선사하는 고품격 리저브 매장 파미에파크R점에서 다양한 원두와 추출 기구를 만나보세요.', '1.주차가능 2.주차장 위치 : 매장 후면 파미에스테이션 주차장 3. 주차가능대수 -5대이상 4. 주차조건 -몰합산 구매금액 3만원 이상 60분 무료(조건미충족시 기본요금 10분 1000원) 5. 주차요금 정산 방법 : 출차시 영수증 제시', '지하철 3,7,9호선 고속터미널역 4번출구에서 JW메리어트호텔 방면으로 도보 10m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (970, 'T04@T05@T07@T08@T16@T17@T20@T21@@T30@T36@P80', NULL, '언제나 함께하고 싶은 달콤하고 편안한 분위기의 사당로데오점 입니다.', '주차불가능', '사당역(지하철 2, 4호선) 13번 출구 앞 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1051, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '사계절이 아름다운 청계산과 커피향기가 함께 어우러지는 청계산입구역점입니다.', '1. 주차가능 2. 주차장 위치- 빌딩 지하 3. 주차가능대수- 20대 이상 4. 주차조건- 조건부 무료(구매 품목당 1시간 무료 / 차량 1대당 최대 2시간) 5. 주차요금정산방법- 파트너에게 요청', '지하철 신분당선 청계산입구역 2번출구 직진, 횡단보도앞 214m(도보 약 2분) / 
지선버스 4432 청계산입구역 하차 후 내곡드림시티1차 방향 도보 약 5분
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1064, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심속의 편안한 공간 서초법원점입니다.', '주차불가능', '교대역(2,3호선)9번출구로 나오셔서 직진(도보3분) 블루콤타워 1층에 위치하고 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1024, 'T04@T05@T07@T08@T16@T17@@T20@T21@T30@T36', 'WHCROAD', '카페골목의 새로운 핫플레이스, 방배카페거리점에 오신 것을 환영합니다.', '주차불가능', '지하철 2호선 방배역 4번 출구 또는 7호선 내방역 2번 출구 앞에서 서초 15 마을버스 탑승 후 유경약국 하차', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1013, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P70', 'WHCROAD', '"환영합니다." 향기로운 커피로 당신의 하루를 채워드릴 스타벅스 방배점 입니다.', '1. 주차 가능 2. 주차장 위치 - 건물 후면 유료주차장 이용 3.주차가능대수 - 10대 (장애인 1대 포함) 4. 주차조건 -유료 ( 60분, 3천원) 5.주차요금정산방법 - 주차장에서 직접 정산', '지하철 7호선 내방역 6번 출구에서 250m 거리에 위치', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2130', '0830-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1205, 'T03@T05@T07@T08@T16@T17@T20@T21@T22@T26@T29@T30@T40@T42', 'WHCROAD', '다양한 추출기구와 리저브 커피를 즐길 수 있는 강남대로논현점입니다.', '주차 불가능', '논현역 3번출구 도보6분(350m)
신논현역 2번출구 도보 5분거리(300m) 
고도일 병원 옆에 위치', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2000', '0900-1900', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1195, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36@P60@P80', 'WHCROAD', '바쁜일상속에 커피한잔의 여유를 서울고속터미널점과 함께하세요~', '주차 불가', '지하철 3,7,9호선 고속터미널 역 하차
서울고속버스터미널 경부선 1번 승차홈 앞에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1192, 'T04@T05@T07@T08@T16@T17@T20@T21@P80', NULL, '프리미엄 반자동 머신으로 최상의 커피를 즐기실 수 있는 강남대로신사점 입니다.', '주차 불가능', '지하철 3호선 신사역 4번출구 80m(2분거리)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-1900', '0830-1800', '0830-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1236, 'T05@T07@T08@T20@T21@T30@T36@P80', 'WHCROAD', '도심속 오아시스 같은 스타벅스 이수역사거리점에서 휴식을 취하세요.', '주차가능/입점 건물 지하주차장/50대 이상/유료(10분당 500원/10분 이내 출차 시 요금 부여 없음)', '지하철 7호선 이수역 4번 출구 나온 방향으로 20m 직진', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1301, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '빌딩 숲 속의 오아시스 같은 서초우성사거리점에서 휴식을 즐기세요', '주차불가능', '신분당선 강남역 5번출구에서 직진 (도보 약 5분)
신덕빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1324, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '안녕하세요, 양재역의 새로운 쉼터 서초구청점에서 완벽한 한 잔의 커피와 함께 여유를 즐기세요.', '주차불가능', '지하철 3호선 양재역 1번 출구에서 도보 5분 거리 
국립외교원 맞은편 토니모리 사옥 1층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1354, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', NULL, '지친 일상에 향기로운 커피와 편안함을 드리는 서초역이화빌딩점에서 힐링하세요~', '주차 불가능', '지하철 2호선 서초역 3번 출구에서 도보 5분', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2000', '0800-2000', '0700-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1353, 'T04@T05@T08@T16@T17@T20@T30@T36@P60@P80', 'WHCROAD', '바쁜 도심속 잠시나마 커피한잔의 여유를 즐기며 힐링할 수 있는 스타벅스 센트럴F1점입니다.', '1.주차가능 2.주차장위치-백화점주차장,파미에주차장3.주차가능대수-100대이상4.주차조건 -조건부무료 (영수증합산5만원이상 1시간무료 (백화점주차장)영수증합산3만원이상1시간무료(파미에주차장)5.주차요금정산방법 -출차시 영수증 제시', '지하철 3,7,9호선 고속터미널역 하차
3번 혹은 7번 출구를 통해 센트럴시티 터미널 1F으로 이동 후, 신세계백화점 강남점내 센트럴시티 출구방면', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1362, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '언제나 기분좋게 커피한잔과 함께 힐링되는 스타벅스 방배다이치빌딩점입니다.', '주차 불가능', '- 지하철 2호선 : 방배역 4번출구 내방역 방향 380m 
- 지하철 7호선 : 내방역 2번출구 방배역 방향 500m 
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1382, 'T03@T05@T08@T16@T17@T20@T22@T26@T29@T30@T33@T36@T40@T42@P80@P90', NULL, '커피의 아로마와 책 향기가 공존하는 문화의 공간 강남교보타워R점 입니다.', '주차 불가능', '9호선 신논현역 6-7번 출구 교보타워 1층', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1550, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36@P20@P80@P90', 'WHCROAD', '넓고 쾌적한 공간과 커피 한 잔의 여유를 드리는 방배로점 입니다.', '1.주차가능 2.주차장위치 - 건물 지하주차장 (지하 3~4층 이용) 3.주차가능대수 - 80대 이상 4.주차조건 - 구매시 30분 추가 무료 (이후 10분당 천원) 5.주차요금정산방법 - 매장 파트너에게 요청', '지하철 2호선 방배역 1번출구에서 약 250M 직진, 감정평가사회관 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (867, 'T04@@T08@T09@T16@T17@T21@T30@P40@P80', 'WHCROAD', '유럽의 향기가 느껴지는 엔터식스한양대점에서 기분 좋은 경험을 약속드립니다.', '1.주차가능 2. 파크에비뉴 몰 지하주차장 3.20대 이상 4.조건부무료 : 구매영수증 1만원이상 1시간 무료, 2만원이상 2시간 무료 4.파트너에게 주차등록요청', '지하철 2호선 한양대역 1번출구에서 직진 후 건널목 건너 서울숲 더샵 엔터식스 방향 300M', 'N', '1100-2030', '1100-2030', '1100-2030', '1100-2030', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1712, 'T08@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '편안함과 즐거움이 가득한 곳, 행복낙낙한 성수낙낙점과 함께하세요.', '1. 주차가능 2. 주차장위치 - 건물지하1층~4층 3. 주차가능대수 - 50대이상 4. 주차조건 - 1시간무료, 이후 10분당 200원 5.주차요금정산방법 - 출차시 결제', '화양사거리 버스정류장 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (43, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑과 함께 즐기는 커피 한 잔의 여유! 일상의 여유로움을 만끽할 수 있는 성수이마트점입니다!', '1. 주차가능 2. 주차장위치 - 이마트 4,5층 3. 주차가능대수 - 100대이상 4. 주차조건 - 구매 영수증에 주차정산 꼬리 영수증 출력 2시간 무료 5. 주차정산방법 - 꼬리 영수증으로 정산기 이용하여 사전 정산', '지하철 2호선 성수역 4번 출구에서 직진, 이마트 성수점 2층', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (90, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '유럽의 길을 옮겨 놓은듯한 엔터식스점에서 커피를 즐겨보세요.', '1.주차가능 2. 주차장위치 - 건물지하 3. 주차가능대수 - 10대이상 4. 주차조건 - 당일 영수증 기본 1시간 무료, 건물내 상점 이용금액에 따라 최대 5시간 가능 5. 주차정산방법 - 파트너에게요청', '지하철 2호선,5호선,중앙선 왕십리역과 연결된 엔터식스 쇼핑몰 지하 1층 회전목마 앞
(지하철 5번 출구와 연결되어 있는 에스컬레이터 이용 후 왼쪽으로 직진)', 'N', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (160, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '젊고, 활기찬 문화의 전통이 있는 공간. 스타벅스 한양대점입니다.', '1. 주차가능 2. 주차장 위치 - 건물앞 3. 주차가능대수 - 5대 4. 주차조건 - 최초 1시간 무료 이용, 이후 1시간당 3천원 5. 주차요금정산방법 - 건물측 관리인에 지불', '한양대학교 정문 맞은 편', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0730-2000', '0730-2000', '0730-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (919, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P60@P80@P90', 'WHCROAD', '왕십리를 밝혀주는 공간, 사람과 커피가 만나는 곳 왕십리역점입니다.', '1. 주차 가능 2. 건물 지하 주차 3. 10대 이상 4. 30분 이후 유료 (매장 지원 없음) 4.파트너에게 주차 등록 요청', '왕십리역 1번출구로 나와서 약 200m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1165, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '향긋한 커피와 따뜻한 파트너가 있는 공간, 왕십리 뉴타운의 랜드마크 상왕십리역점 입니다.', '1. 주차 가능 2. 동인병원 지하 주차장 3. 10대 이상 4. 조건부 무료, 최초 10분 무료, 이후 30분 3천원(기본), 추가 10분당 1천원, 매장지원없음', '2호선 상왕십리역 1번 출구에서 도보 3분 동인병원 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1246, 'T04@T05@T07@T08@T12@T16@T17@T20@T21@T22@T30@T32@T36@P80@P90', 'WHCROAD', '청년창업지원과 지역사회를 위해 기여하는 커뮤니티스토어 2호점 성수역점입니다.', '1.주차불가능', '성수역 2호선 3번출구 이마트 성수점 방면 30m, 호텔아띠 옆 세림빌딩 1층', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1208, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '한잔의 커피로 여유로운 휴식을 느낄 수 있는 공간, 황학사거리점입니다.', '1. 주차 가능 2.센트라스 상가 지하 3. 20대 이상 4. 무료', '지하철 2호선, 6호선 신당역 2번출구에서 황학사거리 방면으로 도보 10분', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1288, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '한강에 부는 바람처럼 산뜻한 커피향을 담고 있는 뚝섬역점입니다.', '1. 주차불가능', '지하철 2호선 뚝섬역 5번 출구 하차 후 도보 1분 정명빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1594, 'T04@T05@T08@T16@T17@T20@T21@T30@T34', NULL, '은은한 커피의 향기가 가득한 금호역점에서 잠시 쉬어가세요', '주차 불가', '지하철 3호선 금호역 3번 출구 앞에 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1576, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36@P80@P90', NULL, '여유로운 쉼터의 공간 스타벅스 서울숲역점입니다.', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 2~5층 3. 주차가능대수 - 100대이상 4. 주차조건 - 1만원 이상 구매시 30분 무료, 이후10분당 천원 5.주차요금정산방법 - 파트너에게 요청', '분당선 서울숲역 2번 출구 100미터 메가박스 성수점 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (466, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '커피와 음악, 문화가 공존하는 공간, 한성대입구역점입니다.', '1. 주차가능 2.주차장 위치: 입점 건물 지하2층 3. 주차 대수-10대 미만 4. 주차조건-유료 . 최초 30분당 3천원, 추가 10분당 1천원', '4호선 한성대입구역 5번출구 전방 50m', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (558, 'T04@T05@T08@T16@T17@@T20@T21@T30@T32@T34@T36@P20@P80', 'WHCROAD', '안암역점에서 대학가의 정취와 낭만을 느껴보세요.', '주차 불가능', '지하철 6호선 안암역 3번출구 도보로 3분거리
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (510, 'T04@T05@@T08@T16@T17@T20@@T21@T30@T36@P20@P80', 'WHCROAD', '빨간벽돌,녹색로고 속 아늑하고 넓은 쉼터 스타벅스 성신여대점 입니다.', '주차 불가능', '지하철 4호선 성신여대입구역 1번출구, 길음방면으로 태극당 골목안쪽으로 50m이내', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (57, 'T04@T08@T09@T16@T17@T20@T30@T32@T34@T36@P40', 'WHCROAD', '고품격 문화 공간과 커피가 만나는 그 곳, 현대미아점 입니다.', '1.주차가능 2.주차장위치 -백화점 주차장 3. 가능대수-100대이상 4.주차조건-결제금액 1만원 이상 60분, 3만원 이상 120분, 5만원 이상 180분 무료주차 가능(스타벅스 영수증 합산 가능 / 단, 스타벅스 무료음료 쿠폰 적용시 결제금액 합산 불가) 5.주차정산방법- 파트너 문의', '4호선 길음역 9번 출구 미아삼거리 방향으로 500M (도보 10분), 
미아삼거리역 4번 출구 길음 방향 450M (도보 8분)

', 'N', '1030-2000', '1030-2000', '1030-2000', '1030-2000', '1030-2030', '1030-2030', '1030-2030', '1030-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (203, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '대학가의 젊음과 패기를 느낄수있고 바리스타의 환한 미소로 편안한 안식처가되는 고대점입니다.', '주차 불가능', '지하철 6호선 안암역 3번 출구에서 참살이길 방향으로 200m 직진 후 왼쪽', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (615, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P40@P80', 'WHCROAD', '월곡역점에서 커피의 여유를 즐겨보세요.', '1.주차가능 2.주차장 위치 -홈플러스 지하 주차장 3. 주차가능대수 -50대이상 4.주차조건- 무료 ( 4시간 이용 가능)', '월곡역 1번 출구에서 도보 1분

', 'N', '0800-2130', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (726, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80', 'WHCROAD', '친근한 파트너와 여유를 가지며 커피를 즐길 수 있는 삼선교점입니다.', '1.주차 불가능', '4호선 한성대 입구역 1번 출구 전방 50M', 'N', '0730-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (997, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '고품격 인테리어와 함께 아늑한 커피향을 경험하실 수 있는 종암점 입니다.', '1.주차 불가능', '종암경찰서 맞은편 고려대역 방향 100m 
[버스 이용 시]
일반 : 111
간선 : 101,110A,121,130,141,144,148,163
지선 : 1017,1111,1213,7211', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1077, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '젊음과 낭만이 있는 스타벅스 성신여대정문점입니다.', '주차불가능', '성신여대입구역 (4호선) 1번출구 성신여대정문 방향 (도보 5분)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1206, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '은은한 커피향과 함께 진정한 휴식을 즐길 수 있는 미아점입니다.', '1.주차 불가능', '현대백화점 미아점 건너편 횡단보도 앞, 성북우체국 옆
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1369, 'T01@T04@T05@T08@T16@T17@T20@T35@T36@P20@P80@P90', 'WHCROAD', '빠르고 편리한 DT(Drive Thru)서비스로 일상에 활력을 더하는 종암DT 점입니다.', '주차 불가능 (* 매장 옆 고대 교우회관 공영 주자창 이용 부탁드립니다. )', '고려대역 2번출구에서 종암경찰서 방향 전방 300m (고려대 교우회관 옆)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1540, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T34@T36@P40', NULL, '향기로운 커피한잔의 여유로움, 편안함과 즐거움이 있는 곳, 미아이마트점 입니다~*', '1.주차가능 2.주차장 위치-이마트 유료주차장 이용 가능 3.주차가능대수 -50대이상 4.주차조건-구매시 최대 2시간 무료주차 가능 / 10분당 1,000원 추가 요금 5.주차정산방법-이마트 키오스크 주차정산 시스템 등록', '미아사거리역 4번 출구에서 전방 150M거리 미아이마트내 입점', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1571, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T34@T36@P80', 'WHCROAD', '커피와 함께하는 즐거운 나만의 휴식공간 길음역점 입니다.', '1.주차 가능 2.주차장위치-건물내2~3층 위치 3.주차가능대수-10대이하 4.주차조건- 60분 무료주차 가능 (건물내 영수증 중복 합산 불가/ 추가시 30분당 1,500원 발생, 주차장에서 주차권 발급 필수) 5.주차요금정산방법- 주차권으로 건물주차장관리실 정산', '길음역 2번출구 건너편 횡단보도 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1694, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '도심속 편리한 Drive thru와 여유로운 커피한잔을 즐기실 수 있는 스타벅스 송파마천사거리DT점입니다.', '1. 주차가능 2.주차장위치- 매장 왼쪽 골목방향,Drive thru 진입하지 않고 주차가능 3.주차가능대수-3대 4.주차조건:매장 이용 시 무료', '거여역 3번출구 도보 10분
마천사거리 버스 정류장 도보 1분(노선:3214,3315,3316,3318,3416)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1674, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '아늑한 공간과 풍요로운 휴식을 즐길 수 있는 스타벅스 몽촌토성역점입니다.(10월 18일 건물전기점검으로 10시 오픈)', '1. 주차 불가능', '몽촌토성역 2번 출구 도보 1분, 벤츠 옆 건물', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (405, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '미래도시에서 쇼핑과 휴식을 한번에 즐길 수 있는 곳, 가든파이브점입니다.', '1.주차가능 2. 주차장위치- 가든파이브툴관 지하2,3,4층 이마트주차장 3.주차가능대수- 약 1,800대 이상 4.주차조건-스타벅스 이용 시 1시간 무료(1시간 기본무료, 총 2시간무료, 이후 10분당 300원) 5.주차요금정산방법- 파트너에게 주차등록 요청', '지하철 8호선 장지역 4번 출구 가든파이브 방향으로 나와 가든파이브 웍스관을 지나, 툴관 초입 이마트 출입구 에스컬레이터 지하 1층에 위치', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (475, 'T04@T05@@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '향기로운 커피향이 있는 새로운 공간 가락시장역점입니다.', '1.주차가능 2.주차장위치- 입점건물 지하 1층 3.주차가능대수-3대(지정 구역 외 주차 불가, 주차장 협소) 4.주차조건-무료', '가락시장역 4번 출구에서 300M롯데캐슬 파인힐1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (344, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '환영합니다! 내 집처럼 편안한 스타벅스 석촌역점입니다.', '1. 주차 가능 2. 주차장 위치 - 매장 후면 주차타워3. 주차가능대수 5~10대 4. 주차조건 - 조건부 무료(스타벅스 이용시 15분 무료) 5. 주차요금정산방법 - "pos에서 주차권에 주차 도장"', '지하철 8호선 석촌역 6번 출구 한솔아파트 방면 100M 직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0800-2100', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (503, 'T04@T05@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '가락동의 숨은 힐링 플레이스, 친절한 파트너가 언제나 환영하는 스타벅스 가락본동점입니다.', '1.주차불가능', '가락시장역 3번 출구, 소방공제회관 골목 50M
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0900-2000', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (591, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '언제나 만남의 중심이 되는 편안하고 안락한 올림픽아파트점입니다.', '1.주차가능 2.주차장위치- 매장전면(상가 지상주차장) 3.주차가능대수-20대이상 4.주차조건-유료(매장지원불가/10분당 1000원), 출차 시 결제', '지하철 5호선 올림픽 공원역 2번출구에서 10분거리, 올림픽 스포츠 센터 1층에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (270, 'T05@@T08@T09@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '큰 창 가득 사계절의 아름다운 풍경이 있는 스타벅스 아시아선수촌점입니다.', '1. 주차불가', '지하철 9호선 종합운동장역 9번 출구에서 대각선 방향으로 5분 정도 직진, 애플타워 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (276, 'T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P90', 'WHCROAD', '진귀한 커피를 쇼핑할수 있는 여유로움의 공간', '1. 주차가능 2. 주차위치 - 건물 상가 지하주차장 3. 주차가능대수 - 10대 이상 4. 주차조건 - 스타벅스 이용고객 2시간 5. 주차등록 - 파트너에게 요청', '잠실역 2호선 4번출구에서 롯데마트 방향 100M 위치한 매장', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (211, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '일상 생활속 에너지 충전, 도심속의 편안한 휴식처, 따뜻한 햇살로 가득한 잠실역점입니다.', '1. 주차가능 2. 주차위치 - 건물 지하주차장 3. 주차가능대수 - 30대 이상 4. 주차조건 - 조건부무료(음료구매시 30분 무료주차/초과시 10분당 1000원) 5. 주차요금정산방법 - 출차 시', '잠실역 7번 출구에서, 잠실대교 방향으로 약 50m 직진', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (663, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '바쁜 일상 속에 여유로움과 향기가 있는곳, 잠실새내역점입니다.', '1. 주차불가', '잠실새내역 4번 출구 직진 400M', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (661, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@P80@P90', 'WHCROAD', '편안한 휴식처 럭셔리한 공간, 이국적인 분위기가 물씬 풍기는 커피향 가득한 잠실푸르지오월드점입니다.', '1. 주차가능 2.주차장위치 - 건물 지하상가주차장 3. 주차가능대수 - 10대이상 4. 주차조건 - 조건부무료 (1만원 이상 구매 1시간 무료 / 초과 시 10분당 1천원부과 5. 주차정산방법 - 파트너 사전문의 후 출차시 결재', '잠실역 8번출구 도보 5분 거리 홈플러스 맞은편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (700, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향긋한 커피와 함께 석촌호수를 온전히 만끽할 수 있는 스타벅스 석촌호수점 입니다.', '1. 주차 불가능', '- 2호선 잠실역 2번 출구에서 도보 15분
- 8호선 석촌역 1번 출구에서 도보 15분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (705, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '부드러운 커피 향이 가득한 장소 스타벅스 방이역점 입니다.', '1.주차불가능', '지하철 5호선 방이역 1번 출구 방향 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (781, 'T04@T05@T08@T16@T17@T20@T21@@T30@T36@P80', 'WHCROAD', '밝고 활기찬 올림픽공원남문점의 커피가 선사하는 여유로움을 만끽하세요', '1.주차불가능', '지하철 : 몽촌토성역 2번 출구에서 직진(도보 15분)
버스 : 올림픽공원 남2문 정류장 하차(24-221), 태평양파크빌라트 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (809, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '가락시장역 8번출구와 인접해 있는 올림픽훼미리점에서 좋은 사람들과 함께 향긋한 커피 한 잔을 경험해보세요.', '1.주차가능 2.주차장위치-건물 지하2,3층 기계식 주차장 (직접주차) 3.주차가능대수-40대이상 4.주차조건- 매장 이용 시 2시간무료 (무료 이외 30분 2,000원) 5.주차요금정산방법-영수증제시', '지하철 : 지하철 3, 8호선 가락시장역 8번 출구 바로 앞 
버스 : 훼미리근린공원(24-334)역에서 하차하여 도보로 약 50m 직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (879, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '로데오거리의 새로운 휴식공간, 커피향 가득한 문정로데오점입니다.', '1.주차가능 2주차장위치-입점건물 지하1층(기계식주차) 3.주차가능대수-10대 4.주차조건-영수증 지참 시 30분 무료주차/ 운영시간 : 평일 20시, 토요일 15시까지 (공휴일,일요일 주차불가)', '지하철 8호선 문정역 1번출구에서 700M,
지하철 3호선 경찰병원역 4번출구에서 500M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (904, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '석촌호수와 인접한 편안한 공간에서 스타벅스의 커피를 즐겨보세요.', '1. 주차 가능 2. 주차장 위치 - 매장 후면 입점 건물 지상 1층 3. 주차가능대수 : 5대 이하 4. 주차 조건 : 조건부 유료(상품 구매 시, 최초 90분 2천원, 이후 20분당 1천원) 5. 주차요금정산방법 : 출차시 영수증 제시', '석촌고분역 1번출구 도보 5분, 석촌호사거리(서호) 군산오징어 옆 건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (948, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '탁트인 송파대로를 한눈에 바라보며 향긋한 커피를 즐길 수 있는 송파사거리점입니다.', '1. 주차 불가능', '지하철 8호선 송파역 1번출구에서 잠실방향으로 도보 7분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1049, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '따뜻한 분위기, 친절한 파트너, 향기로운 커피가 함께 하는 송파아이파크점입니다.', '1. 주차가능 2. 주차장 위치 -입점 건물 지하 주차장 3. 주차가능대수 20~50대 4. 주차조건 - 조건부무료 (스타벅스 이용시) 5. 주차요금정산방법 - 포스에서 영수증에 도장', '장지역 도보 10분, 가든파이브 웍스동 맞은편 송파아이파크 오피스텔 1층.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1002, 'T04@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '바쁜 일상 속 커피 한잔의 여유로 마음의 평화를 찾을 수 있는 올림픽평화의문점입니다.', '1.주차불가능', '9호선 한성백제역 3번출구 나와서 오른편에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1139, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36@P80', 'WHCROAD', '송파구청 맞은편에 위치한 따뜻한 미소와 즐거움이 있는 송파구청점입니다.', '1. 주차가능 2. 주차장위치 - 매장 후면 입점건물 지하주차장 3. 주차가능대수 5대이하 4. 주차조건 - 조건부유료 (30분당 1500원)', '잠실역(8호선) 10번출구 나와 50m 직진후 건너편(송파구청 맞은편) 잠실리시온 1층에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1106, 'T01@T04@@T08@T16@T17@T20@@T36', 'WHCROAD', '송파지역의 첫 Drive Thru 매장, 향기로운 커피향이 가득한 송파방이DT점 입니다.', '1.주차불가능', '방이동 미성아파트앞 사거리 위치
(1) 오금역 1번출구에서 승차 후 한양 삼익아파트 정류장 하차 (노선 : 3313, 3314, 3315, 3417)
(2) 잠실역 4번출구에서 승차 후 삼익아파트(미성아파트) 정류장 하차 (노선 : 3313, 3315)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1233, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30', 'WHCROAD', '위례신도시 첫번째 스타벅스 매장, 커다란 통유리로 따뜻한 햇살이 들어오는 스타벅스 송파위례점입니다.', '1. 주차가능 2. 주차장 위치 : 매장 측면 입점건물 지하주차장 3. 주차가능대수 - 10~20대 4. 주차조건 : 조건부 무료 (스타벅스 이용 시 3시간 무료) 5. 주차요금정산방법 - 파트너에게 요청', '위례 2차 아이파크 초입 (위례 아이파크 애비뉴) 1층에 위치해 있습니다.', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1194, 'T03@T05@@T08@T09@T16@T17@T20@T22@T26@T29@T30@T36@T40@@P80@P90', 'WHCROAD', '프리미엄 리저브를 경험하실 수 있는 잠실대교남단점입니다.', '1. 주차가능 2. 주차장위치 - 건물 지하주차장 3. 주차가능대수 - 50대이상 4. 주차조건 - 조건부 무료 (구매 시 2시간 무료 / 초과 시 부과 5. 주차정산방법 - 파트너 사전문의 후 출차시 결재', '지하철 2호선 잠실역 7번 출구 150M 직진 타워730 1층에 위치', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1220, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '문정법조타운의 오아시스와 같은 스타벅스 문정역점입니다.', '1. 주차 가능 2. 주차장 위치 : 매장 후면 입점건물 지하주차장 3. 주차가능대수 50대 이상 4. 주차조건 : 조건부 무료 (30분 무료) 30분 초과시 10분에 500원 5. 주차요금정산방법 (건물내 정산기 이용)', '문정역 3번출구 앞 전방 50m 테라타워 B동 1층에 위치해 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1224, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '밝은 미소와 활기참이 있는 문정하비오점입니다.', '1. 주차 가능 2. 주차장 위치 - 입점건물 지하주차장 3. 주차가능대수 50대 이상 4. 주차조건 - 조건부 무료(60분 무료), 5. 주차요금정산방법 - 따로 없음(60분 무료)', '장지역 4번출구로 나와 가락시장역 방향 300m 직진하시면, 메가박스 입구 옆 송파파크하비오 1층에 위치해 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1352, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80', 'WHCROAD', '여유로운 힐링을 느낄 수 있는 아늑하고 향기로움이 가득한 송파개롱역점입니다', '1.주차불가능', '개롱역 3번출구에서 200m 직진 하시면, 국민은행 건물 1층에 위치해 있습니다. (도보 4분)

', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1402, 'T03@T05@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T36@T40@P90', 'WHCROAD', '특별한 리저브 커피를 경험할 수 있는 아름다운 휴식 공간 스타벅스 문정법원로R점 입니다.', '1. 주차가능 2.주차장 위치 : 매장측면 지하주차장 3. 주차가능대수 - 50대 이상 4. 주차조건 - 조건부 무료(영수증 당 1대, 90분 무료), 지하 주차장 (초과 10분 500원) 5. 주차요금정산방법 - 포스에서 영수증에 도장', '문정역 4번 출구에서 400m 직진 후 좌측 테라타워 2 1층에 위치하고 있습니다.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2100', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1441, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', NULL, '도심 속 여유와 낭만을 느낄 수 있는 곳 잠실시그마타워점입니다.', '1. 주차불가', '잠실역 2호선 8번 출구 도보 5분, 잠실시그마타워 1층', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1639, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '따뜻한 분위기, 친절한 파트너, 향기로운 커피가 함께하는 제3의 공간 송파헬리오시티점입니다.', '1. 주차불가능', '송파헬리오시티 GATE4 헬리오시티상가 내 입점되어 있습니다. 송파책박물관 인근 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1476, 'T01@T04@T05@T08@T16@T17@T20@T35@T36@P80', 'WHCROAD', '커피한잔의 여유와 빠르고 편리한 Drive Thru를 경험할 수 있는 스타벅스 송파나루역DT점입니다.', '1. 주차 불가능', '9호선 송파나루역 1번출구 도보 3분 (170m). 버스 3216, 3313, 3315, 3414 방이동사거리 정류장 하차 도보 1분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1679, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', NULL, '1. 주차가능 2. 주차장 위치 - 입점건물 지하 3~4층 3. 주차가능 대수 - 층별 장애인 주차 2대, 10대 이상 가능 4. 주차조건 - 조건부 무료(출차시 영수증 제시하여 확인 되면 3시간 무료) 5. 주차요금정산방법 - 출차시 영수증 제시', NULL, 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2130', '0730-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (347, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '모던한 인테리어와 아담하고 편안한 분위기를 가진 목동파라곤점입니다.', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 3층 ~ 5층 3. 주차가능대수 - 층별 장애인 주차석 2석, 10대 이상 4. 주차조건 - 조건부 무료( 파트너에게 영수증 확인 후 최대 90분 무료 주차 가능) 5. 주차요금정산방법 - 파트너에게 요청', '오목교역 2번출구에서 200m직진 SBS방송센터 맞은편 파라곤내 1층입니다.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (190, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑의 즐거움과 재밌는 영화관람까지 다양하게 누릴수 있는, 현대목동점입니다.', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 4층 ~ 6층 3. 주차가능대수 -(장애인 30대 포함) 1,100대 4. 주차조건 - 조건부 무료(파트너에게 구매 영수증 제시 차량등록 시 3시간 무료 주차 가능) 5. 주차요금정산방법 - 파트너에게 요청', '목동 현대백화점 내 지하2층 CGV 맞은 편', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (249, 'T04@T08@T09@T16@T17@T20@T21@T30@T36', NULL, '2층 넓은 창으로 보이는 이국적인 풍경이 함께하는 목동점입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하1층 3.주자가능대수 -(장애인1대 포함) 10대 4.주차조건- 조건부 무료(영수증 6천원 이상 30분 무료) 5.주차요금정산방법 - 주차권지급', '목동아파트 2단지 앞 우성에펠타운1층 / 지하철 오목교역 하차 도보 15분거리, 양천 02 마을버스 목5동 주민센터 정류장에서 하차', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (625, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '소중한 사람과 함께하는 커피한잔의 여유가 있는 목동5단지점 입니다.', '1.주차가능 2.주차장 위치- 입점건물 지하2층 3.주차가능대수-(장애인 1대 포함)10대 이상 4.주차조건-조건부 무료(영수증 6천원당 30분 무료_최대 2시간 무료) 5.주차요금정산방법-파트너에게 요청', '목동 월촌중학교 맞은편 부영그린타운3차 1층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (862, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '바쁜 일상을 잊을 수 있는 따뜻하고 여유로운 공간이 있는 목동7단지점 입니다.', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 2~ 3층 3. 주차가능대수 - (장애인 2대 포함)94대 4. 주차조건 - 조건부 무료(파트너에게 영수증 확인 후 최대 60분 무료 주차 가능) 5. 주차요금정산방법 - 파트너에게 요청', '오목교역 2번출구 방송회관건물 우회전 200M 직진
7단지 맞은편 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (953, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '신월IC로의 빠른 Drive Thru 편리성과 서서울 호수공원의 여유를 모두 느끼실 수 있습니다.', '1.주차가능 2.주차장 위치- 매장 측면 3.주차가능대수-3대 4.주차조건-무료', '김포공항에서 신월 IC 방향 200M 전
- 간선버스 651, 652, 653번 / 지선버스 6625, 6627번 
서서울호수공원 정류장 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (957, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '목동의 힐링스페이스, 오목교역점입니다.', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 1층 3. 주차가능대수 - (장애인 4대 포함)110대 4. 주차조건 - 조건부 무료( 영수증 지참_ 2시간 무료 주차 가능) 5. 주차요금정산방법 - 출차 시 영수증 제시', '5호선 오목교역 5번,6번출구 푸르지오 1층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1151, 'T04@T07@T08@T16@T17@T20@T21@T22@T30@T36@P90', 'WHCROAD', '한 잔의 커피와 함께하는 행복한 여유를 만끽할 수 있는 스타벅스 목동8단지 입니다.', '1.주차불가능', '오목교역8번 출구, 목동역5번출구 도보 13분, 
한국 전력공사 강서지점 옆에 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2130', '0730-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1113, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '여유로운 일상속에 따뜻한 정과 행복을 드리는 목동오목로점입니다.', '1.주차불가능', '5호선 목동역 4번출구 300M 직진, 좌측 현대프라자 1층 위치
', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1254, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P70@P80', 'WHCROAD', '가족, 연인, 친구들과의 여유롭고 안락한 도심 속 쉼터', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 1~2층 3. 주차가능대수 - (장애인 2대 포함) 60대 4. 주차조건 - 조건부 무료( 파트너에게 영수증 확인 후 30분 무료 주차 가능) 5. 주차요금정산방법 - 파트너에게 요청', '지하철 5호선 목동역 (2번출구 직진 60m 1층)', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1315, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '커피 한 잔의 즐거움과 편리한 Drive Thru 이용이 가능한 신정DT점 입니다.', '1.주차가능 2.주차장 위치- 매장 뒷편 3.주차가능대수-5대 4.주차조건-무료', '자차 이용 시 : 신정네거리에서 남부 법원. 경찰청 사거리 방면
대중교통 이용 시 : 5호선 신정역 3번출구 남부 법원 방향 도보 9분, 2호선 신정네거리역 3번출구 우측 납부 법원 방향 도보 10분
', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1408, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P90', NULL, '한잔의 커피로 행복을 만끽할 수 있는 목동의 행복공간', '1.주차가능 2.주차장 위치- 입점건물 지하2~3층 3.주차가능대수-(장애인 20대 포함)542대 4.주차조건-조건부 무료(영수증 5만원 미만 2시간 무료, 10만원 미만 3시간 무료, 10만원 이상 4시간 무료) 5.주차요금정산방법-출차 시 영수증 제시', '지하철 5호선 오목교역 2번출구 행복한백화점 방향으로 직진
버스 571, 603, 6624, 6637번 이용 후 "목동운동장남문.양구장.아이스링크" 정류장 하차', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1420, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '향긋한 커피와 따뜻한 서비스를 제공하는 등촌역점 스타벅스입니다.', '1.주차 불가능', '9호선 등촌역 4번 출구에서 직진하시면 됩니다. 
강서구 보건소 맞은편 마을버스 정류장 바로 앞 입니다.', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1556, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T35@P90', NULL, '안녕하세요. 파리공원의 여유와 감성이 함께하는 스타벅스 목동파리공원점 입니다.', '1.주차불가능', '서울 양천구 목동동로 377 1층 
서울 양천구 목동 907-18 1층 
', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0830-2130', '0830-2130', '0830-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1714, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', NULL, '파트너의 밝은 미소와 커피한잔의 여유가 있는 따뜻한 공간, 당산역사거리점입니다.', '1. 주차불가능', '당산역 2,9호선 12번출구 도보 1분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0800-2200', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (573, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P40@P80@P90', 'WHCROAD', '여의도 아침의 시작을 알리는 국제 공인 친환경 스타벅스 여의도IFC(1F)점입니다.', '1.주차가능 2.주차장위치:IFC몰 지하 주차장 3.주차가능가능대수-50 4.주차조건:조건부무료요금정산구매금액 2만원 이상 1시간, 4만원이상 2시간, 6만원이상 3시간, 10만원 이상 4시간 무료, 15만원 이상 5시간 무료 5.주차요금정산방법 :파트너에게 요청', '5호선, 9호선 여의도역 3번출구 Two IFC 1층 
(여의도 환승센터 횡단보도 바로 앞에 위치)', 'N', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '1000-2030', '1000-2030', '1000-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (342, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '답답한 빌딩 숲 사이, 편안한 커피 한 잔의 여유. 여의도의사당점입니다.', '주차 불가', '국회의사당역 2번출구 옆 국민은행 건물사이 길을 따라 정면 켄싱턴 호텔 좌측에 자리하고 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (295, 'T04@T05@T08@T16@T17@T20@T30@T34@T36@P40@P80', 'WHCROAD', '쇼핑과 문화를 동시에 즐길 수 있는 타임스퀘어2F점 입니다.', '1.주차가능 2.신세계타임스퀘어 지하층 3.100대 이상 4.입차후30분 무료', '영등포 타임스퀘어 2층에 있습니다.', 'N', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (329, 'T04@T05@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '아늑하고 쾌적한 플로어와 가족같은 파트너가 있는 영등포본동점 입니다.', '1.주차 불가능', '영등포동3가 영등포시장교차로에서 영등포로터리, 신길역방향 약200m. 영등포역, 영등포시장역에서 도보로 약10~15분거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '1000-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (414, 'T04@T05@T07@T08@T16@T17@T30@T36@P40@P80', 'WHCROAD', '여유로운 쇼핑과 커피 한잔의 휴식을 느낄 수 있는 타임스퀘어B2점입니다.', '1.주차가능 2.신세계타임스퀘어 지하층 3.100대 이상 4.입차후30분 무료', '1호선 영등포역 타임스퀘어 지하 2층 이마트 앞', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (375, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '커피향 가득한 도심속 오아시스, 여의도호성점에서 느끼세요!', '1.주차 불가능', '지하철5호선 여의도역 5번출구, 국민은행 여의도점과 KBS별관 사이위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (294, 'T04@T05@T07@T08@T09@T16@T17@T30@T36@P40@P80', 'WHCROAD', '언제나 따뜻함을 느낄 수 있는 곳 신세계타임스퀘어1F점입니다.', '1.주차가능 2.신세계 주차빌딩 3.100대 이상 4.영수증 제출 시 1시간 무료', '신세계타임스퀘어 백화점 리빙관 1층에 입점되어 있습니다.
백화점 오픈전인 오전9시~11시까지는 리빙관과 패션관 연결통로인 측면 출입문으로 들어오세요', 'N', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2030', '0900-2030', '0900-2030', '0900-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (323, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '지금까지의 문래동은 잊어라! 요즘 뜨고 있는 핫 플레이스!!! 문래동에 있는 스타벅스로 놀러 오세요~', '1.주차 불가능', '문래역 3번 출구 약 300미터 직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (268, 'T04@T05@@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '따스함과 안락함이 공존하는 그곳, 롯데캐슬여의도점입니다.', '1. 주차 가능 2. 주차장위치 입점건물지하 3.주차가능대수- 30대 4.주차조건 -조건부 무료 구매 시 120분 무료 5.주차요금정산방법-파트너에게 요청', '지하철 5호선 여의도역 5번 출구, 롯데캐슬엠파이어빌딩 1층', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (153, 'T04@T05@T07@T08@T16@T17@T20@T21@@T30@T36@P80', 'WHCROAD', '바쁜 일상 속, 따뜻한 커피 한잔과 함께 편안한 휴식처를 마련 하겠습니다.', '1. 주차 불가능', '지하철 5호선 여의도역에서 3번 출구, 첫번째 골목으로 진입 KB금융타워빌딩 1F', 'N', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0800-1900', '0900-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (73, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P40', NULL, '복잡한 일상에서 벗어나 편히 쉴곳이 필요한 고객님께 조용하고 아늑한 분위기의 아지트, 하이테크시티점입니다.', '1.주차가능 2.입점건물 지하층 3.10대 이상 4.조건부 무료(영수증 당 1시간 무료) 5. 파트너에게 요청', '지하철 2호선 문래역 6번 출구, 문래자이아파트 단지 가로질러 에이스하이테크시티 건물 1-1동 1층(도보 약5~10분)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (616, 'T04@T07@T08@T09@T16@T17@T20@T30@T36@P40@P60@P80', 'WHCROAD', '쇼핑과 여유의 상큼한 조화를 신세계타임스퀘어B2점에서 느껴보세요.', '1.주차가능 2.신세계타임스퀘어 지하층 3.100대 이상 4.입차후30분 무료', '신세계백화점 리빙관 지하2층 에스컬레이터 앞', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (701, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '아늑하고 편안한 제 3의 공간 여의도일신점에서 맛있는 커피 한 잔 어떠세요~?', '주차 불가', '국회의사당역 3번 출구로 나와 직진 후 삼희익스콘벤처타워에서 왼쪽으로 돌아 200m 직진 후 일신빌딩 1층', 'N', '0700-1930', '0700-1930', '0700-1930', '0700-1930', '0700-1930', '1000-1630', '1000-1630', '1000-1630');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (723, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '복잡한 빌딩 속의 편안한 휴식처와 따듯한 커피가 여의도 한양증권점에서 준비되어 있습니다.', '1.주차 불가능', '여의도역 5번출구 하차 후 도보로 10분', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (725, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '아늑하고 평화로운 분위기와 파트너의 미소가 늘 함께 하는 당산점입니다.', '1.주차가능 2.주차장 위치 - 건물 뒷편 3.주차가능대수 20대 이상 4. 주차조건 10분당 1천원, 기계식주차장', '지하철 2호선 당산역 1번 출구, 9호선 13번 출구로 나와 양화대교 방면으로 도보 500M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2030', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (851, 'T04@T05@@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '소중한 사람과 함께하는 커피 한잔의 여유가 있는 문래역점 입니다.', '1.주차가능 2.상가주차장 3.10대 이상 4.조건부 무료(스타벅스카드 충전 제외 / 1만원이상 영수증 당 1시간 무료 / 최대 1시간 가능) 5.파트너에게 요청', '문래역 5번 출구 이용', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (849, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '신속하고 친근한 Drive Thru와 넓고 쾌적한 Cafe가 공존하는 영등포신길DT점입니다.', '1.주차가능 2.건물 지하층 3.10대 이상 4.조건부 무료(영수증 당 1시간 무료) 5.파트너에게 요청', '신풍역 4번출구에서 뒤로 돌아 웨딩홀방향으로 500M 직진/ 
''신길한화꿈에그린아파트''정류장 앞/', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (852, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '바쁜 일상 속에 커피 한잔의 여유를 드리는 여의도ABL타워점 입니다.', '1.주차가능 2.주차장위치-지하주차장 3.주차가능대수-10 4.주차조건 -조건부무료 (구매금액 1만원 이상 60분 ) 5.주차요금정산방법 :파트너에게 요청후 할인권수령', '-여의도역 5번 출구 도보 5분, 여의도ABL타워 1층 
-9호선 샛강역 1번 출구 이용 직진 (도보 1분)', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0930-1730', '0930-1730', '0930-1730');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (892, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '설렘이 가득한 롯데캐슬 아이비에서 제3의 공간의 즐거움이 시작됩니다.', '1.주차 가능 2.주차장위치-지하주차장 3. 주차가능대수-5대이상 4.주차조건-조건부무료 (구매 시 120분 무료)5.주차요금정산방법-파트너에게 요청', '9호선 샛강역 2번출구 도보 7분', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1045, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '안락하고 편안한 공간과 파트너의 따뜻한 미소, 그리고 향긋한 커피향이 있는 선유동이레빌딩점입니다.', '1.주차가능 2.주차장위치-입점건물 지하2층에서 지하 6층까지 3.주차가능대수-400대 이상 4.주차조건-매장이용시 영수증 확인후 2시간 무료 5.주차요금 정산방법-주문대에서 파트너에게 요청', '당산역 2호선 1번 출구/ 9호선 12번 출구 양화대교 방면 210m 직진 후 당산119안전센터에서 왼쪽방향으로 190m 직진.
오른쪽 이레빌딩 신관 1층 내 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1037, 'T03@T04@T05@T08@T16@T17@T20@T21@@T26@T29@T30@T32@T33@T34@T36@@P80@P90', 'WHCROAD', '아늑하고 여유를 즐길수 있는 여의도역점입니다.', '1.주차 불가능', '여의도역 3번출구 전방 100m 도보 2분', 'N', '0630-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1050, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '맛있는 커피와 편안한 분위기의 선유도역점입니다.', '주차불가능', '9호선 선유도역 5번 출구 도보 2분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2030', '0800-2030', '0800-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1124, 'T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향기로운 커피향과 편안하고 따뜻한 공간이 있는 국회의사당역점입니다.', '1.주차가능 2.입점 건물 지하 주차 3.주차가능대수- 10대 이상 4.주차 조건- 유료주차 : 매장지원없음,최초 20분 무료,30분 경과 시 3000원 부과(30분 3000원,1시간 6000원)', '지하철 9호선 국회의사당역 5번출구 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-1900', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1141, 'T03@T05@@T08@T09@T16@T17@T20@@@T26@T29@T30@T36@@', 'WHCROAD', '여의도 지역의 첫 리저브 매장, 프리미엄 커피와 스페셜한 공간이 있는 여의도공원점입니다.', '1.주차가능2.주차장위치-입점건물 지하3.주차가능대수-5대이상 4.주차조건-조건부 무료 (구매 시 60분 )5.주차요금정산방법 (파트너에게 요청)', '[대중교통 이용시] 여의도 환승센터 하차 또는 5, 9호선 여의도역 3번 출구 나온 후 여의도공원 건너 국민일보 본사 방면으로 도보 약 15분 이동 / 9호선 국회의사당역 3번 출구 여의도공원 방면 250m 직진 후 좌회전하여 국민일보 본사 방면으로 도보 약 10분 이동

[자차 이용시] 서울시 영등포구 여의공원로 101로 도착지 설정 후 건물 지하 주차', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0800-2030', '0800-2030', '0800-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1147, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '향기로운 커피와 따뜻한 파트너들의 미소가 있는 곳', '1. 주차가능 2.건물 지하1층 3. 주차가능대수 - 10대이상 4. 30분무료, 20분당 1천원(카드결제만 가능) 5. 매장 주차 지원 없음 6. 14일부터 20분무료', '지하철 이용 시, 5호선 영등포시장역 1번 출구 도보 7분 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1241, 'T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향기로운 커피와 스페셜한 공간이 있는 국회대로점입니다.', '주차 불가', '[지하철 이용시] 9호선 국회의사당역 1번 출구 나온 후 약 200m 직진(도보 4분)
[버스 이용시] 간선 153, 지선 5615, 5618, 7613, 일반 1002, 좌석 108번 국회의사당 하차', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0830-2000', '0830-2000', '0830-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1319, 'T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '향기로운 커피와 파트너들의 따뜻한 미소를 만날 수 있는 스타벅스 여의도화재보험점입니다.', '1. 주차 불가능', '지하철 5, 9호선 여의도역 5번 출구 약 150m 삼천리 빌딩 옆 한국화재보험협회 빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-2100', '0900-2000', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1334, 'T03@T05@T08@T16@T17@T20@T21@@T26@T29@T30@T33@T36@T40@@P80', 'WHCROAD', '특별한 경험을 선사하는 리저브 매장 스타벅스 여의도KBS점 입니다.', '1. 주차가능 2. 주차위치 - 입점건물지하 2층 3. 주차가능대수 - 10대이상 4. 주차조건 - 유료 (10분 1000원)', '지하철 9호선 국회의사당역 4번 출구 하차 후 100m 이동 (도보 3분)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1350, 'T03@T05@T08@T09@T16@T17@T20@@T26@T29@T30@T33@T36@@@P40@P80', 'WHCROAD', '여의도의 중심, 여의도IFC몰에서 향긋한 프리미엄 리저브 커피를 만나보세요.', '1. 주차가능 2.주차장위치: 입점건물지하 3.주차가능대수 -50대이상4.주차조건-조건부무료( 구매금액 2~4만원 미만 :1시간, 4~6만원 미만 : 2시간, 6만원 이상 : 3시간 무료) 5. 주차정산방법-파트너에게 요청', '[지하철] 여의도역(5,9호선) 3번출구방향 여의도IFC몰 L1 노스아트리움(가든준오 맞은편)
[버스] 여의도 환승센터 버스정류장(19-016) 하차 후 여의도IFC몰 L1으로 이동', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1390, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심 속 편안한 공간, 따뜻한 미소와 품격있는 커피를 만나보실 수 있는 스타벅스 당산대로 점입니다.', '주차불가능', '지하철 2,9호선 당산역 8번 출구', 'N', '0730-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1462, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P40@P60@P80@P90', 'WHCROAD', '복잡한 도심속에서 친구같은 편안함을 제공해드리는 여기는 스타벅스 영등포역점 입니다.', '1.주차 불가능', '영등포역 5번 출구 직진 100m
신도림에서 영등포로터리 방면 고가차도 우측 페어필드 바이 메리어트 호텔 1층 입니다.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1495, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '편안한 휴식공간과 미소가득한 파트너들이 함께하는 샛강역점 입니다.', '1. 주차가능 2. 주차장위치: 입점건물지하 3.주차가능대수 10대이상 4.주차조건-조건부무료( 구매 시 120분 무료,)5.주차정산방법-파트너에게요청장', '지하철 9호선 샛강역 3번 출구에서 240m (도보 3분 미만)
버스 이용 시 162, 503, 505, 5012, 5534, 5633번 이용/샛강역.앙카라공원 정류장 하차', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0900-2030', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1551, 'T03@T04@T05@T08@T16@T17@T20@T22@T26@T29@T30@T32@T34@T36@T40@T42@P40@P60@P80@P90', NULL, '다양한 추출기구, 고품질의 리저브커피를 즐길수 있는 스타벅스 타임스퀘어R점입니다.', '1.주차가능 2.신세계타임스퀘어 지하층 3.100대 이상 4.입차후30분 무료', '1호선 영등포 지하상가에서 타임스퀘어 진입로에 위치
', 'N', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1673, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', NULL, '도심 속의 활기와 일상의 편안함을 느낄 수 있는 용산리첸시아점 입니다.', '1.주차가능 2.주차장위치-용산금호리첸시아 A동 주차장 3.주차가능대수-50대 이상 4.주차조건-조건부 무료(구매 고객 2시간 무료) 5.주차요금정산방법-파트너에게 요청', '6호선 효창공원앞역 2번 출구, 삼각지 고가차도 사거리에서 남영역 방면', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (522, '@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '스타벅스커피 코리아 500호점, 동부이촌동점입니다.', '주차 불가', '지하철 4호선 이촌역에서 도보 10분거리에 위치하고 있습니다.
버스정류장명:충신교회
버스노선번호:3012,2016,100,6211 이용 가능', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (257, 'T04@T05@T07@@T09@T16@T17@T20@T22@T30@T36@P40@P60@P80@P90', 'WHCROAD', '다양한 문화 복합 공간과 따뜻한 햇살을 즐기며 커피 한잔의 힐링을 선물 해드리는 아이파크몰 내(內) 서관(TASTE PARK) 6층 스타벅스 용산아이파크몰점에서 커피 한잔의 여유를 가져보세요.', '1.주차가능 2.주차장 위치-아이파크몰 주차장 이용 3.주차가능 대수-100대 이상 4.주차 조건-조건부 무료(음료 구매시 60분 무료) 5.주차요금정산방법-POS 파트너에게 요청', '지하철 1호선 용산역 2번 출구, 아이파크몰 서관(TASTE PARK) 6층', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (370, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '아름답고 멋진 매장과 파트너들이 있는 스타벅스 숙대입구역점에서 즐거운 추억을 만드세요.', '주차 불가', '지하철4호선 숙대입구역 8번 출구', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (94, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '아름다운 도심 속 제 3의 공간을 느껴보세요.', '1.주차 가능 2.주차장 위치-입점 건물 전면 지하 3.주차가능 대수-10대 이상 4.주차 조건-유료, 최초 30분 2천원, 이후 10분당 1천원', '지하철 6호선 녹사평 역 3번 출구에서 이태원 입구쪽으로 횡단 후 크라운 호텔 방면, 캐피탈호텔 맞은 편 건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (135, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', NULL, '아늑한 분위기의 숙대점에서 편안한 휴식과 커피한잔의 여유를 즐겨보세요.', '주차 불가', '지하철 4호선 숙대입구역 10번 출구, 갈월지하차도 지나 직진 도보 10분, 숙대 정문가는길 왼편', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (612, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@T32@T34@T35@T36@P70@P90', NULL, '순천향병원', '주차 불가', '순천향대학교 서울병원입구에서 우측으로 70m 거리에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (746, 'T04@T05@T08@@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '도심 속의 활기와 일상에 편안함을 느낄 수 있는 휴식 공간 서울역동자동점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 건물 지하 3. 주차가능대수 - 30대 4. 주차조건 - 조건부 무료(1시간 무료) 5. 주차요금정산방법 - 파트너에게 요청', '지하철 4호선 서울역 12번 출구 동자동, 후암시장 방면 출구 앞 KDB생명타워', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0900-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1040, 'T04@T05@T07@T08@T17@T20@T30@T36@P40', 'WHCROAD', '서울의 야경을 한눈에 담을 수 있는 서울의 랜드마크 서울타워점입니다.', '주차 불가', '6호선 이태원역 4번출구 03번 버스 탑승 후 서울타워 하차 /
3호선 충무로역 2번출구 02번 버스 탑승 후 서울타워 하차 /
3호선 동대입구역 6번출구 05번버스 탑승 후 서울타워 하차', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1093, 'T03@T05@@T08@T09@T16@T17@T20@T21@@T26@T29@T30@T40@@P90', NULL, '블랙이글 ,사이폰,POC,케멕스 등 다양한 기구로 추출하는 스타벅스 리저브 커피와 티바나 특화 음료를 즐기실 수 있는 한남동R점입니다.', '1.주차 가능 2.주차장 위치-매장 전면 1층 발렛 사무실 앞 3.주차가능대수-5대 이상 4.주차조건-유료,발렛주차 (최초 2시간 )3,000원 ,이후 30분당 1,500원', '한남오거리 유엔빌리지방면 도보 3분 (300m)

경의중앙선 한남역에서 도보 15분
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1115, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '친절한 파트너와 편안함이 가득한 남영동점입니다.', '주차 불가', '지하철 1호선 남영역 1번 출구에서 숙대입구역 방향 도보 4분거리
지하철 4호선 숙대입구역7번출구 도보 3분거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1900', '1000-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1170, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '따뜻한 햇살 가득한 용산파크타워점입니다.', '1.주차 가능 2.주차장 위치-파크타워 아파트 상가 주차장 3.주차가능대수-100대 이상 4.주차조건-음료 구매시 120분 무료 5.주차요금정산방법-파트너에게 요청', '지하철 4호선 이촌역 1번출구 파크타워 1층
용산세무소정류소앞', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1253, 'T04@T05@T07@@T09@T16@T17@T20@T21@@T30@P60@P80@P90', 'WHCROAD', '바쁜 일상에 커피 한잔의 여유를 느낄 수 있는 신용산역점 입니다.', '1.주차가능 2.주차장 위치-레미안 상가 주차장 이용 3.주차가능 대수-100대 이상 4.주차 조건-조건부 무료(음료 구매시 120분 무료) 5.주차요금정산방법-POS 파트너에게 요청', '지하철 4호선 신용산역 3번출구 앞, 레미안 용산 더센트럴 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1268, 'T04@T05@T08@T16@T17@T20@T21@T30@P70@P90', 'WHCROAD', '이촌1동 신용산초등학교 건너편 스타벅스이촌점 입니다.', '주차 불가', '지하철 4호선 이촌역 3 또는 3-1번 출구, 신용산초등학교 방향', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1340, 'T03@T04@T05@@T08@T16@T17@T20@T21@@T26@T29@T30@T33@T40@@P90', 'WHCROAD', '커피와 함께하는 여행의 시작점, 용산역써밋R점입니다.', '1.주차가능 2.주차장 위치-써밋타워 상가 주차장 이용 3.주차가능 대수-100대 이상 4.주차 조건-조건부 무료(음료 구매시 120분 무료) 5.주차요금정산방법-POS 파트너에게 요청', '용산역 1번출구 용산역광장 오른편 
신용산역 3번출구 한강로방면 150M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1339, 'T03@T04@T05@@T08@T16@T17@T20@T21@@T26@T29@T30@T33@T40@@P90', 'WHCROAD', '특별한 문화와 예술이 공존하는 한강진역R점에 오신걸 환영합니다.', '주차 불가', '한강진역 6호선 3번출구 방면 400M 
한남동 주민센터 버스정류장앞', 'N', '0800-2000', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0900-2200', '0900-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1415, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '이태원의 중심. 이태원역점 입니다.', '주차불가', '이태원역 3번출구 40M직진', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2200', '0930-2200', '0930-2000', '0930-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1655, 'T08@T16@T17@T20@T21@T30@T32@T34@T35@P60@P80@P90', 'WHCROAD', '여행과 일상의 중간, 커피향기와 안락한 휴식이 있는 스타벅스 서울역서부점 입니다.', '주차 불가', '지하철 1,4호선 서울역 1번출구 / 한국철도공사 맞은편 서울역풍림아이원플러스 1층', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1572, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T35@T36@P80@P90', 'WHCROAD', '제3의공간, 도심속의 숲속과 같은 효창공원앞역점입니다.', '주차 불가', '지하철 6호선,경의중앙선 효창공원앞역점 2번출구 방면 200m', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (529, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '커피, 그 이상의 가치가 있는 만남의 공간. 구산역점입니다.', '1.주차 불가능', '지하철 6호선 구산역 1번 출구 앞', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (235, 'T02@T04@T05@T08@T09@T16@T17@T30@T36@P40', 'WHCROAD', '하루 일상과 가장 가까운 스타벅스, 쇼핑의 즐거움과 행복한 이야기가 있는 은평이마트점입니다.', '1.주차가능 2.주차장 위치-이마트 지하주차장3F-6F(주말은 지하7F까지) 3.주차가능대수-50대 이상 4.주차조건- 조건부 무료(금액 무관 스타벅스 이용 고객 2시간 무료) 5.주차요금 정산방법-파트너에게 요청', '지하철 6호선 응암역 3번 출구에서 횡단보도 건너 서부경찰서 방향으로 5분 가량 직진, 이마트 건물 1층', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (775, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향기로운 커피와 안락한 쉼터를 경험할 수 있는 제3의 공간 은평구청입구점입니다.', '1.주차가능 2.주차장 위치- 입점건물 지하주차장1F-3F 3.주차가능대수- 50대이하 4.주차조건- 조건부 무료(금액 무관 스타벅스 이용 시 차량 1대 당 1시간 주차권 지급, 건물 내 입점 매장간 주차권 중복 적용 불가, 초과 시 30분당 1,000원 요금 발생) 5.주차요금 정산방법- 출차 시 지급받은 주차권 제시', '(지하철)
녹번역 3번 출구에서 은평구청 방면으로 도보로 10분 
(버스)
702, 7212, 7025, 7719, 7730 서대문세무서별관 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (951, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '북한산 둘레길의 필수코스, 은평뉴타운의 랜드마크! 스타벅스 구파발역점에서 커피 한잔의 여유를 느껴 보세요.', '1.주차가능 2.주차장 위치- 입점 건물 지하1층-지하3층 3.주차가능대수- 50대 이하 4.주차조건- 조건부 무료(스타벅스 이용 무관 건물 차량 출입 후 최초 60분 무료, 이후 30분당 1천 원 요금발생) 5.주차요금 정산방법- 출차 시 기계 정산', '지하철 3호선 구파발역 3번출구로 나와 직진, 도보 3분 거리 (190M)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1179, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '스타벅스 연신내점에서 커피 한잔의 여유를 즐겨보세요.', '1.주차 불가능', '지하철 3,6호선 연신내역 7번출구 도보 4분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1304, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '연신내의 새로운 랜드마크, 도시의 활기와 일상의 여유를 함께 느낄 수 있는 연신내역사거리점입니다.', '1.주차가능 2.주차장 위치- 범서 쇼핑센터 지상 주차장 3.주차가능대수- 50대 이하 4.주차조건- 조건부 무료(스타벅스 1만원 이상 구매시 1시간, 2만원 이상 구매 시 두 시간 무료) 5.주차요금 정산방법- 출차 시 범서쇼핑센터 주차요원이 영수증 이용금액 확인', '지하철 3, 6호선 연신내역 3번 출구', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1336, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '은평뉴타운의 떠오르는 랜드마크, 커피 한잔의 은은함과 여유로움을 느낄 수 있는 구파발사거리점입니다.', '1.주차 불가능', '[지하철] 3호선 구파발역 1번 출구로 나와 직진 도보 3분(200m)
[버스] 구파발역 2번 출구 정류장 하차 후 직진 도보 5분(300m)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1508, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', NULL, '불광역의 새로운 랜드마크! 스타벅스 불광역점 입니다.', '1.주차가능 2.주차장 위치- 입점건물 지하주차장1F-5F 3.주차가능대수- 50대 이하 4.주차조건- 조건부 무료(금액 무관 스타벅스 영수증 당 1시간까지만 무료,초과 첫 30분은 2,000원 이후부터 30분당 1,500원 부과) 5.주차요금 정산방법- 파트너에게 요청', '지하철 3,6호선 불광역 3번출구 도보1분거리 우리은행 1F', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1660, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@P20@P80@P90', 'WHCROAD', '젊음과 낭만이 있는 대학로의 아늑하고 넓은 쉼터 스타벅스 동숭길입구점입니다.', '1.주차불가능', '혜화역 1번 출구 동성중고 방향 도보 2 분 거리', 'N', '0730-2030', '0730-2030', '0730-2030', '0730-2030', '0730-2030', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (572, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', NULL, '종로 명문 YBM 학원가의 전경이 멋진 매장, 종로관수점입니다.', '1. 주차 불가능', '종로3가 지하철역 15번 출구 YBM 본사 건물 뒷편 골목에 위치', 'N', '0730-1930', '0730-1930', '0730-1930', '0730-1930', '0730-1930', '0900-1930', '1000-1800', '0900-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (383, 'T04@T05@T08@T09@T16@T17@@T20@T21@T30@P90', 'WHCROAD', '과거와 현재가 공존하는 공간, 고풍스럽고 편안한 분위기의 도심 속의 제3의 장소 경복궁사거리점 입니다.', '1만원 이상 결제 시, 2시간무료주차 가능', '경복궁사거리 광화문방향 위치
(안국역6번출구 500미터)', 'N', '0730-1730', '0730-1730', '0730-1730', '0730-1730', '0730-1730', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (578, 'T04@T05@T07@T08@T09@T12@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '젊은 학생들과 지역사회를 위해 이익을 공유하는 커뮤니티스토어 대학로점에서 커피 한잔을 즐겨보세요.', '1.주차가능 2. 주차장 위치- 입점건물 지하 2,3층 3. 주차가능대수_100대 이상 4. 주차조건:유료 ,최초 30분 2천원, 이후 10분당 1천원, 구매금액 1만원 이상 주차요금 50%할인권 제공, 지하 주차장', '혜화역 3번출구 500M 직진 이화사거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1930', '0900-1930', '0800-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (330, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '은은한 커피 한 잔과 함께 잠시 쉬어갈 수 있는 곳 스타벅스 종로3가점입니다.', '주차 불가', '1, 3, 5호선 종로3가역 1번 출구에서 100m 직진시 우측에 위치.', 'N', '0800-1800', '0800-1800', '0800-1800', '0800-1800', '0800-2100', '0800-2100', '1000-1800', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (301, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P20@P80', 'WHCROAD', '문화와 예술이 공존하는 대학로에 편안한 쉼터, 마로니에공원점입니다.', '1.주차 불가능', '4호선 혜화역 2번 출구로 나와서 보이는 공공그라운드 건물 내 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2130', '0900-2100', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (401, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '조선시대 군사와 정치,문화의 중심지로서 우리나라 4대 궁궐과 종묘가 가까이 위치해 있는 의미있는 장소에 새롭게 오픈한 스타벅스 400호점 이마빌딩점 입니다.', '평일 음료 구매 고객 한하여 1시간 무료주차 가능', '스타벅스커피 코리아 400호점인 이마빌딩점은 조선시대 궁중의 말, 기마, 마필, 목장 등을 관장한 사복시 터에 위치해 있습니다. 조선시대 군사와 정치, 문화의 중심지로서 오늘날까지 우리 곁에 남아있는 4대 궁궐과 종묘가 가까이 위치해있는 의미있는 장소에 오픈하게 되었습니다.

*광화문역 2번 출구 미국대사관 방향 500m 거리에 위치', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (351, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '경복궁역점에선 한국의 그림 동궐도를 감상하실 수 있으며 고급스럽고 편안한 분위기를 고객님께 전해드리겠습니다.', '1.주차가능 2.주차장위치-입점건물 뒤편 기계식주차장 3.주차가능대수-10대이하 4.주차조건-조건부무료(스타벅스 이용시 30분 무료/이후 10분당 1천원)/주말 및 평일 18시 이후 이용불가 5.주차요금정산방법-파트너에게 요청(영수증도장)', '3호선 경복궁역 3번출구에서 20m직진 / 1층에 위치/주말 주차 불가', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2030', '0800-2030', '0800-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (352, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T35@T36@P80', 'WHCROAD', '편안하고 아늑함속에서 발랄함을 느낄수 있는 도심속의 여유공간,친절한 종로 관철점입니다.', '주차 불가', '종로 젊음의거리(구 피아노거리) 내 올리브영 건물 2층입니다.', 'N', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '1100-2130', '1100-1900', '1100-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (434, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '대학로의 활기찬 분위기 속 에서의 여유로운 커피한잔, 친구같은 편안함이 있는 스타벅스 동숭로아트점입니다. Now Brewing!', '1.주차 불가능', '지하철 4호선 혜화역 1번출구,
상명대학교 방향 100m 직진.
', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (12, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '쾌적한 청계천의 전망이 돋보이는 아늑하고 편안한 느낌의 스타벅스 광교점입니다.', '주차 불가', '지하철 1호선 종각역 4번출구 청계천 방향, 광교약국에서 좌회전 후 직진, 신안과건물 1층', 'N', '0730-2030', '0730-2030', '0730-2030', '0730-2030', '0730-2030', '1100-1900', '1200-1900', '1100-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (45, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '안녕하세요. 종로의 대표적인 만남의 장소 스타벅스 종각점 입니다. 1~5층까지 이용가능합니다.', '주차 불가', '지하철 1호선 종각역 9,10번 출구 사이', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-1700', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (109, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '따뜻한 햇살과 편안함, 음료 한잔의 여유로움이 공존하는 주얼리시티점입니다.', '1.주차가능 2.주차장 위치-입점건물 지하층 3. 주차가능 대수:100대 4. 주차 조건-유료, 기본 30분 3000원, 10분에 1000원', '지하철 1호선 종로5가역 12번 출구 직진하여 오른쪽 효성주얼리시티 1층에 위치', 'N', '0700-1930', '0700-1930', '0700-1930', '0700-1930', '0700-1930', '0800-1930', '0800-1930', '0800-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (111, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '사직공원 앞 조용하고 편안한 휴식공간. 혼자서 공부하러 오시거나 가족과 함께 안락함을 경험해보세요!! 스페이스본점입니다.', '1.주차가능 2.주차장위치-입점건물 지하주차장 3.주차가능대수-50대이하 4.주차조건-조건부 무료(스타벅스 이용시 3시간 무료 5.주차요금정산방법-파트너에게 요청', '서울지방경찰청 후문에서 사직터널 방면, 왼편 풍림스페이스본 건물 내 1층 상가. 지하철 3호선 경복궁역 7번 출구에서10분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (142, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '볼거리 가득한 문화공간의 거리 대학로에서 풍부한 커피맛을 선사할 성대입구점.', '1.주차 불가능', '지하철 4호선 혜화역 4번 출구, 대명거리에서 성균관대 방향으로 직진. 오거리 횡단보도 건너 대로변', 'N', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0830-2000', '0900-2000', '0830-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (178, 'T03@T04@T05@@T08@T16@T17@T20@T22@T26@T29@T30@T32@T33@T36@T40@P80', NULL, '1층은 일반매장 , 2층은 리저브 매장으로 고객분들께 다양하면서 최상의 커피, 서비스를 제공해 드리겠습니다.2층 리저브 영업시간은 평일 오픈8시,주말 9시로 운영이 됩니다.', '1.주차불가능', '지하철 5호선 광화문역 7번 출구에서 세종문화회관 방향으로 약 50m 걸어오면 현대해상 바로 옆 단독매장', 'N', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (216, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '스타벅스 영풍문고점에서 책과 커피 한 잔의 여유를 즐기세요 :-)', '스타벅스 구매고객 무료 (지하주차장) : 주중&주말 60분/ 주말 *3만원이상(영풍문고 이용 합산 시) 120분', '지하철 1호선 종각역 5,6번 출구 연결통로의 영풍문고 지하 2층.', 'N', '1000-2030', '1000-2030', '1000-2030', '1000-2030', '1000-2030', '1100-1930', '1100-1930', '1100-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (164, 'T04@T05@T08@T16@T17@T20@T30@T36@P90', 'WHCROAD', '도심에서는 쉽게 느낄 수 없었던 한국의 미(美)를 스타벅스와 함께 즐겨보세요! 전통문화와 현대문화가 아름답게 공존하는곳, 인사점입니다.', '주차 불가', '1호선:종각역 11번 출구에서 직진, 금강제화 앞 좌회전 100m/5호선:종로3가역 5번 출구에서 직진, 낙원상가 지나서 좌회전', 'N', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0830-1900', '0830-1900', '0830-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (189, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80', 'WHCROAD', '당신이 바라던 바로 그 스타벅스, 스타벅스 적선점에서 고객님의 소중한 시간을 더욱 행복하게 만들어 보세요~', '1.주차가능 2,주차장위치 - 지상1층,지하주차장 3.주차가능대수:20대이하 4.주차조건-조건부 무료(스타벅스 이용시 1만원 미만 구매시 30분 무료/ 1만원 이상 구매 시 1시간 무료/이후 30분당 2,000원 이용요금 발생) 5.주차요금정산방법-파트너에게 요청', '지하철 3호선 경복궁역 6번 출구에서 우회전 후 10m 앞 우측', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (72, 'T04@T08@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '오랜 역사의 서울극장에서 즐기는 커피 한 잔의 여유로움과 편안함을 함께하세요.', '1.주차 불가능', '지하철 1,3,5호선 종로3가역 14번 출구 신한은행에서 우회전, 50M 직진 후 우측에 위치', 'N', '0930-1900', '0930-1900', '0930-1900', '0930-1900', '0930-1900', '1000-1900', '1000-1900', '1000-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (974, 'T05@@T08@T09@T16@T17@T20@T22@T30@T36', 'WHCROAD', '역사와 문화가 있는 광화문의 고품격 매장', '1.주차가능 2.주차장 위치-입점건물 지하주차장 3.주차가능대수-50대이하 4.주차조건-조건부 무료(스타벅스 이용 고객 2시간 무료) 5.주차요금정산방법-파트너에게 요청(파트너가 주차시스템 등록)', '지하철 5호선 광화문역 4번출구로 나와 세종대로 사거리에서 좌측 방면으로 도보 2분 거리 (광화문 D타워 1층)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (788, 'T04@T05@T08@T16@T17@T20@T30@T36', 'WHCROAD', '전통과 현대를 융합한 도심속의 휴식처', '주차 불가', '광화문 교보문고 KT앞 마을 버스 11번 이용 
금융연수원 하차 맞은편 위치', 'N', '0730-1700', '0730-1700', '0730-1700', '0730-1700', '0730-1700', '0730-1700', '0900-1700', '0730-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (791, 'T04@T05@T08@T16@T17@T20@T30@P80', 'WHCROAD', '멋스러운 한옥마을과 어우러지는 맛있는 커피 한 잔의 여유, 스타벅스 안국점에서 시작됩니다.', '주차 불가', '안국역 2번출구 건너편 헌법재판소 가는 방향', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0830-2000', '0830-1900', '0830-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (804, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36@P60@P80', 'WHCROAD', '광화문 광장 도심 속 새문으로 연결되는 휴식의 공간을 찾아주세요.', '1.주차불가능', '5호선 광화문역 6번출구 동화면세점 옆 오피시아 빌딩 내 1, 2층에 위치(1분거리)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (836, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@P80', 'WHCROAD', '바쁜 도심 속 여유롭게 커피 한 잔 즐기러 오세요', '주차 불가', '1호선 종각역 1번출구, 5호선 광화문역 청진공원방향 출구
그랑서울 건물, 르메이에르 건물 옆에 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1800', '1000-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (843, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '고즈넉한 한옥마을과 편안한 분위기, 맛있는 커피 한잔의 여유를 스타벅스 북촌로점에서 느껴보세요.', '1.주차 불가능', '안국역 2번, 3번 출구 재동초등학교 방향 재동초등학교 정문 오른편 위치', 'N', '0700-1800', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0830-1900', '0830-1900', '0830-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1052, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '도심속 커피향기 가득한 작은쉼터 스타벅스 종로구청점입니다.', '구매금액 5천원 이상 30분 무료, 지하 주차장', '지하철 1호선 종각역 2번 출구 종로구청 방향 (도보 6분)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0900-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1058, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '은은한 커피의 향기가 있는 동묘앞역점에서 추억을 만들어보세요~', '1.주차 불가능', '지하철 1호선,6호선 동묘앞역 4번출구 도보1분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1333, 'T03@T04@T05@T08@T16@T17@T20@T21@T26@T29@T30@T33@T36@T40', 'WHCROAD', '특별한 경험을 선사하는 고품격 리저브매장 스타벅스 정부서울청사점에서 다양한 원두와 추출기구들을 만나보세요.', '1.주차불가능', '지하철 3호선 경복궁역 6번출구 방면 하차 후, 경복궁역 교차로에서 왼쪽길로 175m이동.도보로 4분
광화문 플래티넘 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1320, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '편안하고 아늑한 제 3의 공간 스타벅스 독립문역점입니다.', '1.주차불가능', '독립문역 3번 출구 도보5분거리,
서대문역 3번 출구 도보10분거리.
독립문 버스정류장 앞.', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2200', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1305, 'T03@T04@T05@@@T08@T16@T17@T20@T22@T26@T29@T30@T33@T36@T40@T42@P40@P80@P90', 'WHCROAD', '고품격 스타벅스 리저브 커피, 티바나 티를 최고의 서비스로 제공해 드리는 더종로R점 입니다.', '주차가능(1시간)', '지하철 1호선 종각역 3-1번 출구 앞. 
종각역 지하를 이용하여 종로타워 1층으로 올라올 수 있습니다.', 'N', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0730-2000', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1359, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', NULL, '바쁜 일상속 지친 몸과 마음이 리프레쉬되는 따뜻함과 편안함이 있는 광화문우체국점입니다.', '1.주차불가능', '5호선 광화문역 5번 출구 도보 1분
광화문우체국 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-2000', '0900-2000', '0830-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1427, 'T04@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '커피와 음악, 문화가 공존하는 제 3의 공간 스타벅스 종로평창동점 입니다.', '1.주차불가능', '서울예고 인근에 위치 (평창동 주민센터 버스정류장) 110B,153,1020,1711,7211 버스노선 이용 가능', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1622, 'T05@T08@T16@T17@T20@T21@T30@T32@T34@P70', 'WHCROAD', '강북삼성병원 안에서 따뜻한 휴식을 느낄 수 있는 스타벅스 강북삼성병원점 입니다.', '1.주차불가능', '지하철 서대문역 4번 출구에서 386m 
', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1700', '0700-1700', '0700-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1528, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P80@P90', NULL, '바쁜 일상속 커피한잔의 여유를 느껴보세요.', '1.주차불가능', '지하철 5호선 광화문역 1번 출구에서 도보 7분거리', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0800-1830', '0800-1830', '0800-1830');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1429, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '공연,예술의 거리 대학로의 새로운 케렌시아 스타벅스 혜화역점입니다.', '1.주차 불가능', '혜화역 1번 출구 마로니에공원 방향 도보 1분 거리, 이화사거리에서 혜화동로터리 방향 우측', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2130', '0900-2100', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1472, 'T04@T20@T30@T36', NULL, '새로운 시대에 걸맞은 멀티미디어 콘텐츠로 다양한 뉴스를 생산하고 있는 연합뉴스내 다양한 커피를 제공하는 스타벅스 연합뉴스점입니다.', '매장 이용시 120분 무료 주차 제공', '지하철 5호선 광화문역 2번 출구 미국 대사관 뒤 국세청 방면 도보 5분 이내', 'N', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0000-0000', '0000-0000', '0000-0000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1720, 'T04@T08@T16@T17@T20@T30@T32@T34@T35@P80@P90', NULL, '서울 도심속 푸른 남산을 만날 수 있는 스타벅스 명동남산점 입니다.', '주차불가능', '지하철 4호선 명동역 2번 출구 도보 1분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1692, 'T08@T16@T17@T20@T21@T30@T32@T34@T35@P80', NULL, '숭례문과 서울역의 역사가 숨쉬는 도심속의 휴식처', '1. 주차가능 2. 주차장위치 - 매장 건물 주차장 입구 이용 3. 주차가능대수 - 50대 이상 4. 주차조건 - 조건부 무료(구매시 평일 1시간 무료_ 초과시 10분당 1000원) 5. 주차요금정산방법 - 파트너에게 요청', NULL, 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1724, 'T04@T08@T16@T17@T20@T30@T32@T34@T35@P80@P90', NULL, '바쁜 일상 속, 여유로움이 함께 공존하는 무교로점입니다.', '주차불가능', '시청뒷편 일방통행길 쪽 코오롱빌딩 방향 1층에 위치. 1호선 시청역 4번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (518, 'T04@T05@T08@T16@T17@T20@T30@T36', NULL, '명동의 대로변에 위치한 안락하고, 여유로운 쉼터 명동입구점입니다.', '주차불가능', '지하철 2호선 을지로입구역 6번출구 나와 250M 직진, 도보로 약 5분 소요
(롯데영플라자 맞은편 대로변에 위치)
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (548, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P40@P80', 'WHCROAD', '고품격 서비스와 최고의 품질로 도심 속 쉼터를 제공해 드리는 남산스테이트점입니다.', '1. 주차가능 2. 주차장위치 - 매장건물 지하 3. 주차가능대수 - 30대 4. 주차조건 - 조건부 무료 (결제 시 1시간 무료) 5. 주차요금정산방법 - 파트너에게 요청', '4호선 명동역 4번출구 방면 도보 3분거리 (150M) 스테이트타워 지하1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (583, 'T04@T05@T08@T16@T17@T20@T30@T32@T36@P80', 'WHCROAD', '서울타워가 한눈에 보이는 전망좋은 매장, 명동역점입니다. 1~3층 좌석 사용이 가능합니다.', '주차불가능', '명동역 5번출구 직진 50m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0900-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (391, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '영화의 거리에 위치해 있는 넓고 아늑한 매장에서 우리나라의 고전영화를 만나볼 수 있는 충무로역점입니다.', '주차불가능', '지하철 3호선 충무로역 7번 출구를 나와서 뒤편으로 돌아 매일 경제 신문사 옆', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (514, 'T04@T05@@@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '언제 어디서나 당신이 일상을 함께하는 스타벅스 시청플러스점입니다.', '주차 불가', '을지로입구역 1번 출구에서 시청광장 방면으로 도보 2분 거리
(삼성화재건물 정문에서 오른쪽에 위치한 매장)', 'N', '0730-1730', '0730-1730', '0730-1730', '0730-1730', '0730-1730', '0800-1730', '0800-1730', '0800-1730');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (513, 'T04@T05@T08@T16@T17@T20@T30@P80', 'WHCROAD', '따뜻한 햇빛의 밝음을 담은 매일 오고싶은 매장 시청점입니다.', '주차 불가', '을지로입구역 1번 출구에서 시청광장 방면으로 도보 2분 거리
(삼성화재건물 정문에서 왼쪽에 위치한 매장)', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (365, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도시 안에서 아늑하고 편안한 휴식을 즐길 수 있는 스타벅스 순화동에이스점에서 특별한 경험을 만들어 보세요.', '1.주차가능 2.건물지하주차장 3.20대이상 4.조건부 무료(구매 시 60분 무료(건물내 중복할인 불가),이후 10분당1,000원 5.파트너에게 요청', '5호선 서대문역6번출구 도보 5분 KG TOWER 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (382, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '명동의 새로운 명소로 자리잡은 아담하고 모던한 분위기의 을지로한국빌딩점에서 일상을 벗어난 여유를 즐겨보세요.', '주차불가', '지하철2호선 을지로입구역 5~6번출구', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (408, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '도심속의 낭만과 여유, 우리나라 최초의 중등기관인 배재학당에서 이름을 따온 스타벅스 매장, 서소문배재점입니다.', '1.주차불가능', '지하철 시청역 10번 출구로 나와 150m 직진, 우리은행과 경남은행 사이 서영빌딩 1층에 위치.

한양 도성 8문의 하나인 서소문이 있는 서소문동에 위치한 스타벅스 서소문 배재점은 우리나라 최초의 중등기관인 배재학당에서 이름을 따온 매장으로 인근에 낭만의 거리 덕수궁 돌담길과 서울 시립미술관이 위치해 있으며, 도심속의 낭만과 여유를 느낄 수 있는 제3의 최적의 공간입니다.', 'N', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '1000-1630', '1000-1630', '1000-1630');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (581, 'T04@T05@T07@T08@T16@T17@T20@T30@T32@T36', NULL, '도심 속 휴양지 같은 편안함을 즐기실 수 있는 소공로점입니다.', '주차 불가', '지하철 1,2호선 시청역 연결된 소공 지하쇼핑센터 8번출구 앞
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (491, 'T04@T05@@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '바쁜 도심 속 편안한 휴식공간을 제공하는 을지로삼화타워점입니다.', '1.주차가능2.입점지하주차장3.40대 주차가능 4.평일: 18시 이후 1시간 무료/주말 1시간 무료 5.주차도장 파트너요청', '지하철2호선 을지로입구역 4번출구,SKT 사옥 뒤 삼화인쇄빌딩 1F', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (105, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '도심속의 아늑한 공간 힐링플레이스, 서소문점입니다.', '1.주차 불가능', '지하철 1,2호선 시청역 8번 출구 정면 CU 매장에서 우회 직진,
대양 빌딩 1층', 'N', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0000-0000', '0000-0000', '0000-0000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (106, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@P40', 'WHCROAD', '아름다운 청계천의 풍경을 스타벅스 황학캐슬점에서 즐겨보세요! 운치있는 황학캐슬점에서 커피한잔, 어떠세요?', '1. 주차가능 2. 이마트 지하 3층 3. 30대 이상 4. 파트너에게 주차 등록 요청', '지하철 2호선 신설동역 10번 출구에서 청계천 방향으로 직진. 주상 복합 롯데 캐슬 1층', 'N', '1000-2230', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (289, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', NULL, '전통과 현재가 공존하는 편안한 휴식공간, 남산단암점입니다.', '주차 불가', '숭례문에서 남산 방향으로 올라가서 버스 정류장 바로 앞 단암빌딩 내 위치', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0900-1800', '0900-1700', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (213, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@P80', 'WHCROAD', '숭례문 오피스 빌딩 숲 내 아늑한 휴식 공간 퍼시픽타워점입니다.', '1.주차가능 2.건물 지하주차장 3.20대이상 4. 조건부 무료 (구매시 60분 무료, 이후10분당1,000원) 5.파트너에게 요청', '대한상공회의소와 신한은행 본점 사잇길 내 위치, CJ 대한 통운 본사 사옥 옆 퍼시픽 타워 1층 내.', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1630', '0900-1630', '0900-1630');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (181, 'T04@T05@T07@T08@T16@T17@T20@T30@T32@T36@P80', 'WHCROAD', '편안함과 안락함을 드리는 제 3의 공간 태평로점입니다.', '주차 불가', '지하철 1,2호선 시청역 7,8번 출구에서 횡단보도 건너 숭례문 방향으로 5분 정도 직진, 버스정류장 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1900', '0930-1800', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (187, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80', NULL, '웃음꽃과 행복이 피어나는 도심속의 휴식공간 문화일보점으로 오세요.', '1.주차 불가능', '지하철 5호선 서대문역 5번 출구 직진 50m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (179, 'T04@T05@@@T08@T16@T17@T20@T22@T30@T36@P80', 'WHCROAD', '국내 최대 더블바와 멋진 전망의 테라스가 있는 무교동점입니다.', '1.주차불가능', '시청뒷편 일방통행길 쪽 코오롱빌딩 1층에 위치. 1호선 시청역 4번 출구, 5호선 광화문역 5번 출구, 2호선 을지로입구역 1번 출구', 'N', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0700-2130', '0700-2100', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (234, 'T04@T05@T08@T16@T17@T20@T22@T30@T32@T34@T35@T36@P80@P90', 'WHCROAD', '한국적 공간의 미와 문화적 컨텐츠를 즐기실수 있는 환구단점 입니다.', '주차 불가', '지하철 2호선 시청역 6,7번 출구 사이, 프라자호텔 연결 통로를 지나 소공동지하상가 11번 출구. 매장과 연결', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (172, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '추억에 남을 영화와 추억에 남길 이야기가 함께 하는 한국영화의 역사 대한극장점에 옛추억의 감동적인 순간을 느껴보세요.', '1.주차가능 2.지상 개별 건물 주차장 3.100대 이상 4.유료- 최초 30분 2천원, 이후 10분당 1천원 5.무인정산/카드전용', '지하철 3,4호선 충무로역 1번 출구, 대한극장 1,2층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (71, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '도심속의 편안한 휴식공간과 맛있는 커피가 자랑인 순화동더샵점입니다.', '1.주차가능 2.건물지하주차장 3. 50대이상 4.조건부무료(1만원이상 60분 무료,이후 10분당1000원) 5.파트너에게요청', '숭례문에서 염천교 방향', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1600', '0900-1600', '0900-1600');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (219, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '서울의 역사와 현대미가 살아숨쉬는 숭례문점입니다. 일상속의 휴식을 스타벅스 숭례문점과 함께하세요^^', '1. 주차가능 2. 주차장 위치 - 매장건물 지하 3. 주차가능대수 - 20대 4. 주차조건 - 조건부 무료(구매금액 1만원 이상 1시간 무료) 5. 주차요금정산방법 - 파트너에게 요청', '지하철 1,4호선 서울역 3번 출구에서 직진, 도보로 2분 거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1600', '0000-0000', '0800-1600');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (777, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '호텔 같은 안락한 명동메트로점에서 편안한 휴식을 즐겨 보세요.', '주차불가능', '지하철 2호선 을지로입구역 5번 또는 6번 출구에서 도보 5분 거리 명동 메트로호텔 1층', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (678, 'T04@T05@@T07@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '커피와 사람과 끝나지 않을 이야기가 가득한 공간.', '1.주차불가능', '신당역 9번 출구 충무아트홀 방향 120M
1번 출구 충무아트홀방향 350M"', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0930-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (845, 'T03@T05@@T08@T09@T16@T17@T20@T21@@T30@T36@P80', 'WHCROAD', '서소문로점만의 특별한 경험, 프리미엄 리저브와 푸드를 함께 즐겨보세요.', '1.주차가능 2.건물지하주차장 3.20대이상 4.조건부무료(1만원이상30분무료주차권제공, 이후10분당 2,000원) 5.파트너에게요청', '시청역 2호선 9번 출구 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (861, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', NULL, '바쁜 일상속 지친 몸과 마음이 리프레쉬되는 따뜻함과 편안함이 있는 소공로북창점입니다.', '주차 불가', '지하철 1, 2호선 시청역 7번출구,
첫번째 횡단보도에서 건너 왼쪽 골목으로 150M직진', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-1900', '1000-1800', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (866, 'T04@T05@@T07@T08@T16@T17@T20@@T30@T32@T34@P60@P80', 'WHCROAD', '관광 중심 명동, 만남의 장소인 명동길점에서 새로운 만남이 기다려집니다.', '주차불가능', '지하철 4호선 명동역 8번출구 도보 5분 거리
(버스: 02-150 퇴계로2가, 명동역 정류장 도보 10분 거리)', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (874, 'T04@T05@T07@T08@T16@T17@T20@T30@T32@P60', 'WHCROAD', '도심 속의 활기참과 잔잔한 문화생활의 여유로움을 스타벅스 중구저동점에서 느끼실 수 있습니다.', '1.주차가능 2.입점건물지하 3.50대 이상 4.유료(최초 30분 4천5백원, 이후 10분당 1천5백원) 5.무인정산', '지하철 2호선 을지로3가역 11번출구에서 중부경찰서 방향으로 약 300미터, 도보 5분거리
(버스 : 02-161 을지로 3가 정류장 하차 도보 5분 거리)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (883, 'T04@T05@T08@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '첫번째 약수동의 약수역점에서 한잔의 커피와 함께 기분좋은 날을 함께 하세요.', '1. 주차 불가능', '지하철 3호선 약수역 2번출구 옆', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (920, 'T04@T05@@T07@T08@T16@T17@T20@T30@T32@T36@P80', 'WHCROAD', '쇼핑가의 중심인 명동! 스타벅스 명동중앙로점에서 따뜻한 커피한잔의 여유를 즐겨보세요.', '주차불가능', '명동 중앙길에서 명동성당 방면으로 오시면 서울 로얄 호텔 맞은편 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1047, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '한국프레스센터점에서 가장 빠른 스타벅스 소식을 경험해 보세요', '1.주차가능 2.주차장위치-입점건물 지하1,2,3층 3.주차가능대수-50대이상 4.주차조건-조건부무료(1시간 무료주차) 5. 주차요금정산방법-파트너에게 요청(파트너가 건물 주차시스템에 등록)', '지하철 1호선 시청역 4번출구에서 직진하여 5분거리 한국프레스센터 1층', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0800-1800', '0900-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (998, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36@P40@P80', 'WHCROAD', '분수광장의 물줄기와 햇빛의 빛줄기가 아름다운 제3의 공간, 서울중앙우체국점입니다.', '1.주차가능 2.지하 건물 주차장 3.100대 이상 4.유료- 10분당 1천원 5.무인정산/카드전용', '지하철 4호선 명동역 5번출구에서 300m
지하철 2호선 을지로입구역 6번출구에서 500m
신세계백화점, 한국은행 건너편 명동방향 포스트타워 1~2층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1063, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '향기로운 커피한잔과 함께 편안한 휴식 공간을 제공해 드리는 신세계본점6층점입니다.', '1. 주차가능 2. 주차장위치 - 백화점 내 지하 주차장 3. 주차가능대수 - 40대 4. 주차조건 - 조건부 무료( 백화점 당일 구매 영수증 _몰 내부 브랜드별 합산 가능_ 5만원당 1시간 무료. 그 외 10분당 2,000원 요금 부과 5. 주차요금정산방법 - 백화점 내 주차관리소 영수증 확인', '4호선 명동역/회현역 이용가능
-신세계백화점 본점 신관 6층
', 'N', '1030-2000', '1030-2000', '1030-2000', '1030-2000', '1030-2030', '1030-2030', '1030-2030', '1030-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1065, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '따스한 아침햇살이 전면 유리창에 밝게 비춰 더욱더 따스한 을지로2가점 입니다. 아름다운 미소를 커피에 담아 드리겠습니다.', '1.주차가능 2.입점건물 지하 3.100대 이상 4.조건부 무료(1만원 이상 60분 무료 (1인 당 1장 제한) 이후 10분당 1천원 5.파트너에게 주차권 요청 후 무인정산', '지하철 2호선 을지로3가역 1번 출구에서 시청방면 100M 위치해 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-2000', '0900-1800', '0830-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (994, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36@P80', NULL, '넓고 쾌적한 을지로경기빌딩점에서 일상을 벗어난 여유를 즐겨보세요.', '주차 불가', '지하철2호선 을지로입구역 3~4번출구, 경기빌딩 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1001, 'T04@T05@T07@T08@T09@@@T20@T30@T36@P80', 'WHCROAD', '명동과 남산에 인접한 도시 스타일의 매장, 스타벅스 회현역점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 건물 지하 3. 주차가능대수 - 10대 4. 주차조건 - 조건부 무료(1시간 무료) 5. 주차요금정산방법 - 파트너에게 요청', '회현역 1번출구 3분거리(80m) 리더스뷰남산 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1900', '0800-1700', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1101, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P80', 'WHCROAD', '한성에서 서울까지,살아 있는 역사속에서 느끼는 여유로운 공간 연세세브란스점입니다. 연세세브란스만의 특별한 경험을 음료, 푸드와 함께 즐겨 보세요.', '1. 주차가능 2. 주차장 위치 - 매장 건물 주차장 3. 주차가능대수 - 40 4. 주차조건 - 유료주차(매장 지원 없음, 10분당 1천원)', '지하철 1호선 서울역 4,5번 출구 앞 도보 1분 거리(연세세브란스빌딩 1층)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1096, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '즐거운 공간 신당역사거리점에서 편안한 휴식을 가지세요~', '1.주차가능 2. 주차장위치 - 입점 건물 지하1층 3. 주차가능대수 - 10대이상 4. 주차조건 - 20분 무료, 이후15분당 1.250원 5.주차요금정산방법 - 출차 시 결제', '지하철 2,6호선 신당역 12번 출구에서 청계천 방면 50m(도보1분)
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1140, 'T04@T05@T07@T08@T16@T17@T20@T21@@T30@T36@P80@P90', 'WHCROAD', '매일매일 방문하고 싶은 동대입구역점 입니다.', '1. 주차 불가능', '지하철 3호선 동대입구역 3번 출구로 나와서 직진, 종이나라박물관 건물 1층에 위치하고 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1245, 'T04@T05@T07@T20@T21@T30@T36@P80', 'WHCROAD', '바쁜 일상에 커피 한잔의 여유를 느낄 수 있는 을지로국제빌딩점 입니다.', '주차불가', '2호선 을지로입구역 2번출구, 하나은행 본점 옆, 국제빌딩 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '1000-2000', '1000-1900', '1000-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1177, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '쇼핑,관광의중심 동대문! 스타벅스 동대문공원점입니다.', '1.주차불가능', '지하철 2,4,5 호선 동대문역사문화공원역
2호선 11번출구에서 광희동사거리 방향 30M 직진 우측 
4호선 8번출구에서 동대문역사문화공원사거리 10M 직진 좌측
', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1223, 'T05@T07@T08@T16@T17@T20@T22@T30@T36', 'WHCROAD', '서울로와 연결된 도심속 숲속공원', '1. 주차가능 2. 주차장위치 - 매장 건물(뒷편) 주차장 입구 이용 3. 주차가능대수 - 40대 4. 주차조건 - 조건부 무료(구매시 평일 2시간, 주말 4시간 무료_ 초과시 15분당 1000원) 5. 주차요금정산방법 - 파트너에게 요청', '서울역 8번출구로 나와 회현역 방면 도보3분거리에 위치하고 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1215, 'T03@T05@T07@T08@T16@T17@T20@T21@T26@T29@T30@T36@T37@T40@@P80', 'WHCROAD', '다양한 추출기구로 프리미엄 원두를 즐기실 수 있는 을지로내외빌딩R점입니다', '1.주차가능2.입점지하주차장 3.30대 주차가능 4.30분 무료 5.주차권 파트너요청', '2호선 을지로입구역 3,4번 출구 내외빌딩 연결
내외빌딩 1층
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1800', '1000-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1228, 'T05@T08@T09@T33@T36@P40', 'WHCROAD', '깊이있는 커피한잔과 최상의 서비스를 경험할 수 있는 신세계본점5F점입니다.', '1. 주차가능 2. 주차장위치 - 백화점 내 지하 주차장 3. 주차가능대수 - 40대 4. 주차조건 - 조건부 무료( 백화점 당일 구매 영수증 _백화점 내 브랜드별 합산 가능_ 5만원당 1시간 무료. 그 외 10분당 2,000원 요금 부과) 5. 주차요금정산방법 - 백화점 내 주차관리소 영수증 확인', '4호선 명동역/회현역 이용가능
-신세계백화점 본점 본관 5층 식당가', 'N', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1367, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P70@P90', NULL, '대학가의 활기참과 필동 서애로의 낭만을 함께 느낄수 있는 동국대점 입니다.', '1.주차가능 2.입점건물 지하 3.50대 이상 4.유료(최초 10분 무료, 이후 10분당 1천원) 5. 무인정산', '3.4호선 충무로역 1번출구 도보7분거리 (서애로길)
퇴계로 4가 교차로 에서 동국대 후문방면 충무로 헤센 스마트 1층
충무로 제일병원 옆', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2100', '0800-2030', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1419, 'T04@T05@T08@T16@T17@T20@T30@T35@T36@P70@P80@P90', 'WHCROAD', '관광,쇼핑의 메카 동대문역사문화공원역의 새로운 케렌시아 스타벅스 국립중앙의료원점 입니다.', '1.주차불가능', '동대문역사문화공원역 사거리에서 국립중앙의료원(을지로 방향) 방향 동대문역사문화공원역 13번 출구 90M, 을지회관 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1435, 'T04@T05@T08@T16@T17@T20@T30@T35@T36@P90', 'WHCROAD', '스타벅스 명동센트럴점에서 따뜻한 커피 한잔의 여유를 즐겨보세요.', '1.주차가능 2.지하 건물 주차장 3.10대 이상 4.유료- 10분당 1천원 5.관리사무소 정산', '지하철 2호선 을지로입구역 5번출구 도보 3분 (스카이파크호텔 센트럴점 1층)', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '1000-2000', '1000-1800', '1000-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1496, 'T03@T05@T08@T16@T17@T20@T22@T26@T29@T30@T33@T40', 'WHCROAD', '고품격 스타벅스 리저브커피와 티바나티로 다양한 즐거움이 있는 대한상공회의소R점입니다.', '1. 주차불가능', '시청역 9번출구 /서울역 3번출구로 나와 도보5분거리 대한상공회의소 내 1층에 위치해 있습니다', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-1630', '0900-1630', '0800-1630');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1543, 'T04@T05@T08@T16@T17@T20@T30@T34@T36@P40@P90', NULL, '관광,쇼핑의 메카 두산타워 2층에 위치해 있는 스타벅스 동대문두타점 입니다.', '1. 주차가능 2. 주차장위치 - 두타몰 지하3~6층 3. 주차가능대수 - 100대이상 4. 주차조건 - 당일 영수증 지참시 2시간 무료, 추가시 10분당 700원 5. 주차요금정산방법 - 출차시 영수증 제시', '2,4호선 동대문역사문화공원역 하차 14번 출구, 1,4호선 동대문역 하차 8번출구에서 두산타워빌딩 2층으로 오시면 됩니다.
', 'N', '1030-2330', '1030-2330', '1030-2330', '1030-2330', '1030-2400', '1030-2400', '1030-2330', '1030-2400');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1569, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36@P80@P90', 'WHCROAD', '바쁜 일상에 커피 한잔의 여유를 즐길수 있는 을지로4가역점 입니다.', '1. 주차가능 2. 을지트윈타워 지하 주차장 3. 30대 이상 4. 조건부 무료: 기본 30분 무료 , 5천원 이상의 구매영수증으로 30분 무료 추가제공 (충전결제 및 쿠폰사용시 제공불가)', '2,5호선 을지로4가역 10번 출구 우측 을지트윈타워 1~2층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2000', '0900-1800', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1426, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '숭례문북창점에서 커피한잔의 여유로움과 편안한 휴식을 즐겨보세요.', '주차불가', '시청역 7번출구 직진 300M 도보 5분거리
호텔 GRACERY 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1668, 'T08@T16@T17@T20@T21@T30@T32@T34@T35@P80', 'WHCROAD', '따스하고, 넓은 공간 속 나만의 작은 스타벅스 경험을 만나보세요. 스타벅스 묵동점입니다.', '1. 주차 가능 2. 주차위치 - 입점건물 지하 3. 주차가능대수 - 10대 이상 4. 조건부무료 ( 기본 20분 무료주차 이후 유료)', '지하철 : 태릉입구역 7번출구, 먹골역 1번출구에서 직진
버스 : 105, 146 묵동자이, 신도브래뉴 아파트 정류장 하차', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (363, 'T02@T04@@T08@T16@T17@T20@T30@P40@P80', 'WHCROAD', '쇼핑의 즐거움과 편안한 휴식공간이 있는 묵동이마트점입니다.', '1. 주차 가능 2. 주차위치 - 입점건물 지하 3. 주차가능대수 - 10대 이상 4. 조건부무료 (120분 무료, 이후 10분당 500원) 5. 주차요금정산방법 - 고객이 상품 구매 후 파트너에게 직접 주차 할인 요청, 수기 웹 할인을 통해 진행', '7호선 먹골역1번출구 W웨딩홀 옆건물 자이프라자 B1
', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (493, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P60@P80@P90', 'WHCROAD', '가족, 연인, 친구와 추억을 만들고 싶을때에는 아늑한 상봉역점으로 오세요~', '1. 주차가능 2. 주차장위치 - 매장 옆 기계식 주차장 이용 3. 주차가능대수 - 10대이상 4. 주차조건 - 구매 영수증에 도장확인 시 1시간 무료', '지하철7호선 상봉역 1번출구 또는 중앙선 상봉역 8번 출구에서 50M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (838, 'T04@T05@T08@T09@T16@T17@T20@T30@P80', 'WHCROAD', '향긋한 고품질의 커피와 편안하고 아늑한 분위기, 친근한 미소가 있는 사가정역점입니다.', '1. 주차가능 2. 주차장위치 - 건물 뒷편 기계식 주차장 3. 주차가능대수 - 10대이상 4. 주차조건 - 구매 영수증당 1시간 무료', '사가정역 3, 4번 출구 사이 길 100m 진입해서 좌측 빌딩 1층', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (903, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '편안한 좌석과 따뜻하고 부드러운 커피가 있는 중랑구청점에서 일상의 여유를 즐기세요.', '1.주차가능 2.입점건물 지하 3.주차가능대수-4대 이상 4.주차조건-조건부 무료 (구매영수증 지참 1시간 ) 5.주차요금 정산 방법 -파트너 문의', '지하철 7호선 중화역 3번 출구에서 273, 2115, 1122번 버스로 중랑구청 정류장 하차 후 사거리 우측 방향으로 도보 250m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (964, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '한 편의 영화, 한 잔의 커피로 여유를 나누는 중랑역 점 입니다.', '1.주차가능 2.입점건물 기계식 주차장 3. 주차가능대수-4대 이상 4.주차조건-조건부 무료 (구매영수증 지참 30분 ) 5.주차요금 정산 방법 -파트너 문의', '경의중앙선 중랑역 4번출구에서 횡단보도 건너 우측, 도보 1분 거리 (140M)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1055, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@', 'WHCROAD', '달콤한 커피향기와 친절한 파트너들의 미소가 가득한 상봉점 입니다.', '1. 주차가능 2. 주차장위치 - 건물 지하주차장 이용 3. 주차가능대수 - 10대이상 4. 주차조건 - 최초 30분 무료, 이후 10분당 500원(매장 이용고객 추가할인 없음)', '지하철 7호선 상봉역 2번 출구에서 도보로 8분 거리 
경춘선 망우역 1번출구에서 도보로 3분 거리', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1695, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '바쁜 일상 속 커피 한 잔의 여유를 즐길 수 있는 광주비아DT점입니다.', '1. 주차가능 2. 주차장위치-매장 전면 3. 주차가능대수-(장애인 1대 포함)16대 4. 주차조건-무료', '광주과학기술원에서 광산 IC 방면
대중교통 : 09, 27, 92, 94번(월계중 하차) / 20, 23번(첨단금호아파트 하차)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (379, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '가족끼리, 연인끼리, 그리고 가끔은 혼자만의 여유를 즐기고 싶은 곳, 광산수완점입니다.', '1.주차불가능', '광주시 수완동 국민은행 사거리 국민은행 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (732, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '기분 좋은 음악과 따뜻한 커피가 있는 첨단점에서 여유를 즐기세요.', '주차불가능', '첨단 LC타워 옆 에이스빌딩 106호', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (684, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '아늑한 분위기, 친절한 파트너, 맛있는 커피가 있는 광주하남점입니다.', '1.주차불가능', 'SK텔레콤과 콜롬버스 사이 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (713, 'T04@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향긋한 커피 향과 편안함을 광주 장덕점과 함께 느껴보세요.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-(장애인 1대 포함) 38대 4.주차조건 - 30분 무료', '세계로 병원과 롯데마트 사이 위치', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (818, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '좋은 사람과 커피를 마시면 더욱 행복해 지는 "광주쌍암점" 입니다.', '주차불가능', '첨단1동주민센터 옆 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (878, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '따뜻함과 편안함이 있는 광주신가 Drive Thru 매장으로 오세요~', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-5대 4.주차조건-무료', '하남방면 신가사거리 위치 (구,극락강 주유소)
(버스: 광주역에서 송정 98번, 극락역 입구 하차.
광주터미널 첨단 09번, 신가사거리 하차)
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1160, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T22@T36', 'WHCROAD', '언제나 커피 한 잔의 여유를 드리는 광주수완DT점입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-(장애인 1대 포함)16대 4.주차조건-무료', '자차) 수완지구 (첨단 -&gt; 수완지구방향) s-oil주유소 지나 바로 우회전 입구 진입
대중교통)버스 수완우미린2차 하차시 도보 5분: 금호46, 문흥39, 송암72, 수완11
하완마을 하차시 도보3분: 수완49, 수완03', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1161, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36@P60', 'WHCROAD', '바쁜 일상속에서 커피한잔의 여유를 즐기는 광주송정역점 입니다.', '1.주차불가능', '지하철 광주송정역 5번 출구 도보 1분 이내', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1252, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '아늑한 분위기와 친절한 서비스를 경험 할 수있는 광주 흑석DT점입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-(장애인 1대 포함)21대 4.주차조건-무료', '자차) 흑석사거리에서 하남 방향 직진 후 이전 S-oil 위치, KT 하남지점 골목 입구 위치 
대중교통)버스 흑석 사거리 하차시 도보 7분: 선운 101, 수완 12', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1421, 'T01@T04@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '향긋한 커피와 함께 여유을 느껴보세요.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-9대 4.주차조건-무료', '자차) 하남 성심병원에서 홈플러스 광주하남점 방향 직진, 약 4분 거리
대중교통) 일곡 10, 상무62 월곡 2동주민센터 하차시 도보 1분 / 문흥 10, 송암 68, 송정 33 산정중입구 하차시 도보 1분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1635, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '커피 한잔의 여유를 느낄 수 있는 스타벅스 광주선운DT점 입니다.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-(장애인 1대 포함)16대 4.주차조건-무료', '자차) 선운지구방면 → 선운지하차도 → 평동대교 방면 600m 우측에 위치 
대중교통) 선운14, 선운101, 송정93, 송정 10 선운휴먼시아 하차, 평동대교 방향 도보 2분

', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1440, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '일상에 행복을 스며들게 하는 스타벅스 광주운남DT점입니다.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-8대 4.주차조건-무료', '운남주공 5, 6단지 사이
광산수완 미래아동병원 옆, 운남고등학교 맞은 편
운남삼성아파트 하차 도보 1분 이내', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (355, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '즐겁고 편안하게 커피를 즐길 수 있는광주봉선점 으로 고객 여러분을 초대합니다.', '1. 주차가능 2. 주차장위치 - 건물지하 3.주차가능대수- 20대이상 4.주차조건- 무료(1시간) 5. 주차요금정산방법 - 파트너에게 요청', '봉선중앙로 사거리에서 봉선 이마트 방향으로 폴라리스 건물 1층에 위치
버스이용시 27,37,48,98번 봉선2동 주민센터 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (569, 'T04@T05@T08@T09@T16@T17@@T20@T21@T30@T36', 'WHCROAD', '지친 일상에서의 달콤한 여유를 광주진월점에서 만끽하세요.', '1.주차가능 2.주차장위치-건물지상3,4층 3.주차가능대수-20대이상 4.주차조건- 무료(입차시간부터 1시간 무료) 5.주차요금정산방법 -파트너에게 요청', '광주대광여고 건너편 빅스포 내 1층
버스 07,17,28,70,73번 대광여고 하차 도보 3분거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (865, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '아늑한 공간에서 향긋한 커피와 함께 여유로움을 느껴보세요.', '1.주차가능 2.주차장위치-입점건물후면 3.주차가능대수- 10대이상 4.주차조건- 무료(입차시간부터 3시간 무료) 5.주차요금정산방법 -파트너에게 요청', '봉선중앙로 사거리에서 봉선동우체국 방향으로 도보 5분.
버스 이용 시 28, 37, 48번 봉선삼익사거리 하차', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1073, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '행복하고 즐거움이 가득한 스타벅스 방림 DT 매장입니다', '1. 주차가능 2. 주차장위치 - 매장 전면 3.주차가능대수- (장애인1대포함)10대 4.주차조건- 무료', '광주방림동 양림동 휴먼시아 맞은편 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1251, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '바쁜 일상 속 작은 여유를 선물해드리는 스타벅스 광주서문대로점입니다', '1.주차가능 2.주차장위치-건물지하1,2층 3.10대이상 4.무료', '버스 이용시 송암31번, 일곡28번, 진월17번, 첨단 95번 대성여고 정류장 하차', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1342, 'T05@T08@T09@T16@T17@T20@T21@T30@T35@T36', 'WHCROAD', '지친 일상속 당신의 쉼이 되고싶은 스타벅스 광주봉선로점입니다.', '1.주차가능 2.주차장위치-입점건물내 3.주차가능대수- 50대이상 4.주자조건-무료(테이크아웃 1시간 무료/ 매장체류 2시간 무료) 5.주차요금정산방법 -파트너에게 요청', '광주광역시 남구 제석로 104,202동 지하1층 B102호
봉선동 남양 휴튼아파트 맞은편 HR메디웰 B1층


', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1587, 'T01@T04@T07@T08@T09@T16@T17@T20@T21@T34', 'WHCROAD', '효천지구의 새로운 핫플레이스', '1.주차가능 2.주차장위치-매장 측면 3.주차가능대수-(장애인 1대 포함) 10대이상 4.주차조건- 무료', '행암교차로에서 임암길 , 빛여울초등학교 방면', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1525, 'T01@T08@T09@T16@T17@T20@T21@T34@T36@P70@P90', 'WHCROAD', '때로는 빠르게 , 때로는 편안하게 , 늘 가까이 고객과 함께 하는 스타벅스 광주주월DT점입니다.', '1.주차가능 2.주차장위치- 매장 전면 3.주차가능대수- (장애인 1대 포함)5대이상 4.주차조건 -무료', '주월교차로 백운동 방향 (무등시장 지나 S-OIL 목인주유소 옆) 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1530, 'T01@T04@T08@T09@T16@T17@T20@T21@T34', 'WHCROAD', '자연에서 영감을 받은 플랜테리어로 안정되고 편안한 휴식의 공간을 경험해 보세요', '1.주차가능 2.주차장위치-매장 후면 3.주차가능대수- (장애인 1명 포함) 22대이상 4.주차조건 -무료', '농성광장에서 백운고가 방면 맥도날드 건너편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (593, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '다채로운 공간, 스타벅스만의 특별함을 느낄 수 있는 조선대점입니다.', '주차 불가능', '조선대 미술대학 후방 20m 앞 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (441, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '내츄럴하면서도 현대적이며 세련된 감각의 디자인으로 장인의 손길이 느껴지는 심플함과 우아함있는 매장, 충장일가점입니다.', '주차 불가능', '충장로 1가 초입로와 구시청 사이 서석로에 위치
지하철 문화전당역 3번출구 인근, 버스이용시 문화전당(남)하차 광주우체국 방향 3분거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (337, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '패션중심의 거리 충장로에서 편안하고 여유로운 시간을 느껴보세요. 고객님의 소중한 시간을 스타벅스 충장로점이 함께 하겠습니다.', '주차 불가능', '광주 충장 파출소 맞은편에 위치
지하철 이용시 금남로4가역 1번 출구 NC WAVE 방면
버스 이용시 충파(북)하차 금남로 공원방면', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (188, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '패션의메카! 그 중심 충장서림점 만의 특별한 서비스를 지금 경험해보세요!!', '주차 불가능', '지하철 문화전당역 입구에서 우체국 방면 시내 초입에 위치 에잇세컨즈옆 1층, 문화전당역에서 도보 3분거리', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (722, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '다채로운 사계절을 가장 먼저 만나 볼 수 있는 ''광주무등산점''에서 향긋한 커피와 맛있는 푸드를 즐겨보세요.', '1. 주차가능 2. 주차장위치 -매장 측면 3.주차가능대수 - 3대 4.주차조건 - 무료', '무등산 증심사 입구(버스 09, 12, 35, 49, 50, 51, 54, 76번 종점)', 'N', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (877, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P60@P80', NULL, '광주 충장로의 새로운 랜드마크인 광주황금점에서 커피 한잔의 여유를 경험해 보세요.', '주차 불가능', '충장로 파레스 관광호텔 맞은편에서 메가박스 방향으로 10m 직진. (구)런던약국 자리', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1287, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '사시사철 다채로운 매력을 가진 광주지산유원지입구점에서 맛있는 커피와 여유를 만끽해보세요', '1. 주차가능 2. 주차장위치 -매장 전면,후면 3.주차가능대수 - 10대~20대 4.주차조건- 무료', '지산유원지입구 삼거리 우측방면에 위치', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1632, 'T01@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '커피 한잔의 여유와 편리하고 특별한 Drive Thru 경험을 광주지원DT점에 느껴 보세요', '1. 주차가능 2. 주차장위치 -매장 전면 3.주차가능대수- 50대이상 4.주차조건- 무료', '지원2동 행복 복지 센터 버스 정류장 하차 후 화순 방향으로 도보 5분 소요', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1545, 'T05@T08@T16@T17@T20@T21@T30@T34@T36@P70@P80@P90', NULL, '문화와 멋이 함께하는 광주의 핫플레이스, 스타벅스 광주동명점입니다.', '주차 불가능', '장동교차로에서 동구노인종합복지관 방면 (구 축산농협 장동지점 자리)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1577, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P90', 'WHCROAD', '차안에서 스타벅스 커피를 간편하고 빠르게 즐기실 수 있는 광주지산DT점입니다.', '1. 주차가능 2. 주차장위치 -매장 전면 3.주차가능대수- 10대~20대 4.주차조건- 무료', '지산사거리 → 조선대 방향 150m', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (482, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '용봉택지지구 공원거리 중심에 위치한 매장으로 고객들께 편안한 쉼터를 제공합니다.', '주차불가능', '용봉 택지로 방면 전철우 사거리 미니스톱 건너편 *대중교통 이용시 419,83번(용봉모아아파트 하차) 

*26,30,31,57번 이용시 유창아파트 하차', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (61, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '열정과 낭만으로 가득한 오후향기.저녁엔 붉은 석양으로 가득한 스타벅스에서 한가로운 휴식을 즐기세요.', '주차불가능', '전남대 후문 방향 공대 쪽문 건너편
대중교통이용 18,19,28,38,419,80,83번', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (936, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T34@T36@P90', 'WHCROAD', '따뜻한 커피와 따뜻한 미소, 편안한 공간이 준비되어있는 스타벅스 광주용두DT점 입니다.', '1. 주차가능 2. 주차장위치-매장 측면 3. 주차가능대수-5대 4. 주차조건-무료', '신용교차로에서 양산동 방면, 첨단자이 아파트 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (963, 'T04@T05@T07@T08@T09@T16@T17@@T20@T21@T30@T36@P70@P90', 'WHCROAD', '주거복합 핫플레이스! 스타벅스 광주첨단신용점에서 커피한잔의 여유를 즐겨보세요.', '1. 주차가능 2. 주차장위치-입점건물지하 3. 주차가능대수-30대 4. 주차조건-조건부무료(영수증 30분 무료) 5. 주차요금정산방법-파트너에게 요청', '첨단2지구 신한금융센터와 호반 201동 사이 새나래 병원 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (973, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '유리처럼 빛나는 서비스로 아름다운 추억이 만들어지는 매장', '1. 주차가능 2. 주차장위치-매장 후면 3. 주차가능대수-6대 4. 주차조건-무료', '운암사거리 신일교회와 벽산 블루밍 아파트 사이 운암동 방면 대로변에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1025, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '낭만과 젊음의 거리 대학로 길에서 색다른 경험을 느껴보세요', '주차불가능', '광주북구청 복개도로 먹자골목 사거리 방향 고시학원 후면 골목에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1172, 'T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '일상속에 여유와 행복을 드리는 광주일곡점입니다.', '주차불가능', '일곡사거리 우체국 맞은편 삼영빌딩 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1303, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '커피 한잔의 여유를 즐길 수 있는 광주두암타운점 입니다.', '1. 주차가능 2. 주차장위치 - 건물 지상,지하 3.주차가능대수- 50대이상 4.주차조건- 무료', '두암타운 사거리에서 제 2순환도로 방향
두암주공아파트 4단지 방면 람바다 식당 건너편
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1299, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '고객님의 차 안에서 스타벅스 커피를 간편하고 빠르게 즐기실수 있는 광주매곡DT점입니다.', '1. 주차가능 2. 주차장위치-매장 후면 3. 주차가능대수-(장애인 1대 포함)20대 4. 주차조건-무료', '광주공고입구 버스 정류장에서 고려고 방면으로 도보 3분 이내 (북구미래아동병원 건너편)


', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1436, 'T01@T04@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '커피 한잔의 여유를 느낄 수 있는 스타벅스 광주신안DT점 입니다.', '1. 주차가능 2. 주차장위치-매장 전면 3. 주차가능대수-(장애인 1대 포함)11대 4. 주차조건-무료', '- 신안동 삼성디지털프라자(신안교교차로) → 경신여고 방향 50m 
- 신안교 정류장 하차 : 매월26, 문흥18, 봉선27, 송암47 이용 광주지방 기상청 방향 도보 3분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1641, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '달콤한 커피와 소소한 행복, 나만의 공간이 있는 스타벅스 광주 연제DT점 입니다.', '1. 주차가능 2. 주차장위치-매장 후면 3. 주차가능대수-(장애인 1대 포함)14대 4. 주차조건-무료', NULL, 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1623, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '지친 일상에 달콤한 여유와 아늑함을 드리는 광주 오치점입니다.', '1. 주차가능 2. 주차장위치-매장 후면 3. 주차가능대수-(장애인 1대 포함)9대 4. 주차조건-무료', '설죽로 북부경찰서 맞은편 위치
대중교통 이용시 54,38,23,53,07번(광주공고입구 하차)
버스정류장에서 도보 2분이내', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (444, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '도심속에서 즐기는 바캉스 , 쇼핑 과 휴식을 한번에 즐길수있는 스타벅스 신세계광주신관B1점 입니다.', '1. 주차가능 2.주차장위치-건물주차장 3.주차가능대수- 100대이상 4.주차조건 -조건부무료(1만이상구매시 1시간 무료) 5.주차요금정산방법- 영수증 제시', '''신세계광주패션몰''점이 ''신세계광주신관B1''점으로 리뉴얼 오픈하였습니다.
광주신세계백화점 지하1층 신관 패션스트리트 중앙에 있습니다.', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (389, 'T04@T05@T08@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '밝고 활기찬 스타벅스 상무역점에서 멋진 추억을 만들어 보세요.', '주차불가능', '지하철 상무역 4번출구 앞 세정아울렛 쪽으로 도보 3분내', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (380, 'T04@T05@T08@@T16@T17@T20@T21@T30@T36@P70@P80@P90', 'WHCROAD', '바쁜 일상 속 쉬고 싶으실 때 상무치평점을 찾아주세요. 고객님의 편안한 안식처가 되겠습니다.', '1.주차가능 2. 위치-건물정면 좌측 및 지하 3. 12대 가능 4. 1시간 무료(영수증 날인 파트너 요청) 5. 주차관리인 정산', '상무지구 롯데마트 건너편, 상무병원 옆', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (113, 'T04@@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '도심 속에 젊음의 열정을 불태울 수 있는 나만의 아지트', '주차불가능', '상무지구 구름다리 MK빌딩 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (167, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P90', 'WHCROAD', '도심속의 오아시스, 신세계광주점 입니다.', '1. 주차가능 2.주차장위치 - 백화점주차장 3.주차가능대수- 100대이상 4.주차조건 -조건부무료(1만이상구매시 1시간 무료) 5.주차요금정산방법- 영수증 제시', '신세계백화점 1층 정문 옆 

', 'N', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (676, 'T04@T05@T08@T09@T16@T17@T20@@T21@T30@T36', 'WHCROAD', '동천마을의 새로운 휴식처, 포근함을 드리는 광주동림점 입니다.', '1.주차가능 2.주차장위치-매장후면,건물지하 3.주차가능대수-매장후면 4대, 건물지하(장애인 1대 포함) 12대 4.주차조건 - 무료', '하남대로 사거리에서 광주동림병원 방향으로 도보 5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (689, 'T03@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '스페셜티 리저브커피의 향의 어우러지는 특별한 매장을 경험해 보세요.', '주차불가능', '상무중앙로 지적공사 사거리 우리은행 옆', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (927, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T32@T36@P60', 'WHCROAD', '도심 속 한가운데 위치한 광주 금호 DT 매장에서 차별화된 디지털 감동 서비스를 경험 하세요', '1. 주차가능 2. 주차장위치 -매장 전면 3.주차가능대수- (장애인1대포함)10대 4.주차조건- 무료', '운천 저수지 정류장 순환 01 번 / 지원 45 번 승차 . CBS 하차 후 운천 저수지 방향 5분 도보', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1026, 'T04@T05@T08@T16@T17@T20@@T21@T30@T36@P90', 'WHCROAD', '광주에서 가장 아름다운 동네의 사랑방, 광주풍암점 입니다.', '주차 불가능', '풍암지구 국민은행 건너편 구)서창농협 


', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1057, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '따뜻한 커피와 음악이 있는 광주상무시민로점에서 여유를 즐겨보세요', '주차불가능', '상무지구 이마트 맞은편 아이타워', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0900-2200', '0900-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1116, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '바쁜 일상 속 편안한 휴식공간이 되어 드릴 광주상무중앙로점입니다.', '주차불가능', '광주지하철 1호선 상무역 5번 출구에서 시청 방향으로 직진하여 도보 5분 정도.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1349, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '미소로 맞이해주는 화정DT점에서 특별한 Drive Thru 서비스를 경험해보세요.', '1.주차가능 2.주차장위치-매장 전면 3.주차가능대수 - 5대 4.주차조건 -무료', '화정역과 농성역 사이 국민은행 맞은편', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1485, 'T01@T04@@T08@T09@T16@T17@T20@P80@P90', 'WHCROAD', '밝고 활기찬 상무DT 점에서 신속한 서비스와 맛있는 음료를 즐겨보세요', '1.주차가능 2.건물측면 3. 3대 4.무료', '운천역 3번 출구 운천저수지 방면 BMW 전시장 옆', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1494, 'T01@T05@T08@T09@T16@T17@T20@T36@P60@P80@P90', 'WHCROAD', '바쁜 일상 속 작은 여유를 선물해드립니다.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수- (장애인 1대 포함)5대이상 4.주차조건-무료', '죽봉대로 교직원공제회앞 사거리 기아모터스 건너편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1601, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@P90', 'WHCROAD', '앞산의 명물 카페거리에 위치한 "대구앞산DT점"에서 빠르고 편리한 Drive Thru의 경험을 느껴보세요.', '1.주차가능 2.주차장위치:매장 출입구 오른쪽 DT 진입로 옆 3.주차가능대수:20대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차 / 입차, 출차 시 경사로 주의해주세요', '현충로역 하차 2번 출구에서 576M (도보 10분 내 위치)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1573, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P80@P90', 'WHCROAD', '바쁜 일상속 여유와 휴식을 느낄 수 있는 스타벅스 대구영대병원역DT점입니다.', '1.주차가능 2.주차장위치:매장 앞 주차장 이용 3.주차가능대수:6대(장애인 주차 1대 포함) 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차', '영대병원역 하차 3번 출구에서 433M (도보 6분 내 위치)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (553, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P60@P80', 'WHCROAD', '역세권의 메카! 교통의 요충지! 대구서부정류장역점입니다.', '1.주차가능, 2.주차장위치-건물뒷편 1층주차장, 3.주차가능대수-5대이상, 4.주차조건- 구매고객 1시간 무료', '지하철1호선 서부정류장역 1번출구에서 본리동방향 길 맞은편 도보 2분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (481, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '향긋한 커피향과 포근한 분위기를 대구성서점에서 느껴보세요~', '1. 주차가능 2. 주차장 위치-건물 지하 3. 주차가능대수-5대~10대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-건물주차권 뒷면 도장(주차권 없을시 영수증 뒤 도장)', '성서산업단지역 7번 출구로 나와 직진. 성서우체국을 지나 국민연금 네거리에서 우회전 후 보이는 SK주유소 옆 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (128, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '젊음과 낭만,열정,일상의 휴식을 대구 계명대점에서 만끽하세요', '1. 주차불가능', '계명대학교 동문 대구은행 앞 도로쪽 150M 전방 왼편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (848, 'T01@T04@T05@T08@T09@T16@T17@T20@T30@T32@T36@P80', 'WHCROAD', '도심 속 한 가운데 Drive Thru의 편리함과 커피 한잔의 여유로움을 느낄 수 있는 여기는, 대구상인DT점입니다.', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수-(장애인1대포함)5대, 4.주차조건- 구매고객 2시간 무료주차', '지하철1호선 
상인역 8번출구 도보 10분 (영남고등학교방면)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (870, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T34@T36@P60@P80', NULL, '교통의 요충지 달구벌대로에 위치한 ''대구두류DT점''에서 드라이브스루로 편하고 빠르게 이용해보세요.', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수-3대, 4.주차조건- 구매고객 2시간 무료주차', '지하철 2호선 내당역 2번 출구 도보 5분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (962, 'T03@T05@T07@T08@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '스타벅스 대구상인역점에서 프리미엄 리저브 커피와 함께 특별함을 즐겨보세요.', '주차불가능', '지하철 1호선 상인역 3번출구에서 직진, 도보 1분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (947, 'T01@T04@T05@T07@T08@T16@T17@T20@@T30@T32@T36', NULL, '감삼동 주거복합 단지 속 스타벅스 대구감삼DT점에서 따뜻한 커피한잔의 여유를 즐겨보세요.', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수-6대, 4.주차조건- 구매고객 2시간 무료주차', '지하철 2호선 죽전역 2번 출구로 나와 본리네거리 방면으로 도보 10분 거리
(맞은편 이마트감삼점 옆)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1004, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '여행의 즐거움을 ''대구성서IC DT점''과 함께 드라이브스루로 빠르고 편리하게 이용해 보세요.', '1. 주차가능 2. 주차장 위치-매장 앞면 3. 주차가능대수-7대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-정산없이출차', '지하철 2호선 이곡역 4번출구 도보 5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1041, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '커피한잔과 힐링의 대표명소인 대구수목원입니다.', '주차불가능', '대구수목원 입구(나성하와이 옆)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1020, 'T04@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '도심 주거단지 속 부드러운 커피향을 느낄 수 있는 대구이곡점입니다.', '1. 주차불가능', '지하철 2호선 성서산업단지역 8번출구에서 AW호텔 돌아 계명대 방향 도보 15분 거리', 'N', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1158, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '안녕하세요 여기는 스타벅스 대구월성점 입니다.', '1.주차가능, 2.주차장위치-건물 내 그루시티 주차타워이용, 3.주차가능대수- 6대, 4.주차조건-스타벅스 이용 고객 1시간 무료', '월성동 원더풀스파랜드 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1091, 'T01@T04@T05@T07@T08@T16@T17@T20@T36', 'WHCROAD', '대구달서구의 쉼터. 월광수변공원의 시작인 대구도원DT점 스타벅스에서 함께하세요.', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수-(장애인1대포함)8대, 4.주차조건-무료', '월곡네거리 월광수변공원 초입에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1201, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '행복한 제3의 공간 스타벅스 대구진천역점이 여러분에게 항상 행복을 드리겠습니다.', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수-6대, 4.주차조건-무료', '대구도시철도 1호선 진천역 4번 출구 도보 3분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1338, 'T05@T08@T09@T16@T17@T20@T30@T36', NULL, '따뜻한 햇살이 아늑한 송현동의 랜드마크 대구월촌역점입니다.', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수- 6대, 4.주차조건-구매고객2시간 무료', '대구 도시철도 1호선 월촌역 8번 출구', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1386, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', NULL, '달서구의 새로운 공간! 그윽한 커피한잔과 함께 편안함을 선사하는 대구광장점 입니다.', '1. 주차불가능', '지하철 2호선 두류역 하차, 7번 출구 도보 133m', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1418, 'T01@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '카페의 편안함을 차안에서도 즐길수있는', '1.주차가능, 2.주차장위치-매장전면, 3.주차가능대수-4대, 4.주차조건-구매고객 2시간 무료', '대구 도시철도 1호선 상인역 4번 출구 도보 8분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1380, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '향긋한 커피와 함께 따뜻한 미소를 건내고 즐거운 하루를 선사하는 대구죽전역점입니다.', '1.주차가능, 2.주차장위치-월드마크웨스트엔드 지하주차장, 3.주차가능대수-10대이상, 4.주차조건-스타벅스이용시 4시간무료, 5. 주차요금정산방법 - 매장사용영수증지참', '2호선 죽전역 2번 출구 건너편 월드마크웨스트엔드 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1512, 'T05@T08@T16@T17@T20@T21@T30@T36@P20@P70@P80@P90', 'WHCROAD', '계명대학교 동산병원 내 아늑한 쉼터, 작은 여유와 마음의 안식처가 되어 드립니다.', '1. 주차불가능', '지하철2호선 강창역 6번출구와 연결되어 있으며 계명대학교 동산병원 1층 좌측 끝에 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (984, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '편안한 분위기와 향긋한 커피향으로 가득한 신도시 죽곡에서 만나는 스타벅스 대구죽곡점 입니다.', '1. 주차가능 2. 주차장 위치-건물지하 3. 주차가능대수-10대~20대 4. 주차조건-스타벅스 이용고객 2시간 무료 5. 주차요금정산방법-영수증지참', '지하철 2호선 대실역 1번출구에서 262m(도보 5분 내 위치)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1248, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '스타벅스 대구테크노폴리스점이 여러분을 기다리겠습니다', '1.주차가능, 2.주차장위치-무료매장 뒷 편 대경타워 지하 주차장 이용, 3.주차가능대수-4대, 4.주차조건-구매시3시간무료', '버스 급행8번 유가면사무소 하차, 도보1분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1705, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35', 'WHCROAD', '동구의 중심 대구각산역DT에서 차별화된 서비스와 빠르고 편리한 DT를 경험해 보세요', '1.주차가능 2.주차장위치 - 매장앞 전용주차장/매장옆 공터 주차장 3. 추가가능대수 - 전용주차장5대/공터주차장 30대, 4.주차조건- 매장이용고객 2시간 무료주차', '지하철1호선 각산역 1번출구 도보3분 (반야월이마트 방면)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1702, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '안녕하세요 도심속 커피한잔의 여유를 즐길수 있는 스타벅스 대구율하점 입니다', '1.주차가능 2.주차장위치-율하타임스퀘어 뒷편 지상주차장 3.주차가능대수-300대 4.주차조건- 매장 이용시 무료주차 가능', '율하 상업지구 내 율하타임스퀘어 1층에 위치
지하철 1호선 율하역에서 도보 15분 
버스이용 : 수성,수성3-1,북구3,518', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (386, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '대구 동구지역 1호점 오래기다리신만큼 항상 만족하실 수 있도록 노력하는 반야월이마트점 되겠습니다.', '1.주차가능 2.주차장위치-이마트3~4층 3.주차가능대수-100대이상 4.주차조건 -무료', '지하철 1호선 각산역 4번출구 앞, 도보 6분거리', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (577, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '낭만, 따뜻함, 즐거움이 공존하는 아늑한 쉼터! 대구의 새로운 랜드마크, 대구동촌유원지점에서 바리스타의 정성이 가득 담긴 커피한잔과 여유를 즐겨 보세요!', '1.주차가능 2.주차장위치-건물 앞 공용주차장 3.주차가능대수-70대 4.주차조건-매장이용시2시간무료', '지하철 1호선 동대구역에서 버스환승, 동구문화체육회관 하차(651,521,106,북구3)', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (417, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P60@P80', 'WHCROAD', '바쁜 일상 속에 여유로움과 향기로운 커피가 있는 곳, 세련되고 심플한 동대구터미널점입니다.', '1.주차가능 2.주차장위치-건물옆 주차타워 3.주차가능대수-70대 4.주차조건-매장이용시2시간무료 5. 주차요금정산방법-주차증도장', '신세계백화점 정문 횡단보도 건너 직진
50m이내', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (782, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '가족 연인 친구들과 봉무공원에서 휴식을, 몰에서 쇼핑의 즐거움에 이어 커피 한 잔의 여유로움까지 드리는 대구봉무점입니다.', '1.주차가능 2.주차장 위치-입점건물 지하1층 3.주차가능대수-20대 이상 4.주차조건-무료', '봉무레포츠공원 앞 하차 후 길 건너 100M 직진 후 좌측', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (913, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '도시민의 휴식처, 팔공산의 정기를 스타벅스 고품격 리저브 커피에 담아드립니다.', '1.주차가능 2.주차장위치-매장전면/측면 주차장 3.주차가능대수-33대 4.주차조건- 매장 이용객 2시간 무료주차', '파계삼거리 오시는 길 우측 (버스 101, 101-1 종점)', 'N', '1000-2130', '1000-2130', '1000-2130', '1000-2130', '1000-2200', '1000-2200', '1000-2130', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1034, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '뛰어난 접근성,탁트인 전망에서 최고의 스타벅스 경험을 해보세요,더욱 차별화된 디지털 서비스로 찾아뵙겠습니다', '1.주차가능 2.주차장위치-매장앞 전용주차장 3.주차가능대수-8대 4.주차조건-매장이용고객 2시간 무료주차', '지하철 2호선 범어역 11번출구에서 MBC 방면으로 도보 10분거리
문화웨딩 홀 옆 1,2층', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1144, 'T03@T05@T07@T08@T09@T16@@T17@@T20@T22@T26@T29@T30@T36@T40@', 'WHCROAD', '블랙이글, POC, 사이폰, 클로버 기구로 추출된 특별한 리저브 커피를 즐길 수 있는 신세계대구8F(리저브)점입니다.', '1.주차가능 2.주차장위치-신세계백화점 지하주차장 3.주차가능대수-100대이상 4.주차조건-매장이용시 1시간 무료주차 5.주차요금정산방법-파트너 시스템 전산등록', '지하철 1호선 동대구역, KTX 동대구역과 연결
대구 신세계백화점 본관 8층,루왕 스트리트.신세계아카데미 옆
', 'N', '1100-2130', '1100-2130', '1100-2130', '1100-2130', '1100-2130', '1100-2130', '1100-2130', '1100-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1145, 'T04@T05@T07@T08@T09@T16@T17@T20@T29@T30@T36@P40@P60@P80', 'WHCROAD', '편리한 동대구복합환승센터에서 문화와 쇼핑, 향긋한 티바나 전용 음료를 즐길 수 있는 신세계대구3F(티바나)점입니다.', '1.주차가능 2.주차장위치-신세계백화점 지하주차장 3.주차가능대수-100대이상 4.주차조건-매장이용시 1시간 무료주차 5.주차요금정산방법-파트너 시스템 전산등록', '지하철 1호선 동대구역, KTX 동대구역 연결
대구 신세계백화점 본관3층 라코스테 매장옆', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (512, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P20', 'WHCROAD', '젊음의 낭만과 열정이 숨쉬는 그곳,하루의 시작과 마지막을 스타벅스 경북대점에서 마무리하세요! 한결같은 미소로 여러분을 기다리겠습니다.', '1. 주차불가능', '경북대학교 북문 횡단보도 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (656, 'T03@T05@T07@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '스타벅스 대구칠곡점에서 프리미엄 리저브 커피와 함께 특별함을 즐겨보세요.', '1. 주차가능 2. 주차장 위치-건물 지하 3. 주차가능대수-20대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-파트너에게요청', '칠곡 3지구 롯데시네마 건물 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (759, 'T01@T04@T05@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '다양한 문화시설의 중심지, 북구 침산네거리에 위치한 ''대구침산DT점''에서 스타벅스만의 디지털 서비스와 아늑한 공간의 여유를 느껴보세요.', '1. 주차가능 2. 주차장 위치-매장 앞면 3. 주차가능대수-4대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-정산없이출차', '침산네거리에서 대구역방향 도보 10M', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (884, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '칠곡지구의 또 다른 공간 스타벅스 대구동천점이 여러분께 즐거움을 선사 합니다.', '1. 주차가능 2. 주차장 위치-매장 뒷면 3. 주차가능대수-13대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-정산없이출차', '세븐벨리 앞 사거리에서 동천로24길 방면 약 200미터 직진', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1061, 'T01@T04@T05@T07@T08@T09@T16@@T17@@T20@T36', 'WHCROAD', '대학가의 젊음과 교통의 요충지인 칠곡의 첫번째 Drive Thru 매장에서 차별화된 디지털 감동 서비스를 경험해 보세요', '1. 주차가능 2. 주차장 위치-매장 옆면 3. 주차가능대수-7대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-정산없이출차', '1 .지하철 3호선 구암역 하차 1번 출구로 직진 후 사거리 우회전
2. 버스 527, 708, 726, 730, 북구1, 칠곡3 승차 후 정류장 이름 대구보건대학3에 하차', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1162, 'T04@T05@T07@T08@T16@T17@T20@T30@T36', 'WHCROAD', '대구 최고의 물류센터와 컨벤션 엑스코에 위치한 향기로운 휴식처가 되어줄 스타벅스 대구유통단지점 입니다.', '1. 주차불가능', '엑스코 신관 1번출구 맞은 편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1346, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '대구북구 교통의 중심지 중앙대로에 위치한 DT 매장에서 최고의 커피와 서비스를 만나보세요.', '1. 주차가능 2. 주차장 위치-매장 앞면 3. 주차가능대수-12대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-정산없이출차', '1. 대구역북편교차로에서 침산동 방면 200M 
2. 동침산네거리에서 대구역방면 800M

- 지하철 이용시 : 대구역 1호선 1번,4번 출구에서 홈플러스 방면 도보 10분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1019, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', NULL, '디지털 감동서비스와 편리함을 드리는 Drive thru매장, 대구평리DT점입니다.', '1. 주차가능 2. 주차장 위치-매장 앞면 3. 주차가능대수-4대 4. 주차조건-스타벅스 이용고객 1시간 무료 5. 주차요금정산방법-정산없이출차', '지하철 2호선 두류역 19번출구 도보 15분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1697, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P90', 'WHCROAD', '대구의 명소 들안길에서 빠르고 편리한 Drive Thru를 경험 해 보세요.', '1.주차가능 2.주차장위치:매장 출입구 오른쪽 DT 진입로 옆 3.주차가능대수:5대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차 / 입차', '들안길 먹거리 타운에서 수성못 방향 우측에 위치(미성복어불고기 좌측)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (544, 'T04@T05@T08@T09@T16@T17@T20@T21@T22@T30@T32@T36@P80@P90', 'WHCROAD', '생활과 가치의 중심, 대구범어제니스점에서 품격있는 여유를 느껴보세요.', '1. 주차가능 2. 주차장위치(입점건물 지하) 3. 주차가능대수(100대이상 ) 4. 주차조건(조건부 무료:영수증당 3시간 무료 이후 10분당 500원) 5. 주차요금정산방법(파트너에게 요청하여 주차정보 등록)', '지하철 2호선 범어역 8번 출구에서 도보 1분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (418, 'T04@T05@T07@T08@T09@T16@T17@T20@T22@@T30@T36@P90', 'WHCROAD', '수성 호반에서 펼쳐지는 다채로운 사계절의 향연을 스타벅스와 함께 수성레이크점에서 즐겨보세요.', '1.주차가능 2.주차장위치:매장 뒷편 전용 주차장 이용 3.주차가능대수:16대(장애인 주차 1대 포함) 4.주차조건:영수증 1만원이상 2시간 무료 5. 주차요금정산방법:출차 시, 주차관리인 영수증 확인', '두산오거리에서 수성관광호텔 가는길 갈림길 좌측에 위치. 수성관광호텔 바로 앞쪽 수성못 앞.
', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (410, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T35@T36@P80@P90', 'WHCROAD', '도시적이고 세련된 인테리어와 편리한 주상복합 단지, 즐거움의 원천인 수성리더스점입니다.', '1.주차가능 2.주차장위치:입점건물(홈플러스 주차장 이용) 3.주차가능대수:50대이상 4.주차조건:홈플러스 및 상가 이용고객 대상 무제한 주차 가능 5.주차요금정산방법:제공방법 없음', '황금네거리에서 두산오거리 방향으로 50M왼편 SK수성리더스뷰 1층 상가내(홈플러스 황금점)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (209, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '오랜시간,커피가 전하는 온기와 고객들의 소중한 추억을 쌓아 만든 아름답고 따뜻한 매장 동아수성점입니다.', '1.주차가능 2.주차장위치:입점건물(백화점 내 주차장 이용) 3.주차가능대수:50대이상 4.주차조건: 구매시 2시간 무료주차 가능 5. 주차요금정산방법: 파트너에게 차량번호 등록 요청', '범물동 동아백화점 수성점 내 입점', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (669, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '쾌적한 공간, 편안한 분위기', '1. 주차가능 2.주차장위치:입점건물 지하(T수성하이츠상가 내 동아마트 지하주차장) 3. 주차가능대수:50대이상 4. 주차조건:조건부무료(스타벅스 영수증지참시 3시간 무료,이후 1시간당 1천원 ) 5. 주차요금정산방법: 출차 시 영수증 제시', '지하철 2호선 대구은행역 1번 출구 도보 1분 수성하이츠 상가 1층 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (704, 'T01@T04@T05@T08@T09@T16@T17@T20@@T36@P20@P80', 'WHCROAD', '대구 최초의 Drive Thru 매장인 대구만촌DT점입니다. 차별화된 디지털 감동 서비스를 경험해 보세요.', '1. 주차가능 2. 주차장위치: 매장전면 3. 주차가능대수: 4대 4. 주차조건: 매장이용시 무료 5. 주차요금 정산방법: 정산없이 출차', '지하철 2호선 만촌역과 담티역 사이, 수성대학교 입구에 위치.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (688, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '아늑한 실내 공간. 바리스타의 정성이 담긴 음료와 은은하게 흘러나오는 음악을 들으며, 스타벅스 대구법원점에서 커피 한잔의 여유를 느껴보세요.', '1.주차가능 2.주차장 위치 -화성파크드림 상가 내 주차장 3. 주차가능대수 - 50대 이상 4. 주차조건- 조건부 무료(매장이용시 1시간 무료) 5. 주차요금정산방법 -주차증 확인도장', '지하철 2호선 범어역 11번 출구에서 대구법원 방향 도보 5분', 'N', '0800-1800', '0800-1800', '0800-1800', '0800-1800', '0800-1800', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (897, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '주거복합 단지의 중심 시지! 스타벅스 대구시지점에서 따뜻한 커피한잔의 여유를 즐겨보세요.', '1.주차불가능', '지하철 2호선 신매역 5번 출구로 나와 사월역 방면 도보로 5분 거리 (350M)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (969, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', 'MBC네거리에 위치한 대구삼성화재점에서 따뜻한 커피 한잔과 함께 바쁜 일상에서의 여유와 편안함을 느껴보세요.', '1.주차가능 2.주차장위치-삼성화재 사옥 지상/지하 주차장 3.주차가능대수-50대 이상 4.스타벅스이용고객 1시간 무료주차 5.주차요금정산방법-파트너주차시스템등록', '지하철 2호선 범어역 4번출구에서 MBC 방면으로 도보 10분 거리, 삼성화재사옥 1층', 'N', '0730-1700', '0730-1700', '0730-1700', '0730-1700', '0730-1700', '1000-1730', '1000-1730', '1000-1730');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1060, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P80@P90', 'WHCROAD', '수성구의 중심 대구황금DT점에서 차별화된 서비스와 빠르고 편리한 DT(Drive Thru)를 경험해보세요.', '1.주차가능 2.주차장위치:매장 뒷편 전용 주차장 이용 3.주차가능대수:10대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법: 정산없이 출차', '황금역1번 출구에서 캐슬골드파크 쪽으로 200m (도보 4분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1023, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '수성못과 들안길을 연결하는 대구상동DT점. 특별한 디지털 감동 서비스를 경험해보세요.', '1.주차가능 2.주차장위치:매장 뒷편 전용 주차장 이용 3.주차가능대수:6대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차', '상동네거리에서 아르떼 수성랜드 방향 건너편(안상규 벌꿀 맞은편)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1156, 'T01@T05@T07@T08@T09@T16@T17@T20@@T36@P70@P90', 'WHCROAD', '신속하고 편리한 대구중동네거리DT점 입니다.오늘도 커피 한잔의 여유를 즐겨보세요^^', '1.주차가능 2.주차장위치:매장 출입구 오른쪽 DT 진입로 3.주차가능대수:7대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차', '지하철 3호선 ''황금역''하차 중동네거리 방향 도보 10분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1282, 'T01@T05@T08@T09@T16@T17@T20@T36@P70@P90', 'WHCROAD', '수성구와 남구를 이어주는 희망교 부근에 위치한 Drive Thru, 여기는 대구중동DT점 입니다.', '1.주차가능 2.주차장위치:매장 앞 주차장 이용 3.주차가능대수:16대(장애인 주차 1대 포함) 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차', '희망교 부근 희망로네거리 농협중앙회 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1221, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P80', 'WHCROAD', '뛰어난 접근성, 차별화된 서비스로 최고의 디지털 감동서비스를 경험하실수 있는 여기는 대구수성네거리DT점 입니다.', '1.주차가능 2.주차장위치:건물 측면 및 후면 스타벅스 전용 주차장 3.주차가능대수: 20대(장애인 1대포함) 4.주차조건: 매장이용 시 2시간 무료 5.주차요금 정산방법:정산없이 출차', '2호선 대구은행역 4번 출구 도보 10분 
수성네거리에서 신천시장 방면', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1307, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '최고의 서비스와 최상의 음료를 즐길 수 있는 세련된 매장', '1.주차가능 2.주차장위치:매장 앞 주차장 이용 3.주차가능대수:11대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법: 정산없이 출차', '대구 지하철 3호선 수성시장역 하자 3번 출구 방향 도보 5분 거리
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1345, 'T03@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T36@T40@P90', 'WHCROAD', '진귀한 스타벅스 리저브 음료와 함께 아름다운 수성호수의 사계절을 대구수성호수점에서 만끽 해 보세요.', '1.주차가능 2.주차장위치:건물지하 1층(필로티 구조)&지상 1층 외부 공터 이용 3.주차가능대수:50대 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차', '두산오거리에서 수성관광호텔 가는길 갈림길 우회전하여 오리배 선착장 맞은 편.', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1552, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P90', 'WHCROAD', '탁트인 경관과 함께 커피 한잔의 감동을 느끼며 차별화된 디지털 서비스를 경험할 수 있는 국립대구박물관DT점 입니다.', '1.주차가능 2.주차장위치:매장 출입구 오른쪽 DT 진입로 3.주차가능대수:8대(장애인 주차 1대 포함) 4.주차조건:영수증 1만원이상 2시간 무료 5.주차요금 정산방법:정산없이 출차', '국립대구박물관 맞은편, 대구 경북 고등학교 우측에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1443, 'T03@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T36@T40@@P40@P80@P90', 'WHCROAD', '차별화된 프리미엄 커피와 고품격 서비스를 경험할 수 있는 대구그랜드호텔R점 입니다.', '1.주차가능 2.주차장위치:대구그랜드호텔 지상 및 지하주차장 3.주차가능대수:50대이상 4.주차조건:조건부무료( 매장이용시 1시간30분 무료 이후 10분당 1500원) 5.주차정산방법: 파트너에게 문의 후 주차정보 등록 출차시 무인정산', '지하철 2호선 범어역 3번출구에서 도보 3분 (141m)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1456, 'T01@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '스타벅스 대구수성도서관DT점에서 편안하고 안락한 공간의 여유와 편리하고 신속한 디지털 서비스를 경험해 보세요.', '1.주차가능 2.주차장위치-매장 후면 주차장 3.주차가능대수-13대 4.주차조건-매장 이용시 2시간 무료주차', '버스 이용 시 55, 55-1, 555, 518, 651, 708 수성도서관앞 하차
택시 이용 시 동구시장 삼거리에 위치한 하이마트 만촌점 건물 옆
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1703, 'T04@T08@T16@T17@T20@T21@T30@T32@T35@P40', 'WHCROAD', '도심 속 자연과 힐링이 가득한 곳, 커피 한 잔의 여유와 따뜻함이 있는 스타벅스 대구228중앙공원점입니다.', '1. 주차가능 2. 주차장 위치-더락민영주차장(중구 남일동 126-1) 3. 주차가능대수-50대 이상 4. 주차조건-2시간 무료(금액상관없음) 5. 주차요금정산방법-파트너에게 요청', '228 중앙공원 옆 롯데시네마 대구점 건물 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (511, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', NULL, '젊음과 자유, 열정으로 넘치는 로데오거리에서 Artisan 컨셉의 스타벅스를 만나보세요! 동성로로데오점입니다.', '1. 주차불가능', '삼덕소방서에서 동성로중앙점 사이, 구)갤러리존 사거리 코너에 위치
', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (348, 'T04@T05@T08@T16@T17@T20@T30@T36@P90', NULL, '도심속 편안한 휴식처 동성로중앙점에서 커피 한잔 어떠세요?', '1. 주차불가능', '동성로 신발골목 내 올리브영 대구본점 맞은편 (구, 금융결제원 건물 맞은편)', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (520, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '대구의 landmark! 아늑한 분위기인 Heritage 컨셉의 스타벅스 동성로광장점을 만나보세요!', '1. 주차불가능', '1. 반월당역 13번 출구 직진 150미터 중앙파출소 옆 좌측 골목 입구
2. 중앙로역 2번 출구 300미터 중앙파출소 옆 좌측 골목 입구', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (182, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P80@P90', NULL, '바쁜 도심에서 한걸음 쉬어갈 수 있는 반월당 스타벅스! 여러분께 활기찬 하루를 선사합니다.', '1. 주차가능 2. 주차장 위치-입점건물 지상1층, 지하1층 3. 주차가능대수 -50대 이상 4. 주차조건-조건부 무료(영수증 1만원이상 1시간 무료) 5. 주차요금정산방법-출차 시 영수증 제시', '지하철 1,2호선 반월당역 하차 11번 출구 동아백화점쇼핑점 1층 입점 매장', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (623, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '도심 속 전통과 문화가 살아 있는 곳, 대구의 중심지의 대구중앙로점입니다.', '1. 주차불가능', '지하철 중앙로역 1번 출구, 약전골목 입구', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (837, 'T01@T04@T05@T08@T09@T16@T17@T20@@T36@P80', 'WHCROAD', '디지털 감동 서비스의 Drive Thru와 도심속 커피한잔의 여유를 즐길수 있는 여기는 스타벅스 대구공평DT점 입니다', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수 - (장애인 1대 포함) 6대 4. 주차조건-무료', '공평네거리 위치 (SK 에너지 경북광유)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1155, 'T05@T07@T08@T16@T17@T20@T30@T36@P80', NULL, '동성로의 새로운 공간! 쾌적하고 아늑한 커피향 가득한 대구중앙로역점 입니다.', '1. 주차불가능', '지하철 1호선 중앙로역 10번출구 앞,
대구 중앙네거리 영플라자 건너 미도빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1209, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '바쁜 일상 속에 여유로움과 향기가 있는곳 대구계산점 입니다.', '1. 주차불가능', '지하철 1호선 반월당역 18번 출구 도보 약 3분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1344, 'T04@T05@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '도심 속 따뜻한 커피 한 잔의 여유를 즐길 수 있는 대구시티센터점 입니다.', '1. 주차가능 2. 주차장 위치-노보텔 앰버서더 B4F~B7F 주차가능 3. 주차가능대수-50대 이상 4. 주차조건-조건부 무료(영수증 1만원 이상 1시간 무료) 5. 주차요금정산방법-파트너에게 요청', '대현프리몰 지하상가 17번 출구 노보텔 앰버서더 방면 대구시티센터 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (682, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '사계절을 아름다움을 느끼며 한잔의 여유로운 커피를 함께할 수 있는 대전송촌점입니다.', '주차불가', '버스 616,617,311 선비마을 입구 정류장 하차, 선비마을 2, 3단지 사이 국민은행 맞은편.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1054, 'T01@T04@T05@@T07@T08@T09@T16@@T17@@T20@T36@P60@P90', 'WHCROAD', '대전의 금강과 대청호를 만날 수 있는 신탄진의 만남의장소 Dirve Thru의 편안함,커피한잔의 여유를 대전신탄진DT점에서 경험해 보세요.', '1. 주차가능 2. 매장측면 3. 주차가능대수 장애인1대 포함 15대 4. 주차조건-무료', '1.위치:대전 신탄진 석봉네거리 신탄진역 방면

2.버스:급행2번 버스 신탄진시장 정류장 하차(도보7분)
704번 버스 금강엑슬루타워 정류장 하차
701번 버스 석봉네거리 정류장 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1011, 'T01@T04@T07@T08@T09@T16@T17@T20@T30@T32@T36', 'WHCROAD', '대전의 시작과 끝을 장식하는 Dirve Thru 대전IC DT점! 편안한 DT서비스와 커피 한잔의 여유를 즐겨보세요.', '1.주차가능 2.주차장위치-매장건물 뒤편 주차장 3.주차가능대수-20대~50대 4.주차조건-조건부 무료(스타벅스 이용고객 대상 2시간 무료) 5.주차요금정산방법-파트너에게 요청', '1.위치:동부 네거리에서 대전IC 방면으로 400M 

2.버스:616번 버스 한신휴플러스 정류장 하차
201번 버스 비래동 방면 한신휴플러스 정류장 하차
501번 버스 비래동방면 한신휴플러스 정류장 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1290, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '활기찬 젊음이 가득한 대전한남대DT점입니다.', '1.주차가능 2.주차장위치-건물앞 스타벅스 전용 주차장 3.주차가능대수-5대~10대 4.주차조건-스타벅스 이용시 무료', '1.위치: 오정네거리에서 중리네거리 방향 STB상생방송 맞은편

2.버스:102번 버스 한남병원방면 한남대북문 정류장 하차
605번, 611번 버스 한남병원방면 한남대북문 정류장 하차
706번, 802번 버스 한남병원방면 한남대북문 정류장 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (600, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P60@P90', 'WHCROAD', '바쁜 일상속 나를 위한 커피 한잔의 여유를 느낄 수 있는 행복한 공간, 대전터미널점입니다.', '주차불가', '대전복합터미널 사거리 다이소 옆건물 1층, 선샤인 호텔 맞은편', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (502, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '편안하고 아늑한 대전가오점! 한 잔의 커피, 파트너들과의 교감, 오늘 하루 커피 한 잔 어떠세요?', '1.주차가능 2. 건물입점 자하 1층 3.주차가능 대수 10대이상 4.주차조건-무료', '가오동 홈플러스 맞은편에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (463, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P60', 'WHCROAD', '대전복합터미널 2층에 위치한 대전스타일마켓점에서 트렌디한 쇼핑과 달콤한 휴식을 느껴보세요~', '1.주차가능 2.주차장위치-이마트 건물 5층~7층 3.주차가능대수-50대 이상 4.주차조건-스타벅스 1만원 이상 이용시 1시간 무료 5.주차요금정산방법-1만원이상 구매 영수증 지참 후 스타일마켓 데스크에서 주차권으로 교환', '대전복합터미널 2층 에스컬레이터 옆 위치', 'N', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1291, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '카페에서의 편안함과, 빠르고 편리한 Drive Thru 를 동시에 경험 할 수 있는 대전판암DT점 입니다.', '1. 주차가능 2. 매장측면, 후면 3. 주차가능대수 장애인1대 포함 20대이상 4. 주차조건-무료', '대전 1호선 신흥역 1번 출구 도보 5분
신한 미리내 아파트 정문 옆', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1574, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T36@P60@P90', NULL, '설레는 여행 길에 진한 커피향을 더해주는 스타벅스 대전터미널DT점입니다.', '1.주차가능 2.주차장위치-건물뒤편 스타벅스 전용 주차장 3.주차가능대수-5대~10대 4.주차조건-스타벅스 이용시 무료', '1. 대전복합터미널 건너편 대로변 (용전네거리에서 대전IC 방향으로 200M 지점) 


2. 버스: 급행2번 동부네거리방면 복합터미널정류장 하차
102번,105번,106번 동부네거리방면 복합터미널정류장 하차
501번, 601번,802번 동부네거리방면 복합터미널정류장 하차
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (406, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '월평의 쇼핑과 휴식의 제3의 공간, 월평트레이더스점입니다.', '1.주차가능 2.주차장 위치-트레이더스 주차장 이용 3.주차가능대수-100대 이상 4.주차조건-조건부 무료(스타벅스 이용고객 대상 2시간 무료) 5.주차요금정산방법-파트너에게 요청', '월평역 2번출구, 월평네거리 월평트레이더스 1층', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (349, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '아늑한 인테리어와 아름다운 미소로로 반겨주는 파트너가 있는 편안한 공간.', '1.주차가능 2.주차장위치-입점건물지하 3.주차가능대수-100대이상 4.주차조건- 2시간 무료(초과시 30분당1000원) 5.주차요금정산방법-파트너에게 차량번호 등록요청', '정부청사 4번출구에서 450m 직진, 캐피탈 타워 후문 맞은편 토요코인호텔(Toyoko Inn)건물 1층 우측입구입니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (126, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '고객님의 생활 가까이에 있는 대전시청점은 환상적인 음료,거부할수 없는 치명적인 친절함,따뜻한 음료를 약속드립니다. 오늘도 방문해 주셔서 감사합니다.', '1.주차가능 2.주차장위치-입점건물 주차타워(외제차,SUV일부차종불가) 3.주차가능 대수-40대 4.주차조건-2시간 무료(초과시 30분당 2000원) 5.주차요금정산방법- 주차확인증 파트너에게 요청(주차도장,퇴점시간확인)', '둔산동 크로바 사거리 신한은행 왼편. 지하철 시청역 7번 출구에서 목련아파트 방향으로 5분 직진', 'N', '0700-2130', '0700-2130', '0700-2200', '0700-2200', '0700-2200', '0830-2200', '0830-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (34, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '스타벅스 대전 탄방점에선 편안한 분위기와, 친절한 파트너, 맛있고 시원한 음료로신선하고 새로운 추억을 남겨 드리겠습니다.', '1.주차불가능', '지하철 탄방역 4번 출구에서 로데오타운 방면. 로데오타운 맞은 편 버스정류장 부근 건물 1층', 'N', '0800-2130', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (6, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '쇼핑후 편안한 휴식처가 될 수 있는곳, 활기찬 파트너가 일하는 공간 스타벅스 둔산은하수점으로 여러분을 초대합니다.^^', '1.주차불가능', '갤러리아백화점 타임월드점 주차동 옆', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (611, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T35@T36', 'WHCROAD', '문화생활과 더불어 편안함과 쾌적함을 동시에 선사해드리는 대전월평점입니다.', '1. 주차 불가능', '선사유적지 입구에서 백합아파트방향 도보3분거리', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (790, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P80', 'WHCROAD', '바쁜 일상 속 잠시 휴식이 필요한 시간, 따뜻한 분위기와 여유가 있는 대전시청사거리점입니다.', '1.주차가능 2.주차장 위치-입점건물 지상 3.주차가능대수-20대이상 4.주차조건-1일1회 ,2시간 무료 (초과시 1시간당 2000원) 5.주차요금정산방법- 파트너에게 차량번호 등록요청', '대전 1호선 탄방역 2번출구에서 400M 오페라 웨딩홀 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (855, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '넓고 세련된 인테리어와 파트너들의 미소가 가득한 대전만년점 입니다.', '1. 주차가능 2. 주차장 위치-매장전면 3. 주차가능대수 - 약 10대 4. 주차조건-조건부 무료(스타벅스 이용시 무료)', '만년네거리에서 대덕대교 방향으로 270m 직진 후 우회전. 서구보건소에서 도보 1분 거리.', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (806, 'T04@T05@T08@@T16@T17@T20@T21@T30@T36', 'WHCROAD', '대전의 중심 둔산동에 위치한 대전둔산점에서 아늑함과 편안함을 느끼며 향긋한 커피로 하루의 일상을 시작하세요', '1.주차불가능', '갤러리아 타임월드에서 경성큰마을 방향으로 200m 직진', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (832, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '넓고 아늑한 공간 스타벅스 대전목원대점에서, 커피한잔과 함께 하루의 일상을 즐겨보세요.', '1.주차가능 2.주차장위치-건물 지하 주차장 3.주차가능대수-10대~20대 4.주차조건-스타벅스 이용시 무료', '목원대학교 정문에서 370m 동서대로 사거리 부분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (827, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '환영합니다. 여러분의 따뜻한 안식처가 되어드릴 대전대덕로점입니다.', '1.주차불가능', '둔산동 파랑새네거리 전자랜드 골목 초입 부분', 'N', '0630-2130', '0630-2200', '0630-2200', '0630-2130', '0630-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (839, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '특별한 공간 스타벅스 대전관저점에서, 커피한잔의 여유로움을 느껴보세요.', '1.주차가능 2.주차장위치-건물지하 주차장 3.주차가능대수-10대~20대 4.주차조건-무료', '서대전IC 대전역방향 진입, 관저사거리에서 우회전 마치상가 1층에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (944, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T34@T36', 'WHCROAD', '대전의 첫 Drive Thru매장 대전수침교DT점! 멋진 뷰와함께 여유로운 커피한잔을 즐겨보세요.', '1.주차가능 2.주차장위치-매장 측면 3.주차가능대수- 3대 4.주차조건-무료', '지하철 용문역 1번출구로 나와 도보로 450m (5분 거리), 수침교사거리 위치', 'N', '0700-2130', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2130', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1095, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '대전가수원DT점에서 신속하고 친절한 디지털 감동서비스와 커피 한잔의 여유를 느껴보세요.', '1.주차가능 2.주차장위치-건물뒤편 주차장 3.주차가능대수-10대~20대 4.주차조건-스타벅스 이용시 무료', '1. 위치: 가수원 맥도날드 옆 위치, 김봉천 정형외과 옆 위치

2. 버스: 급행1번 가수원네거리방면 가수원육교, 가수원시장 정류장하차
201번, 202번,211번, 216번 가수원네거리방면 가수원육교, 가수원시장 정류장하차
외곽버스 21번, 41번, 42번, 46번 가수원네거리방면 가수원육교, 가수원시장 정류장하차
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1081, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '따뜻하고 편안한 분위기와 파트너들의 활기찬 서비스가 가득한 스타벅스 대전법원점 입니다.', '1.주차불가능', '지하철 1호선 시청역 5번 출구 대전법원 방면 도보 5분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1082, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36', 'WHCROAD', '넓고 쾌적한 공간,바쁜 일상속 따뜻한 커피한잔의 여유를 느낄 수 있는 대전둔산로점 입니다.', '1.주차불가능', '둔산동 파랑새네거리에서 향촌아파트 방면으로 도보 5분', 'N', '0730-2200', '0730-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0830-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1237, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '파트너의 밝은 미소, 따뜻하고 편안한 분위기, 여유로운 커피 한잔을 즐길 수 있는 대전둔산남로점입니다.', '1.주차불가능', '시청역 8번출구, 세이탄방점 방면 도보 5분(우성빌딩1층)', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0830-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1331, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '편안한 분위기에서 커피 한 잔의 여유를 즐길 수 있는 대전복수점입니다.', '1.주차가능 2.주차장위치-건물옆 주차라인 3.주차가능대수-5대 이하 4.주차조건-스타벅스 이용시 무료', '대전과학기술대학교에서 초록마을 5단지 방향으로 도보20분', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1361, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P70@P80@P90', NULL, '공기청정 시스템으로 미세먼지 없는 쾌적한 제3의 공간, 스타벅스 대전탄방역점 입니다.', '1.주차가능 2.주차장 위치-건물내 주차장 3.주차가능대수-92대 4.주차조건-1시간 무료 5.주차요금정산방법-출차 시 영수증제시', '대전 탄방역 5번출구 방면 도보 5분,
미즈여성병원 1층', 'N', '0700-2130', '0700-2130', '0700-2200', '0700-2200', '0700-2200', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1395, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P70@P90', 'WHCROAD', '안녕하세요, 아늑하고 포근한 휴식처가 되어드릴 스타벅스 대전건양대병원점입니다.', '1.주차가능 2.주차장위치-건물지하 주차장 3.주차가능대수-50대 이상 4.주차조건-스타벅스 이용시 차1대당 1시간 무료 5.주차요금정산방법-파트너에게 요청', '건양병원네거리에서 금성골네거리 방면으로 도보 10분, 건양타워 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1388, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '안녕하세요, 바쁜 일상 속 파트너들의 미소로 따뜻한 하루의 시작을 선사해드리는 스타벅스 대전정부청사역점 입니다.', '1.주차가능 2.주차장 위치-입점건물 지하 3.주차가능대수-100대이상 4.주차조건-1시간 무료 (초과시 30분당 1,000원) 5.주차요금정산방법-파트너에게 차량번호 등록요청', '지하철 대전정부청사역 4번 출구, 삼성생명 건물 1층', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1665, 'T04@T08@T09@T16@T20@T30@T32@T34@T35@P40', 'WHCROAD', '쇼핑과 함께 맛있는 음료와 푸드를 즐기며 편안하게 휴식하고 리프레쉬될 수 있는 공간, 스타벅스 대전현대아울렛점 입니다.', '1. 주차가능 / 2. 아울렛 전용 주차장(지하/지상) / 3.주차가능대수 - 100대 이상 / 4. 주차조건 - 무료', '자차 :북대전 IC에서 대덕연구개발 특구 방면 우회전 - 전민동,탑립동 방면 우회전

대중교통 : 버스 705번 대덕밸리용신교 하차.', 'N', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (536, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36', 'WHCROAD', '대전 유성구의 첫번째 스타벅스 매장! 향기로운 커피 한잔과 미소로 반겨주는 대전 테크노밸리점입니다!', '1.주차가능 2. 건물입점 자하 1층 3.주차가능 대수 10대이상 4.주차조건-무료', '테크노밸리 네거리에서 동화중학교 방향으로 도보 2분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (774, 'T04@T05@T08@@T16@T17@T20@T21@T30@T36@P20@P80', 'WHCROAD', '대전 최초의 대학가 매장 충남대정문점이 트렌디한 커피와 활기찬 서비스로 여러분을 기다립니다.', '1. 주차불가능', '충남대 정문에서 유성온천 방면 200M 앞(연래춘 옆)', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (693, 'T03@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '모던한 인테리어와 2층 야외테라스가 있는 대전노은동 핫플레이스 리저브매장 대전노은점입니다.', '1. 주차가능 2. 주차장위치-매장전면 3. 주차가능대수-5대(매우협소) 4. 주차조건-무료', '노은역 4번 출구 도보 3분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (886, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T35@T36@P40', 'WHCROAD', '골프테마파크 ''조이마루'' 1층에 위치한 대전조이마루점에서 맛있는 커피와 친절한 서비스를 만나보세요.', '1. 주차가능 2. 주차장위치-입점건물 지하 주차장 3. 주차가능대수- 30대 이상 4. 주차조건- 조건부 무료(스타벅스 구매시 2시간 무료 주차권 지급)5. 주차요금정산방법-파트너에게 주차권 발급요청', 'ICC 웨딩홀,DCC컨벤션 맞은편 골프존 조이마루 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (887, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '관평동 수변공원 앞 단독 3층 매장 넓고 아늑한 느낌의 고품격 스타벅스 대전관평동점에서 커피 한잔의 여유를 즐기세요!', '1. 주차가능 2. 매장측면 3. 주차가능대수 10대 4. 주차조건-무료', '테크노밸리 네거리에서 전민동, 탑립동 방면, 농협 방면 도보 5분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (981, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '일상의 휴식과 편안함, 파트너들의 따뜻한 미소가 있는 대전전민점 입니다.', '1. 주차 불가능', '전민동 주민센터 맞은편,
버스(121,918번) 이용 시, 전민동 주민센터 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (930, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P60@P80', 'WHCROAD', '비즈니스 중심지 유성. 만남의 장소 대전유성점에서 커피한잔의 여유를 즐겨보세요.', '1. 주차가능 2. 주차장 위치-입점건물 옆 기계식 주차로 주차불가한 차량 종류 있음 3. 주차가능대수-10대이상 4. 주차조건-조건부 무료(스타벅스 구매영수증 제출시 2시간 무료)', '유성온천역 5번출구에서 도보 3분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1009, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '향기로운 커피향기가 가득한 대전지족점 입니다.', '1. 주차 불가능', '대전지족역 1번출구 도보 5분, 반석네거리에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1175, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향긋한 커피와 편안한 분위기의 대전유성구청점입니다. 미소가 아름다운 파트너들이 여러분을 기다립니다.', '1. 주차 불가능', '유성구청 옆, 버스(104,121번)이용시 유성구청 하차', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1240, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '대전장대점에서 신속하고 친절한 서비스와 커피 한 잔의 여유를 느껴보세요.', '1. 주차 불가능', '대전시 유성구 유성대로 781(장대동)
유성농협 중앙지점 맞은편 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1198, 'T01@T04@T07@T08@T09@T16@T17@T20@T22@T36', 'WHCROAD', '대전 유성 도안대로 Drive Thru 매장 대전도안DT점입니다.', '1. 주차가능 2. 주차장 위치-매장 안 주차장 3. 주차가능대수-(장애인 1대 포함) 19대 4. 주차조건-무료', '대전광역시 유성구 도안대로 573
유성온천역 3번 출구에서 직진 300m', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1606, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T34@T36', NULL, '모든 분께 가족이 되어드리는 파트너들의 미소가 가득한 스타벅스 대전반석역점입니다.', '1. 주차 불가능', '지하철 대전반석역 1번 출구, 뉴타운프라자 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (319, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '아늑한 대전세이점에 오시면 편안함과 여유를 즐기실 수 있습니다. 고객님, 최고의 서비스와 완벽한 한잔을 즐기시길 바랍니다.', '1.주차가능 2.백화점내 주차장 3.주차조건-무료', '지하철1호선 서대전네거리역 2번출구 도마동방향으로 도보 5분거리', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2100', '1100-2100', '1100-2000', '1100-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (260, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '대전의 중심, 활력 넘치는 젊음과 문화를 만날 수 있는 대전의 첫번째 매장, 은행동점입니다.', '주차불가능', '지하철 중앙로역 1번 출구에서 대전역 방면 지하보도로 약 100m , 으능정이 거리입구 위치', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (604, 'T04@T05@T08@T09@@@T20@T30@T36@P80', 'WHCROAD', '환한 미소와 열정이 가득한 파트너들이 일상에 지친 고객님들을 오아시스로 안내하겠습니다.', '1.주차가능 2.백화점내 주차장 3.주차조건-무료', '지하철 1호선 서대전 네거리역 2번 출구로 나와 도마동 방향으로 도보 5분 거리 세이백화점 1층', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (747, 'T03@T05@T08@T16@T17@T20@T21@T26@T29@T30@T36@P80', 'WHCROAD', '쇼핑의 중심 은행동에서의 즐거운 쇼핑과 아늑한 대전중앙로R점에서 편안한 휴식과 커피 한 잔의 여유를 즐겨 보세요.', '주차 불가능', '중앙로역 2번 출구로 나와 직진(대흥동 성당 대각선 맞은편)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1028, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '카페에서의 아늑한 분위기와, 빠르고 편리한 Drive Thru 를 경험 할 수 있는 대전유천DT점 입니다.', '1. 주차가능 2. 매장측면 3. 주차가능대수 7대 4. 주차조건-1시간 무료', '유천네거리 국민은행 옆
유천네거리와 서대전 육교 사이
버스정류장 서대전육교, 유천동현대아파트,유천시장 하차
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1135, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@@T30@T36', 'WHCROAD', '밝은 파트너들의 미소와 함께 최상의 서비스를 제공하는 스타벅스 대전태평점입니다.', '1.주차가능 2. 삼부프라자 상가 전용 주차 3.주차가능 대수 20대이상 4.주차조건-무료', '서대전역 603,612 삼부아파트 하차,대전역 603번 삼부아파트 하차', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1186, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P70@P80', 'WHCROAD', '편안한 매장과 Drive Thru ! 두 가지 매력의 대전대사DT점입니다.', '1. 주차가능 2. 매장후면 3. 주차가능대수 장애인1대 포함 11대 4. 주차조건-무료', '지하철 1호선 서대전네거리역 8번출구 직진방향 도보 10분
충남대병원 맞은편
충남대병원 네거리 서대전네거리역 방면 우측에 위치.', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (478, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36', 'WHCROAD', '한 잔, 한 잔의 커피마다 행운을 함께 담아드리는 명지오션시티점입니다.', '1.주차가능 2.주차위치- 매장건물 지하1~2층 3.주차대수- 50대이하 4.주차조건-매장이용별도의 유료주차장 5.주차요금정산방법-출차시 정산', '부산은행 옆 롯데리아 맞은편', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1403, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P90', NULL, '향기로운 한 잔의 커피와 함께하는 도심 속 휴식을 선사합니다.', '1.주차가능 2.주차위치- 매장건물 지하1~2층 3.주차대수- 50대이하 4.주차조건-매장이용시 1시간무료/초과시 30분당 1천원결제 5.주차요금정산방법-1시간 이용에 대해서 파트너에게 요청', '명지국제신도시 부산은행 사거리 부산은행 맞은편 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2200', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1630, 'T01@T04@T08@T09@T16@T17@T20@T30@T31@T32@T34@T35@P90', 'WHCROAD', 'Drive Thru 와 도심 속 여유로운 공간 명지강변DT점 입니다', '1.주차가능 2.주차위치- 매장전면 3.주차대수- 47대 4.주차조건-무료', '르노삼성대로 명지선창회타운 하단방향 200m 오른쪽 매장', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1565, 'T05@T08@T09@T16@T17@T20@T30@T34@T36@P40', NULL, '도심 속의 힐링 공간으로 친구, 가족, 연인과 스타필드명지점에서 행복한 추억을 만드세요.', '1.주차가능 2.주차위치- 매장건물 지상4~5층 3.주차대수- 50대이상 4.주차조건-무료', '스타필드시티명지 1층', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (413, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P40@P80@P90', 'WHCROAD', '쇼핑과 휴식을 한번에 즐길 수 있는 고객과의 친밀한 장소, 금정이마트점입니다.', '1.주차가능 2.이마트 3~4층 3.주차대수-100대이상 4.주차조건 - 구매고객에게 무료2시간 제공 5.주차요금정산방법 - 영수증 꼬리표 바코드출력 , 파트너에게 요청', '구서동 이마트 금정점 1층 E/V 맞은편 입구', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (163, 'T04@T05@T07@T08@T16@T17@T20@T30@T31@T36@P20@P80@P90', 'WHCROAD', '부산대 거리의 중심, 활기찬 젊음의 열기가 느껴지는 부산대점입니다.', '주차불가능', '부산지하철 1호선 " 부산대역" 3번 출구에서 직진방향으로 도보 2분 ( " 부산대앞부산은행" 버스 정류소 앞 건물)', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (709, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P20@P80@P90', 'WHCROAD', '여유와 활기가 공존하는 부산대역점입니다. 유니크한 복층 구조와 아름다운 정원속에서 편안한 휴식을 만끽하세요.', '주차불가능', '부산지하철 1호선 "부산대"역 3번 출구에서 직진방향으로 20M 이동후 사거리에서 우회전', 'N', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (783, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P20@P90', 'WHCROAD', '커피향과 같은 캠퍼스의 낭만을 부산대정문점과 함께 느껴보세요.', '주차불가능', '지하철 : 1호선 부산대역 3번 출구 하차 후 부산대 정문 우측 위치
(도보 9분 소요, 약 590M)
버스 : 부산대 정문 하차
(19, 29, 49, 51, 77, 80, 130, 131, 144, 183심야, 310, 1002심야)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (925, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P20@P90', 'WHCROAD', '활기찬 젊음의 열기와 자연속에서 느낄 수 있는 편안함이 공존하는 부산외대점입니다.', '1.주차가능 2.주차장위치: 건물1층 3.주차가능 대수: 장애인1대 포함)15대 4.주차조건 - 무료', '1.부산버스 29, 80 ,51번 " 남산성당" 하차 후 맞은편 건물 ( 구서동-&gt; 남산동 방향) 
2.부산지하철 남산역 1번출구 ,두실역 7번출구에서 부산외대방면으로 도보 1300m', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1289, 'T01@T04@T05@T08@T16@T17@T20@T31@P80', 'WHCROAD', '금정산의 정기를 느끼며 활기찬 Drive Thru와 아늑한 Cafe가 공존하는 스타벅스 온천장역DT점 입니다.', '1. 주차가능 2. 주차장 위치- 매장옆 주차장 3. 주차가능대수 - 17대(장애인 1대 포함) 4. 주차조건 - 1시간 가능/무료 (주차장 협소로 1대당 1시간 가능) 5. 주차요금정산방법 - 시간대 체크 후 1시간 출차 방송요청', '온천장역 5번출구에서 식물원로 방향 도보 5분. 래미안 장전 아파트 입구 맞은편 위치', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2300', '0700-2300', '0700-2230', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1401, 'T01@T04@T05@T08@T09@T16@T17@T20@T31@T35@T36@P20@P70@P80@P90', 'WHCROAD', '도심속 커피한잔의 여유를 즐길수 있는 금정구청DT점입니다.', '1.주차가능 2.주자장위치 - 매장 1,2층 주차장 3. 주차가능대수 - 22대 (장애인1대 포함) 4.주차조건 - 조건부 무료 (구매고객 1시간)', '- 롯데마트 금정점 산업도로 맞은편 / 윤산터널 접속도로 진입로 측면

-지하철: 1호선 장전역 2,4번출구에서 롯데마트 방향으로 도보 8분거리 / 버스: 금정구청 /롯데마트 하차 (도보2분거리)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1605, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P20@P80', 'WHCROAD', '금정산의 기운이 흐르는 남산동의 새로운 명소에서 커피한잔의 힐링과 디지털 경험을 누리세요', '1.주차가능 2.주차장위치- 매장 전면,측면 3.주차가능대수-(장애인1대포함)28대 4.주차조건 - 1만원이상 구매고객 2시간 무료주차(bill당 1대)5.무료주차시간 초과시 30분당 1,000원 , 추가 10분당 300원 신용카드결제(유료/아아파킹서비스)', '- 부산 지하철 1호선 남산동 지하철역 1번 출구 구서동 방향 도보 2분 거리 
- 버스 148번 ,50번,16번 " 남산프라자"역 하차 후 도보 1분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (658, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P40@P90', 'WHCROAD', '쇼핑과 함께하는 달콤한 감동, 부산P.아울렛점에서 느껴보세요', '1.주차가능 2.주차장위치 -부산P.아울렛 1층 3.주차가능대수-100대이상 4.주차조건 - 무료', '1. 부산/울산 고속도로 장안 IC 진출, 좌천 사거리에서 정관 방향 200M 전방
2. 부산/울산 국도 이용시 14/31번 국도 이용, 좌천 사거리에서 정관 방향 200M 전방', 'N', '1000-2030', '1000-2030', '1000-2030', '1000-2030', '1000-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (671, 'T04@@T08@T09@T16@T17@T20@T21@T30@T31@T36@P70@P90', 'WHCROAD', '스타벅스와 함께 커피 한 잔과 맛있는 푸드 의 여유를 즐겨보세요!', '1.주차가능 2.주차장 위치 - 입점건물 지하 1~3층 3.주차가능대수 -40대이상 4.주차조건 -조건부 무료 ( 5,000원 구매시 1시간 / 이후 추가 10,000원 구매시마다 30분 연장 /최대2시간만 이용가능) 5.주차요금정산방법 - 파트너에게 요청', '부산 시내버스 107,184,73,1008,1010번 " 정관농협기업지점" 역 하자후, 도보 2분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1100, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T31@T36@P50@P90', 'WHCROAD', '동해바다의 해안풍광을 바라보며 디지털 경험을 하세요.', '1.주차가능 2.주차장위치- 매장 전면 3.주차가능대수-(장애인1대포함)13대 4.주차조건 - 조건부 무료 (구매고객 2시간 무료)', '대중교통 185,100,181번 기장 공수마을 공수역 정류장 하차
부산송정해수욕장 하차 후,마을버스 9번으로 환승 후 공수역 정류장 하차', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1549, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T35@P60@P90', 'WHCROAD', '기장군의 새로운 명소에서 커피한잔의 휴식과 디지털 경험을 누리세요', '1.주차가능 2.주차장위치- 매장 전면 3.주차가능대수-(장애인1대포함)16대 4.주차조건 - 조건부 무료 (구매고객 2시간 무료)', '- 39,1003,182,139 버스 이용하여 청강사기리 하차 도보 5분
- 동해남부선 기장역 하차 도보 6분
', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (248, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P20@P80', 'WHCROAD', '새롭게 단장한 젊음의 열기와 싱그러움으로 가득한 경성대에서 즐거운 추억을 만드세요.', '1.주차가능 2.주차장 위치 - 건물 지하 주차장 3.주차가능대수 - 20~50대 4.주차조건 - 조건부 무료( 8천원이상 구매시 30분,1만2천원이상 구매시 1시간 무료/ 최대 1시간무료) 5.주차정산방법 - 파트너에게 요청(영수증제시시 주차권 증정)', '지하철 2호선 경성대역 3번 출구 앞', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (683, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P70@P80', 'WHCROAD', '일상의 피로를 풀어 줄 커피 한잔의 여유, 부산대연역점에서는 최상의 음료와 최고의 서비스로 여러분을 기다립니다.', '1. 주차불가능', '1. 버스 이용시 : 10-1, 22, 24, 27, 40, 41, 42, 51-1, 83, 83-1, 101, 108, 139, 1003(심야)
2. 지하철 이용시 : 2호선 대연역 1번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (881, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T36@P20@P80', 'WHCROAD', '대남교차로에 위치한 ''대연힐스테이트점''에서 파트너들과 함께 기분 좋은 경험을 해보세요.', '1.주차가능 2.주차장 위치 - 대연혁신지구상가 지하주차장 3.주차가능대수 - 50대이상 4.주차조건 - 3시간 무료(상가통합 최대 3시간) 5.주차정산방법 - 파트너에게 요청(포스등록필요)', '지하철 2호선 경성대부경대역 2번출구에서 직진 400M', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (934, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T31@T36@P80', 'WHCROAD', '바쁜 일상 속 향기로운 커피 한잔의 여유가 있는 부산국제금융센터의 랜드마크 BIFC Mall점 입니다.', '주차가능 / BIFC MALL 건물 내 1시간 이용가능(금액상관없음)', '지하철 2호선 국제금융센터·부산은행역 1번, 3번출구 앞 BIFC Mall 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1190, 'T01@T05@T07@T08@T09@T16@T17@T20@@T31@T36@P20', 'WHCROAD', '아늑한 커피하우스와 스타벅스 디지털 경험 및 Drive Thru를 함께 즐기세요', '1.주차가능 2.주차장 위치 - 매장건물내 주차장 3.주차가능대수 - 28대 4.주차조건 - 매장 방문 고객 무료로 이용 가능 5.주차정산방법 - 없음', '버스: 동명대학교정문 하차/ 한신문화타운 하차 동명대학교 방향 도보 5분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1399, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T35@T36@P40@P90', NULL, 'W스퀘어 상가 쇼핑 과 광안대교를 바라보며 편안한 휴식과 커피 한 잔의 여유를 느껴보세요', '1.주차가능 2.주차장 위치 - W스퀘어 상가 지하 주자창 3.주차가능대수 - 50대이상 4.주차조건 - 조건부 무료(구매영수증당 3만원미만 2시간, 3만원이상 3시간, 5만원이상 4시간 5.주차정산방법 - 영수증 제시', '자차이용시: 용호동W 스퀘어 상가 지하주차장 이용 후 C동 6번 게이트 엘리베이터이용 

대중교통 이용시: 버스 20번,22번,39번,남구8번 남부운전면허시험장 하차 후 도보 15분 소요
남구2번 힐탑 탑플레이스 하차 도보 3분 소요', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1715, 'T04@T08@T09@T16@T17@T20@T21@T30@T31@T32@T34@T35@P90', 'WHCROAD', '전통시장과 다양한 공연, 문화가 함께 어우러진 범일동일타워점 입니다.', '1.주차가능 2.주차장위치 - 건물내 지하주차장 3. 주차대수 - 60대이상 3. 주차조건 - 조건부무료(영수증 10,000원이상, 1시간무료) 4. 주차요금정산방법- 파트너에게 주차권 요청 후 출차시 주차권으로 정산', '지하철1호선 범일역 2번 출구/지하철2호선 문현역 1번 출구로 나와서 시민회관 쪽으로 도보로 10분
시민회관 대각선 동일타워건물 1층에 위치 
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (125, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P60@P80', 'WHCROAD', '즐거운 여행길에서 잠시 쉬어가는 편안함을 제공하는 스타벅스 부산역점입니다.', '주차불가능', '부산역 12번 출구 앞 도보 5분 교원빌딩 1층', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (859, 'T03@T05@T07@T08@T16@T17@T20@T21@T30@T31@T36', 'WHCROAD', '부산문화중심지와 관광지를 연결하는 지리적 중심에 위치한 새로운 랜드마크 매장', '1.주차가능 2.주차장위치 - 건물내 지하주차장 3. 주차대수 - 60대이상 3. 주차조건 - 조건부무료(영수증 15,000원이상, 1시간무료) 4. 주차요금정산방법- 파트너에게 주차권 요청 후 출차시 주차권으로 정산', '지하철1호선 범일역 2번 출구/지하철2호선 문현역 1번 출구로 나와서 시민회관 쪽으로 도보로 10분
시민회관 맞은편 상록회관 1층에 위치 

', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1561, 'T04@T05@T08@T16@T17@T20@T30@T34@T36@P40@P60@P80@P90', NULL, '설레는 부산여행과 일상의 안락함이 함께 공존하는 부산역아스티점에서 특별한 경험을 만들어 보세요', '주차불가능', '부산역 10번출구 에서 부산역방면 도보 480m거리 아스티호텔 1층 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1560, 'T04@T05@T08@T16@T17@T20@T30@T34@T36@P40@P60@P80@P90', NULL, '부산의 정취를 한껏 느낄 수 있는 부산역라마다점에서 특별한 경험을 만들어 보세요', '주차불가능', '부산역 8번출구에서 110m 라마다앙코르 호텔 1층', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (571, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T32@P40@P80', 'WHCROAD', '향긋한 꽃내음과 시원한 물줄기의 온천천을 느낄 수 있는 부산온천장역점입니다.', '1. 주차가능 2. 주차장 위치 - 온천장허브스카이 상가주차장 3. 주차가능대수 - 323대 4. 주차조건 - 1만원 이상시 2시간 가능/무료 5. 주차요금정산방법 - 파트너에게 주차권 요청하여 출차시 주차장 정산소에 제시', '지하철 1호선 온천장역 3번, 5번 출구 맞은편 SK허브스카이 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (533, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@', NULL, '부산 동래구의 첫번째 스타벅스 매장! 새로운 랜드마크인 부산사직점입니다.', '1. 주차가능 2. 주차장 위치-매장건물 측면 지하 3.주차가능대수-10대 이상 4. 주차조건-조건부 무료(구매영수증 제시시 30분 무료) 5. 주차요금정산방법 - 출차시 주차장 관리인에게 영수증 제시', '사직사거리 하나은행 건물 1층', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (864, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T31@T32@T34@P60@P80', 'WHCROAD', '도심 속 커피 한잔의 여유를 스타벅스 동래미남DT점과 함께 즐기세요.', '1. 주차가능 2. 주차장 위치- 매장진입후 후면 3. 주차가능대수 - 9대 4. 주차조건 - 1시간 가능/무료 (주차장 협소로 1대당 1시간 가능) 5. 주차요금정산방법 - 시간대 체크 후 1시간 출차 방송요청', '지하철 3호선 미남역 12번출구
동래역방향 도보 5분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (946, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T31@T36', 'WHCROAD', '디지털감동서비스 Drive Thru와 도심 속 여유로운 공간 부산안락DT점입니다.', '1. 주차가능 2. 주차장위치 -매장 후면 3.주차가능대수 - 11대(장애인 1대포함) 4. 주차조건 - 1시간 가능/무료 5. 주차요금정산방법 - 시간대 체크 후 출차요청 방송', '동래 아이스링크에서 해운대 방향 도보 4분 (200m)
-버스 (31, 42, 43, 52, 100, 144, 200, 307, 506, 1002번) 동래한전 하차 후 도보 3분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1133, 'T04@T05@T07@T08@T16@T17@T20@T21@T27@T30@T31@P40', 'WHCROAD', '사직구장의 랜드마크, WALK THRU 매장으로 새로운 스타벅스 문화를 경험하세요.', '1. 주차가능 2. 주차장 위치 - 자이언츠 건물 지하2-3층 3. 주차가능대수 - 50대 이상 4. 주차조건 - 1만원 당 1시간 무료(ex. 2만원 이상 2시간) 상가 내 입점 매장 중복가능하여 모두 포함하여 최대 4시간 무료주차 지원 5. 주차요금정산방법 - 파트너가 직접 등록', '사직역 1번출구에서 사직야구장 방면 600M ,자이언츠파크 빌딩 1층
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1235, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T31@P80', 'WHCROAD', '향기로운 커피 한잔의 여유, 일상 속의 편안한 휴식을 즐길 수 있는 스타벅스 명륜역점 입니다.', '1. 주차가능 2. 주차장 위치 - 이즈 메디컬 센터 주차타워 이용 3.주차가능 대수 - 15대 이상 가능 4. 주차조건 - 조건부 무료 (1만원 이상 구매시 1시간 무료 주차권 제공) / 주차권 중복이용 불가 5. 주차요금 정산방법 - 출차 시 주차권 제시', '지하철 1호선 명륜역 1번,5번 출구 맞은편 이즈메디컬센터 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1400, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T35@P80@P90', 'WHCROAD', '편안하고 기분좋은 경험을 즐길 수 있는 스타벅스 동래역점 입니다.', '1. 주차불가능', '부산지하철 1호선 동래역 2번출구직진 후 첫번째 사거리(100M) 에서 좌측', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2400', '0800-2400', '0900-2300', '0800-2400');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1659, 'T04@T08@T16@T17@T20@T30@T31@T32@T34@T35@P70@P80@P90', NULL, '부산의 중심 서면에서 새로운 스타벅스를 만나보세요. 커피한잔의 여유와 힐링이 되어 드리겠습니다.', '주자불가능', '지하철 서면역 9번출구에서 영광도서 방향 , 영광도서 건물 내 1,2층 위치
버스이용시 부전시장입구 하차 or 롯데백화점(서면역) 하차 후 영광도서 방향으로 도보이동', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2100', '1000-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1699, 'T07@T08@T09@T16@T17@T20@T30@T31@T32@T34@T35@P80@P90', NULL, '번잡한 도심, 직장인들의 바쁜 일상 속에 마음의 쉼터가 되는 서면엠디엠타워점에서 커피 한잔의 여유로움을 느끼세요.', '1.주차가능 2.주차장위치-건물지하주자창 3.주차가능대수-50대이상 4.주차조건-조건부무료(영수증1만원이상 1시간무료) 5.주차요금정산방법-결제후POS에서 차량번호입력하여등록', '지하철 1호선 범내골역 7번출구, 서면방향 도보 5분, 서면엠디엠타워(삼성생명빌딩)1층', 'N', '0730-1930', '0730-1930', '0730-1930', '0730-1930', '0730-1930', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (432, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P40@P90', 'WHCROAD', '부산진구의 중심 부산시민공원의 산책에 커피와 함께 하는 풍요로움을 즐기세요.', '1. 주차가능 2. 주차장위치 - 트레이더스 3~4층 3. 주차대수 - 100대이상 4. 주차조건- 조건부무료(스타벅스 구매고객 금액 상관없이 2시간) 5. 주차요금정산방법- 파트너에게 요청', '부산진구청 맞은편 이마트 트레이더스 서면점 1층
서면역 9번출구 도보 10분 
', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (361, 'T04@T05@T07@T08@T16@T17@T20@@T30@T31@T36@P80', 'WHCROAD', '풍부한 사이렌오더로 직장인들께 딱 맞는 서비스와 바쁜일상속 휴식처가 되어 드리겠습니다.', '주차불가능', '서면 롯데백화점 정문 오른편 농협옆 건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (580, 'T04@T05@T08@T16@T17@T20@T30@T31@T32@T34@T36@P70@P80@P90', 'WHCROAD', '서면메디컬거리에 단 하나뿐인 매장에서 최고의 스타벅스 경험을 선사합니다.', '주차불가능', '지하철 서면역 9번출구 좌측 롯데백화점 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (422, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P40', 'WHCROAD', '서면교보문고 뒷쪽에 위치하여 책과 함께 하는 시간에 풍부한 커피를 즐기세요.', '1.주차가능 2.주차장위치-센트럴스퀘어 상가 지하주자창 3.주차가능대수-100대이상 4.주차조건-조건부무료(영수증1만원이상 1시간무료) 5.주차요금정산방법 - 출차시 영수증제시', '서면 더샵센트럴스타 내 센트럴스퀘어 A동 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (452, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '다양한 품목의 부산전통시장 ,안락함이 있는 쉼터, 부전역점입니다.', '1.주차가능 2.주차장위치 - 입점건물 지하 3.주차가능대수 -30대이상 4.주차조건-조건부무료(영수증당 1시간 무료) 5.주차요금정산방법-출차시 영수증 제시/추가요금은 출차시 현금만 결제가능', '부전지하상가 9번출구 앞 이비스 앰버서더 호텔 1,2층
코레일 부전역 5분 거리', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (290, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '파트너들의 따뜻함이 있는 서면역점입니다.', '1.주차가능 2.주차장 위치 -매장측면 삼성주차장 3.주차가능대수 - 7대이상 4.주차조건-조건부무료(1만원 이상 구매시 1시간 무료/이후 30분에 1,500원/ 월~토요일 9~18시 이용가능/일요일 이용불가) 5.주차요금정산방법-파트너에게 주차권수령후 주차장에 제시', '서면역 8번, 10번 출구 (서면 전자랜드 맞은편)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (653, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T36', 'WHCROAD', '서면 젊음의 거리의 싱그러움과 커피향의 조화가 가장 아름다운 바로 그곳 부산서면점입니다.', '1.주차가능 2.위차장위치-입점건물측면 기계식주차장 3.주차가능대수-10대이상 4.주차조건-조건부무료(영수증당 1시간무료) 5.주차요금정산방법-출차시영수증제시', '서면 젊음의 거리 엔젤호텔 맞은편 건물 1층', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '1000-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (736, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P80', 'WHCROAD', '서면 도심 속 새로운 휴식처 서면서전로점에서 커피와 함께 감동을 느껴보세요.', '1.유료주차가능 2.주차장위치-건물지하주차장 3.주차가능대수-20대 4.주차조건-유료(영수증당 최대2시간 50%할인적용/2시간이후 30분당1500원) 5.주차요금정산방법-파트너에게입차증확인도장요청 후 출차시제시', '서면 NC백화점 건물 앞 사거리에서 대각선 맞은편 
더큐브 오피스텔 1층 상가', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (690, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P80@P90', NULL, '화려한 외관에 버금가는 최상의 커피와 파트너들의 따뜻한 미소로 삶의 행복과 즐거움을 느낄 수 있는 부산서면중앙로점입니다.', '주차불가능', '서면역 1번 출구 나와서 직전, 도보3분 거리, 150M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (844, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P60@P80', 'WHCROAD', '전포카페거리의 새로운 명소 서면 전포역점에서 향기로운 커피와 함께 아늑함을 느껴보세요.', '1.유료주차가능 2.주차장위치-입점건물지하타워주차 3.주차대가능대수-20대이상 4.주차조건-유료(일반30분당1000원/국산경차40분에1000원) 5.주차요금정산방법-출차시 주차관리인에게 결제', '부산 지하철 2호선 전포역 하차 후 7번출구에서 서면방향으로 도보 3분거리', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (871, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P70@P80', 'WHCROAD', '높은 천장과 따스한 햇살이 전면유리창에 비춰 더욱 포근함을 느낄 수 있는 ''부산개금역점''에서 여유로운 커피 한잔을 즐겨보세요.', '1.주차가능 2. 매장건물 뒷편 인사랑 주차타워 이용 3.주차 건물공용사용, 주차대수 50대 4.조건부무료 (영수증 필요,금액상관 무, 1시간무료) 5.단 오후 6시 이전 출차 및 이후 주차 불가능', '부산지하철 2호선 개금역 1번출구에서 직진 100M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1048, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T31@T36@P20@P80', 'WHCROAD', '도심속 커피한잔의 여유와 편안한 휴식을 제공해드립니다. 안녕하세요. 스타벅스 동의대역점입니다!', '주차 불가능', '부산지하철 2호선 동의대역 2번출구에서 도보 5분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (990, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P20@P80', NULL, '대학가의 젊음과 공원의 정취를 함께 느낄 수 있는 양정역점입니다.', '1.주차불가능', '지하철 양정역 2번출구에서 송상현광장 방면으로 도보 5분 이내', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1105, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T31@T36@P40@P80', 'WHCROAD', 'NC백화점의 충분한 쇼핑 후 휴식처가 될 서면NC점으로 오세요.', '1.주차가능 2.주차장위치-서면NC백화점지하주차장 3.주차가능대수-100대이상 4.주차조건-조건부무료(영수증당 1시간 무료/NC백화점 내 타브랜드 주차할인 중복가능) 5.주차요금정산방법-주문시 POS앞 주차등록장비이용한 개별 등록(추가발생비용은 출차시 혹은 NC백화점 내 무인정산기 이용)', '서면역 8번출구 직진방향 NC백화점 1층', 'N', '0930-2130', '0930-2130', '0930-2130', '0930-2130', '0930-2200', '0930-2200', '0930-2200', '0930-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1394, 'T03@T05@T08@T16@T17@T20@T22@T26@T29@T30@T31@T36@T40@T41@@P70@P80@P90', 'WHCROAD', '프리미엄 커피와 함께하는 특별한 경험과 고품격서비스로 행복을 전해드리는 스타벅스 서면로R점입니다.', '주차불가능', '- 서면역 지하철 2호선 7번 출구 이용 도보 8분이내
- 버스 17,23,67,108,167,138번 이용후 "서면시장"역 하차 후 범내골 방향 도보 1분 이내
', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1521, 'T03@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T31@T36@T40@P80@P90', 'WHCROAD', '프리미엄 스타벅스 커피와 싱그러운 티바나 티를 함께 즐길 수 있는 스타벅스 서면중앙대로R점 입니다.', '1.주차가능 2.주차장위치-입점건물지하주차장 3.주가차능대수-100대이상 4.주차조건-조건부무료(1만원이상 1시간 무료/3만원이상 2시간 무료) 5.주차요금정산방법-파트너에게 등록요청/추가요금은 출차시 결제', '부산진구 중앙대로 672 (삼정타워 1층)
서면역 2번출구에서 교보생명건물 방향 500M 거리 위치, 
', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1669, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P70@P90', 'WHCROAD', '낙동강의 아름다운 강변 view와 드라이브 스루의 편리함을 즐길수 있는 스타벅스 화명강변DT 점입니다.', '1. 주차가능 2. 건물전용주차장 3. 총51대 4. 구매고객 1시간무료주차/1만원이상 구매고객 2시간 무료주차(bill당 1대) 5. 무료주차시간 초과시 10분당 300원 신용카드결제 (유료/아이파킹서비스)', '- 대중교통 (BUS) 이용시 구룡사 하차 후 수정삼거리방향으로 도보2분 소요 
- 지하철 2호선 이용시 수정역 하차후 1번출구에서 덕천교차로 방향 도보 10분 소요 (화명일신기독병원 산후조리원 바로옆)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (642, 'T04@T05@T08@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '부산 북구의 첫번째 매장, 향기로운 커피 한잔의 여유가 있는 부산화명역점입니다.', '1,주차가능(유료) 2.주차장위치: 건물지하주차장 3.주차가능대수: 10대 4. 주차조건: 유료 (30분당 1500원) 5. 주차요금정산방법: 사용시간에 따른 유료정산', '지하철 2호선 화명역 1번출구 코오롱 하늘채 방면 도보 3분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (712, 'T03@T05@T07@T08@T16@T17@T20@T30@T31@T32@P20@P80@P90', 'WHCROAD', '부산북구상권의 핫플레이스!! 덕천역점, 스타벅스에서 젊음의 열기와 새로운 추억을 만들어보세요!!', '1.주차가능(유료) 2.건물후면 타워주차장 3. 주차가능대수 50대 4.유료주차 (30분당 1500원/상시 만차) 5. 주차관리원 상주중', '지하철 덕천역 9번 출구에서 만덕 방향 200M 거리', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (412, 'T04@T05@T08@T16@T17@T20@T30@T31@T36@P60@P80@P90', NULL, '쇼핑, 영화와 함께 커피 한잔의 여유를 즐길 수 있는 향기로움이 묻어나는 제 3의 공간', '1.주차불가능', '지하철 사상역 5번 출구', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1277, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T31@T36@P20@P70@P80', 'WHCROAD', 'Drive thru의 고품격 서비스를 누릴수 있는 동서대 DT점입니다.', '1.주차가능 2. 매장후면 전용주차장 3. 총 4대 4. 무료주차가능 ( 주차대수 4대로 상시만차발생/ 대중교통 이용권장)', '부산지하철 2호선 냉정역 5번 출구에서 하차후 ,삼선병원 방향 도보 100M
버스 31,33,62,77,160번 경남정보대 (냉정역) 하차 후, 삼선병원 방향 도보 150M', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1491, 'T01@T04@T07@T08@T09@T16@T17@T20@T31@T35@T36@P90', 'WHCROAD', '향긋한 커피한잔의 여유와 바쁜생활 속, 빠르고 편리한 서비스로 일상의 쉼표가 되어 드릴 사상주례DT점 입니다.', '1.주차가능 2. 매장후면 전용주차장 3. 총 24대 4. 무료주차 2시간이용가능', '대중교통 이용시 주감중학교 하차 후 경동리인아파트 정문 옆 도보 2분 내 위치
', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (500, 'T04@T05@T07@T08@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '제3의 공간에서 즐기는 커피 한잔의 여유, 하단중앙점에서 그 경험을 만끽하세요.', '1.주차불가능', '부산지하철 1호선 하단역 3번출구 앞', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (575, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T32@P80', NULL, '아름답고 럭셔리한 부산괴정점에서 여러분의 품격 높은 스타벅스 경험을 전해드립니다.', '1. 주차가능 2. 주차위치-매장건물 뒷편 기계식주차 3. 주차가능대수-12대 4. 주차조건-조건부무료(영수증 12,000원당 1시간무료) 5.주차요금정산방법-주차증에 1시간무료 스타벅스 확인도장', '괴정역8번 출구 뉴코아 아울렛 옆(다대포방면)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (834, 'T04@T08@T16@T17@T20@T21@T30@T31@P20', NULL, '동아대학교의 입구에 위치한 ''부산동아대점''에서 한잔의 커피와 함께 젊음과 열정을 느껴보세요.', '1.주차불가능', '동아대입구 버스정류장 하차 후 동아대학교 방면 도보 100M
(버스 2, 16, 58, 68, 123, 126, 138, 138-1, 338, 1001)', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1085, 'T01@T04@T07@T08@T09@T16@T17@T20@@T31', 'WHCROAD', '철새들의 쉼터, 을숙도강변DT점에서 향기로운 커피와 함께 아름다운 노을을 즐겨보세요.', '1.주차가능 2.주차위치- 매장전후면 3.주차대수- 26대 4.주차조건-무료', '동아대입구 버스정류장 하차 후 을숙도초등학교 방면 도보 400M(버스 16,68,123,126,138,338,1001)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1377, 'T01@T04@T05@T08@T09@T16@T17@T20@T31@T35@P90', 'WHCROAD', '향기로운 커피와 스타벅스 Drive Thru를 함께 즐기세요', '1.주차가능 2. 주차위치-매장우측주차장 3. 주차가능대수 -8대 4.주차조건-구매고객 2시간무료', '-96번 버스 “다대푸르지오 아파트”정류장 하차
-지하철 1호선 "다대포항역" 하차후 다대초등학교 방향 도보5분
', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2300', '0730-2300', '0730-2200', '0730-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1409, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T35@T36@P90', 'WHCROAD', '바쁜일상속의 스트레스를 커피한잔의 여유로 녹이세요', '1.주차불가능', '부산지하철 1호선 하단역12번 출구 롯데리아방향 도보1분거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1467, 'T04@T05@T08@T16@T17@T20@T30@T31@P90', 'WHCROAD', '바쁜일상속의 스트레스를 녹일수 있는 아늑한 커피', '1. 주차가능 2.주차위치-2층후문 뒷편 3.주차가능대수- 9대 4. 주차조건-조건부무료(주차후3시간경과부터금액부과) 5. 입차시간확인후 과금 정산', '부산 지하철 1호선 다대포해수욕장역 1번 출구, 을숙도 대교방향 도보 5분
2,3,11,96,338번 종점(다대포정류장)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2300', '0730-2300', '0730-2200', '0730-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (590, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T32@P80', 'WHCROAD', '부산 서구의 첫번째 매장, 전면창과 따스한 아침 햇살이 여유로운 부산동대신역점입니다.', '주차불가능', '동대신역 1번출구 구덕운동장 방향 도보 5분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (856, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T31@P20@P80', 'WHCROAD', '근현대사가 고스란히 남아있는 부민사거리점에서 역사와 젊음이 어우러진 특별한 경험을 해보세요.', '주차 불가능', '1호선 ''토성동''역 1번출구에서 동아대부민캠퍼스 방향 도보 5분(200M)거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1582, 'T04@T05@T08@T16@T17@T20@T30@T34@P50@P90', NULL, '소나무가 우거진 부산송도해수욕장점에서 푸른 바다의 정취와 함께 향긋한 커피한잔의 여유를 즐기세요', '1. 주차가능(호텔 숙박객 주차만차시 주차불가)운영시간:월~목,일요일 22시까지/금,토요일 23시까지 2. 주차장위치-호텔건물지하타워주차장 3. 주차조건-조건부무료(영수증 15,000원당 1시간무료) 4. 주차요금정산 -입차시 받은 영수증에 확인도장 , 1시간 초과시 과금', '부산 서구 송도해변로97, 베스트 웨스턴플러스 부산송도 1층', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (107, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P50@P80', 'WHCROAD', '수려한 광안리 바다 경치와 보석처럼 빛나는 광안대교 전경을 한눈에 즐길 수 있는 곳, 스타벅스 남천점입니다.', '1. 주차불가능', '남천 언양불고기거리 맞은 편. 지하철 2호선 금련산역 3번 출구 해변 방향으로 도보 5분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (184, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T36@P50@P80', 'WHCROAD', '세계 제일의 전망을 자랑하는 스타벅스 광안리점에서 일상의 스트레스를 날려버리세요~', '1.주차가능 2.주차장 위치 - 롯데주차장(부산시 수영구 광안해변로235) 3.주차가능대수 - 20~50대 4.주차조건 - 1시간 무료(금액제한없음) 5.주차정산방법 - 파트너에게 요청(주차권 도장)', '지하철 2호선 광안역 3번 출구 또는 5번 출구에서 해변가 방향으로 도보 10분 거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1027, 'T01@T04@@T07@T08@T09@T16@T17@T20@T31@T36', 'WHCROAD', '아늑한 커피하우스와 스타벅스 디지털 경험 및 Drive Thru를 함께 즐기세요.', '1.주차가능 2.주차장위치 - 매장 DT출구라인 옆 3.주차가능대수 - 3대 4.주차조건 - 없음 5.주차정산방법 - 없음', '1.지하철 3호선 망미역 4번 출구 도보로 15분
2.버스 망미우체국 정류장(42번,49번,54번,57번,210번)
', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0730-2300', '0730-2300', '0730-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1097, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T31@P50', 'WHCROAD', '아름다운 광안리 바닷가에서 스타벅스와 함께 소중한 추억을 간직하세요', '1.주차가능 2.광안대우아이빌 건물 지하1층주차장 3.주차가능대수 - 20대 4.주차조건 - 영수증당 1대 1시간 무료(상가내 타매장 중복불가) 5.주차정산방법 - 파트너에게 요청(포스등록필요)', '시내버스-41번 광안리해수욕장하차 광안리 해변가 방향 도보 5분
지하철-광안역5번출구 광안리해변가 방향 도보 10분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1180, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T31@T36@P80', 'WHCROAD', '금련산의 정기가 가득하며 부산서면과 남부를 연결하는 최고 요충지 금련산역점에서 작은 행복을 누리세요.', '1. 주차불가능', '지하철 2호선 금련산역 5번출구에서 150m직진 방향,', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1181, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T31@T36@P70@P80', 'WHCROAD', '부산최대의 교통의 요충지인 수영역점에서 편안한 휴식과 기분좋은 쾌적함을 느껴보세요.', '1. 주차불가능', '지하철 2호선 수영역 10번출구 해인메디컬방향 출구 뒷편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1365, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P50@P90', 'WHCROAD', '아름다운 광안리 바닷가 와 광안대교를 바라보면서 커피 한 잔의 여유와 편안함을 느껴보세요', '1.주차가능 2.주차장 위치 - 바다마루 상가 주차장 3.주차가능대수 - 50대이상 4.주차조건 - 1시간 30분 무료(12,000원이상 결제 영수증 1대당/MSR쿠폰,지류쿠폰등 결제금액0원 제외) 5.주차정산방법 - 파트너에게 요청(포스등록필요)', '지하철 2호선 광안리역 3,5번 출구 광안리해수욕장 방면 도보 10분 이동 후 좌측 민락 수변공원 방향 도보5분
버스 41번 민락동 차고지 하차 83-1,210번 진로비치아파트 하차', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (735, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T36@P20@P80', 'WHCROAD', '부산교대 정문앞 캠퍼스의 낭만과 커피향을 느낄 수 있는 부산교대점입니다.', '1. 주차불가능', '지하철 1호선 교대역 3번 출구에서 약 200M(교대 정문 바로 앞)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (820, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@T31@P80', 'WHCROAD', '번잡한 도심, 직장인들의 바쁜 일상 속에 마음의 쉼터가 되는 연산중앙로점에서 커피 한잔의 여유로움을 느끼세요.', '1.유료주차가능 2.주차장위치-입점건물 지하 기계식주차장 3.주차가능대수 -20대이상 4.주차조건-유료(30분당 1500원) 5.주차요금정산방법-출차시 주차관리인에게 결제', '부산 지하철 1호선 연산역 1번 출구 바로앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (799, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@P60@P80', 'WHCROAD', '편안하고 기분좋은 경험을 즐길수 있는 스타벅스 부산연산역점입니다.', '1.주차가능 2.주차장위치-입점건물후면 기계식주차장 3.주차가능대수-50대이상 4.주차조건-유료(영수증당 최대 2시간 50% 할인적용/2시간 이후 시간당 3천원) 5.주차요금정산방법-파트너에게 입차증확인도장요청 후 출차시 제시', '부산 지하철 1호선 연산역 12번 출구로 나와 안락방향으로 100M 직진', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1036, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P40@P80', 'WHCROAD', '도심속 편안한 쉼터 온천천을 거닐며 커피한잔의 여유를 느낄수 있는 스타벅스 부산교대역점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 후면 쪽으로 들어와 한양프라자 1층 야외 주차장 전체 이용 가능(주말 낮 예식 많을경우 주차 제한 있을 수 있음) 3. 주차 가능 대수 - 평일 105대 (장애인 4대 포함) /주말 예식 많을경우 8-10석 가능 주말 저녁은 평일과 동일 4. 주차조건 - 금액 상관없이 1시간 30분 무료 / 초과시 30분당 1,000원 5. 주차요금정산방법 - 무인계산기에 주차권 투입 (초과금액 현금결제만 가능)', '부산지하철 1호선 교대역점 6번출구로 나오시면 한양프라자 1층에 스타벅스 부산교대역점이 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1234, 'T05@T07@T08@T09@T16@T17@T20@T30@T31@P80', 'WHCROAD', '도심 속 아늑한 커피하우스 연산시티타워점 입니다.', '1.주차가능 2.주차장위치-입점건물 지하주차장 3.주차가능대수-100대이상 4.주차조건-조건부무료 (1만원 이상 2시간 무료) 5.주차요금정산방법-파트너에게 주차권 요청/추가요금은 출차시 결제', '지하철 연산역 7번 출구 부산교대방향 도보 300M 내
버스 정류장 목화예식장 하차 후 부산교대방향 도보 100M 이내', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '1000-2000', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1653, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P20@P80@P90', 'WHCROAD', '도심 속 신속하고 편리한 서비스로 커피 한 잔의 여유를 즐길 수 있는 부산교대역DT점입니다.', '1. 주차가능 2. 주차장 위치 - 매장진입 후 후면 3. 주차가능대수 - 4대 4. 주차조건 - 15,000원이상 구매고객 1시간 무료주차(Bill당 1대) 5. 주차요금정산방법 - 무료주차시간 초과시 10분당 500원 신용카드결제 (유료/아이파킹서비스)', '지하철 : 1호선 교대역 하차 8번 출구에서 도보 8분, 부전교회와 LG베스트샵(부산교대역점) 사이에 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (378, 'T04@T05@T07@T08@T16@T17@T20@T30@T31@P80@P90', 'WHCROAD', '세련된 디자인으로 편안함을 추구하는, 바다향기가 물씬나는 남포동역점입니다.', '주차불가능', '부산시 중구 광복동 지하철 남포동역 5번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (38, 'T04@T05@T07@T08@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '영화도시 부산의 시작점, BIFF광장에서도 스타벅스와 함께 영화같은 이야기를 만들어 보세요.', '주차불가능', '지하철 1호선 자갈치역 7번 출구, 국제시장 방면 150M(도보 3분)', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (823, 'T04@T05@@T08@T16@T17@T20@T21@T30@T31@T36@P60@P80', 'WHCROAD', '도심 속 스트레스를 해소해 줄 부산중앙역점에서 커피 한잔의 여유로움을 즐겨보세요.', '주차불가능', '부산 지하철 1호선 중앙역 13번 출구 앞', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1249, 'T04@T05@T07@T08@T16@T17@T20@T30@T31@T36', NULL, '현대와 전통이 함께하는 국제시장점 입니다.', '주차불가능', '지하철 1호선 자갈치역 7번출구, 보수동 책방골목방향 800m
버스노선 국제시장 하차 후 보수동책방골목 방향 150m', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1185, 'T04@T05@T07@T08@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '바다와 먹거리 정감을 느낄 수 있는 자갈치역점에서 특별한 경험을 만들어 보세요.', '주차 불가능', '지하철 1호선 자갈치역 7번 출구150M (남포지하쇼핑센터 5번 출구 앞)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1522, 'T03@T05@T08@T16@T17@T20@T22@T26@T29@T30@T31@T34@T36@T40@P80@P90', 'WHCROAD', '번화한 도심 속에서 나만의 프리미엄 커피를 즐길 수 있는 스타벅스 부산광복로R 점 입니다', '주차불가능', '대중교통 - 지하철1호선 남포동역, 버스 남포동역(1004,1000,70,5-1,26번 )하차 후 동주여자고등학교 방향 도보 7분 거리 위치', 'N', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1711, 'T04@T08@T16@T17@T20@T30@T32@T34@T35@P40', NULL, '아름다운 해운대 바다와 여유로운 커피를 즐실수 있는 고품격 스타벅스 그랜드조선 부산점입니다.', '1. 주차불가능', '그랜드 조선 부산 4층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1663, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P80', NULL, '해운대 중동의 아늑하고 따뜻한 매장에서 특별한 스타벅스 경험을 드립니다.', '1. 주차불가능', '지하철 : 2호선 중동역 8번출구 앞
버스 : 1001번, 38번 이마트(중동역)하차 후 지하철 계단이용하여 8번출구 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1725, 'T04@T16@T17@T20@T30@T32@T35@P40', 'WHCROAD', '하늘과 바다과 어우어진 가장 높은 스타벅스 해운대엑스더스카이점입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하 3.주차가능대수 - 100대이상 4.주차조건 - 조건부 무료(전망대 입장고객 2시간 무료) 5.주차요금정산방법 - 전망대 입장전 1F 안내데스크에서 확인', '엘시티 랜드마크타워동 부산엑스더스카이 전망대 99F 
* 전망대 입장 고객만 이용가능', 'Y', '1000-2100', '1000-2100', '1000-2100', '1000-2100', '1000-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (436, 'T05@T07@T08@T09@T16@T17@T20@T21@@T30@T31@T36@P80@P90', 'WHCROAD', '럭셔리하고 세련된 인테리어와 편리한 주상복합 단지, 즐거움의 원천인 월드 마크 센텀점에서 최상의 서비스와 커피를 만끽하세요!', '1.주차가능 2.주차장위치-입점건물(지하1층)상가 주차장 3.주차가능대수- 100대 이상(장애인 7대 포함) 4.주차조건-조건부 무료(영수증 7천원이상 1시간무료) 5.주차요금정산방법-파트너에게 요청 주차권 지급(1시간 초과 후 10분당 천원)', '지하철 2호선 센텀시티역 하차, 4번 출구로 나와 도보 50M 직진,
월드 마크 센텀 1층 상가내', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (576, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T36@P80', 'WHCROAD', '센텀시티 오피스 고객들의 안락한 휴식처, 센텀KNN점으로 오세요!', '1.주차가능 2.주차장 위치-입점건물 지하(B2-B5) 3.주차가능대수-100대 이상 4.주차조건-조건부 무료(영수증 7천원 이상 1시간 무료) 5.주차 정산방법-파트너에게 요청(주차권지급, 추가 30분당 천원/카드 결제가능)', '지하철 2호선 센텀시티역 6번 출구 도보 500m, KNN타워 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (495, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P80', 'WHCROAD', '지친 오피스 고객님을 위한 꿈동산, 센텀드림월드로 오세요!', '1.주차가능 2.주차장위치-입점건물 지하(B1~B5) 3.주차가능대수-100대 이상 4.주차조건-조건부 무료(영수증 1만원 이상 30분 무료, 입차시 기본 30분 무료) 5.주차요금정산방법-파트너에게 요청(1시간 초과시 무인기계로 카드결제)', '부산지하철 2호선 센텀시티역, 11번 출구에서 스타벅스 센텀로점 방향으로 도보 2분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (504, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P40@P80', 'WHCROAD', '즐거운 쇼핑과 함께하는 달콤한 여유를 해운대 이마트점에서 느껴보세요!', '1.주차가능 2.주차장 위치 - 이마트 3-6층, 야외주차장 3.주차가능대수 - 50대이상 4.주차조건 - 2시간 무료(스타벅스 영수증 제시시 1시간 추가) 5.주차요금정산방법 - 출차 시 영수증 제시', '지하철 2호선 중동역 7번출구, 해운대 이마트 1층', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (769, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P50', 'WHCROAD', '부산 팔경의 다채로운 절경과 스타벅스 프리미엄 리저브 커피를 느껴보세요.', '1.주차가능 2.주차장 위치 - 매장 옆 도로로 올라가서 오른쪽 효은요양병원 옆 스카이주차장 3.주차가능대수 - 20대이상 4.주차조건 - 조건부 무료(금액제한 없고 영수증당 1시간30분 무료) 5.주차요금정산방법 - 파트너에게 요청(주차영수증에 도장)', '해운대 달맞이길 해월정 정자 맞은편', 'N', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2100', '0900-2100', '0900-2000', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (309, 'T04@T05@T08@T09@T16@T17@T30@T31@T36@P40@P80', 'WHCROAD', '쇼핑의 즐거움과 갤러리의 만남. 오아시스 같은 센텀갤러리점으로 오세요.', '1.주차가능 2.주차장위치-백화점 지하 3.주차가능대수-100대 이상 4.주차조건-조건부 무료(영수증1만원이상 1시간, 3만원이상 2시간, 5만원이상 3시간 가능)백화점내 사용금액영수증 5.주차요금정산방법-출차시 영수증 제시', '신세계 센텀시티 6층, 지하철 2호선 센텀시티역 하차

', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (530, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P40@P80', 'WHCROAD', '해운대 마린시티의 스타! 신세계마린시티 스타벅스에서 낭만과 여유를 느껴보세요!', '1.주차가능 2.주차장 위치 - 입점건물(Gate 1)지하 2-6층 3.주차가능대수 - 50대이상 4.주차조건 - 무료', '지하철 2호선 동백역 3번 출구에서 도보로 약 10분거리, 해운대 아이파크 C1상가동 1층에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (496, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P40@P80', 'WHCROAD', '마린시티내 고급 주거 공간의 중심, 품격 있는 당신만의 여유를 즐길수 있는', '1.주차가능 2.주차장 위치 - 입점건물 지하 2-5층 3.주차가능대수 - 50대이상 4. 주차조건 - 조건부 무료(금액제한 없고 영수증당 2시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '부산지하철2호선 동백역 1번 출구 하차 후 홈플러스 방향으로 도보10분 후 제니스스퀘어 상가 1F
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (537, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T32@T36@P80', 'WHCROAD', '센텀시티의 중심, 만남의 교차로! 낭만과 커피를 센텀시티역점에서 나누세요!', '1.주차가능 2.주차장위치-입점건물 지하 상가주차장 3.주차가능대수-100대 이상 4.주차조건- 조건부 무료(구매 영수증 확인, 1시간무료) 5. 주차요금정산방법-파트너에게 요청(주차권 지급, 1시간 초과시 30분당 1,000원-무인기계 정산으로 카드로만 결제가능)', '지하철2호선 센텀시티역 4번출구 오른편 트럼프월드 내 상가1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (44, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T35@T36@P80@P90', 'WHCROAD', '해운대의 편안한 안식처. 따뜻한 바리스타의 미소와 풍요로운 커피 한잔의 시간을 블루스퀘어점에서 즐기세요.', '1.주차가능 2.주차장 위치 - 입점건물 지하 기계식 타워주차장 3.주차가능대수 - 50대이상 4. 주차조건 - 조건부 무료(금액제한 없고 영수증당 2시간 무료) 5.주차요금정산방법 - 파트너에게 요청(주차권에 도장)', '지하철 2호선 장산역 4번 출구에서 직진방향 도보 3분 블루스퀘어 1층 , 좌동재래시장 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (104, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T31@T36@P50@P90', 'WHCROAD', '해운대 바다의 아름다움을 한 눈에 담으며, 커피 한잔의 여유를 즐길 수 있는 휴식처, 팔래드시즈점입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하 1-4층 3.주차가능대수 - 50대이상 4. 주차조건 - 조건부 무료(금액제한 없고 영수증당 2시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '해운대 파라다이스 호텔 맞은 편 팔레드시즈 콘도 1층(바닷가방향)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (14, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P80', 'WHCROAD', '편안하고 아늑한 공간에서의 여유를 즐길 수 있는 스타벅스 베네시티점 입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하 2층 3.주차가능대수 - 50대이상 4.주차조건 - 조건부 무료(금액제한 없고 영수증당 2시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '지하철 2호선 동백역 1번출구 도보 3분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (140, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P40@P80', 'WHCROAD', '향기로운 스타벅스 커피와 함께 벡스코의 전시회 및 공연을 즐기세요.', '1.주차가능 2.주차장 위치-벡스코 내(지상,지하) 3.주차가능대수-100대 이상 4.주차조건-유료 5.주차요금정산방법-15분이내 출차시 무료(10분당 300원 카드결제 가능)', '지하철 2호선 센텀시티역 1번 출구 하차 벡스코 방향 100M. 시내버스, 센텀시티(벡스코) 정류장 하차', 'N', '0900-1700', '0900-1700', '0900-1700', '0800-1800', '0800-1800', '0800-1800', '0800-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (162, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P50@P80', 'WHCROAD', '3면이 유리로 되어 있어 아름다운 해운대 바다를 보며 커피 한잔의 여유를 즐길 수 있는 이국적인 공간, 하버타운점입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하2-4층 3.주차가능대수 - 50대이상 4.주차조건 - 조건부 무료(스타벅스이용고객 1시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '해운대역 5번출구에서 해변가로 걸어오시면 해운대관광안내소 맞은 편 2층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (239, 'T04@T05@T08@T09@T16@T17@T20@T30@T31@T36@P80', 'WHCROAD', '커피 한잔에 정성과 열정을 담고, 미소로 장식하여 전해 드리겠습니다.해운대 신시가지의 랜드마크, 장산역점 입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하 1-6층 3.주차가능대수 - 50대이상 4.주차조건 - 조건부 무료(금액제한 없고 영수증당 1시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '지하철 2호선 장산역 9번 출구 웅신씨네아트 건물 1층', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (648, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P50', 'WHCROAD', '자연의 아름다움을 그대로 간직한 오션뷰와 함께 커피를 즐길수 있는 스타벅스 부산송정비치점입니다.', '1.주차가능 2.주차장 위치 - 매장 후면 3.주차가능대수 - 11대 4.주차조건 - 조건부 무료(금액제한 없고 영수증당 1시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '송정 해수욕장 입구 해변 교차로에 해변가방향 도보 5분 
대중교통 181번,100번,185번 송정해수욕장 입구에 하차 후 해변교차로에서 해변가 방향 도보 10분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (754, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T31@T36', 'WHCROAD', '밝은 햇살처럼 환한 미소로 편안함과 행복을 드리는 센텀그린타워점입니다. 가족 같은 편안함과 여유를 즐겨 보세요.', '1.주차가능 2.주차장 위치-입점건물 지하(B1~B4) 3.주차가능대수-100대 이상 4.주차조건-유료(입차 시 자동 30분 무료 적용) 5.주차요금정산방법-번호 자동인식 무인기계 카드결제(30분 1,000원, 최초 30분 이후 3분당 100원씩 추가 요금)', '지하철 2호선 센텀시티역 4번 출구에서 도보 772M (약 13분) 센텀그린타워 1층 내 위치
SK텔레콤 하차 후 재송동 방향 도보 5분 내 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (817, 'T01@T04@T05@T08@T09@T16@T17@T20@T22@T30@T31@T32@T34@T36@P80', 'WHCROAD', '부산의 명소 해운대의 첫 Drive Thru 매장에서 향기로운 커피 한잔의 여유를 즐기세요 .', '1.주차가능 2.주차장 위치 - 매장 전면, 측면 3.주차가능대수 - 10대이상 4.주차조건 - 무료', '1.지하철 2호선 이용 : 중동역 하차 7번출구 로데오 아울렛 방향으로 7분 도보
2. 버스이용 : 미포문텐로드역 하차 맥도날드 맞은편 위치 39번, 100번, 139번, 141번, 200번, 1003번', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2400', '0700-2400', '0700-2300', '0700-2400');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (807, 'T04@T05@T08@T09@T16@T17@T30@T31@P40@P80', 'WHCROAD', '신세계 백화점 B1의 프리미엄 공간에 위치한 라운드 매장에서 쇼핑의 여유로움을 느껴보세요.', '1.주차가능 2.주차장위치-백화점 지하 3.주차가능대수-100대 이상 4.주차조건-조건부 무료(영수증1만원이상 1시간, 3만원이상 2시간, 5만원이상 3시간 가능)백화점내 사용금액영수증 5.주차요금정산방법-출차시 영수증 제시', '지하철 2호선 센텀시티역 하차, 신세계 센텀시티 지하 1층', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (966, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T31@T36@P70', 'WHCROAD', '센텀의 중심지. 스타벅스 센텀로점에서 스타벅스만의 특별한 경험을 전해드립니다.', '1.주차가능 2.주차장위치-입점건물 타워주차 3.주차가능대수-50대 이상(토요일 17시30분까지 운영, 일요일 운영X, 공휴일 14시까지 운영) 4.주차조건-조건부 무료(구매 영수증 확인, 1시간 무료) 5.주차요금정산방법-파트너에게 요청(주차도장, 30분 초과시 천원 카드결제)', '지하철 2호선 센텀시티역 하차 후 11번출구에서 직진 70m', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1053, 'T04@T05@T07@T08@T09@T20@T30@T31@T36@P40', 'WHCROAD', '키자니아 내 보호자전용공간으로, 스타벅스에서 휴식을 보내세요(키자니아 입장객만 이용가능)', '1.주차가능 2.주차장위치-백화점 지하 3.주차가능대수-100대 이상 4.주차조건-조건부 무료(영수증1만원이상 1시간, 3만원이상 2시간, 5만원이상 3시간 가능)백화점내 사용금액영수증 5.주차요금정산방법-출차시 영수증 제시', '지하철2호선 센텀시티역 하차. 신세계센텀몰 4층 키자니아 내 부모전용라운지
* 키자니아 입장 고객만 이용하실 수 있습니다.', 'N', '1000-1700', '1000-1700', '1000-1700', '1000-1700', '1000-1700', '1000-1900', '1000-1900', '1000-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1056, 'T04@T05@T07@T08@T16@T17@T20@T22@T27@T30@T31@T36@P50@P80', 'WHCROAD', '해운대 바닷가의 새로운 명소 walk thru점에서 새로운 스타벅스 문화를 경험하세요', '1.주차 불가능', '해운대 지하철역 3번,5번 출구에서 해운대해수욕장 방향 직진하여 도보 5분거리 엘리시아 빌딩 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1098, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T31@T36', 'WHCROAD', '아늑한 커피하우스와 스타벅스 디지털 경험 및 Drive Thru를 함께 즐기세요', '1.주차가능 2.주차장 위치-매장 후면 3.주차가능대수-(장애인1대 포함)13대 4.주차조건 - 1시간 무료', '1.버스 : 1002,115,5-1,115-1 유창맨션 정류장 하차, 해운대경찰서 방향 200M
155,100-1,31 센텀동부센트레빌 정류장 하차, 센텀시티 방향 200M', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1275, 'T04@T05@T08@T16@T17@T20@T30@T31@T36@P50@P80', 'WHCROAD', '안녕하세요. 해운대 바다를 보기 전, 맛있는 커피 한잔 어떠신가요? 감성있는 스타벅스 해운대역점 입니다.', '1.주차 불가능', '지하철 2호선 해운대역 3번 출구 10M앞 라마다 앙코르 해운대 호텔 1층
버스이용: 해운대도시철도 정류장 하차 후 3분 도보(39번,100번,141번,200번)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2300', '0700-2300', '0700-2200', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1347, 'T04@T05@T08@T16@T17@T20@T21@T30@T31@T35', 'WHCROAD', '맛있는 커피와 여유로움 그리고 편안함이 공존하는 공간 센텀파크점입니다.', '1.주차가능 2.주차장 위치-입점건물 상가 주차장(1F) 3.주차가능대수-100대 이상 4.주차조건-2시간 무료(입차시 방문증 작성) 5.주차요금정산방법-없음(2시간 이내 출차, 시간초과시 스티커 부착)', '경전철 (센텀역) 하차후 도보로 약 4분거리, 더샵센텀파크 
버스 115,181,307,1002번 센텀파크 하차후 도보1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1309, 'T01@T04@T05@T08@T09@T16@T17@T20@@T31@T36', 'WHCROAD', 'Drive Thru 와 도심 속 여유로운 공간 수영강변DT점 입니다.', '1.주차가능 2.주차장 위치-매장 측면,지하 3.주차가능대수-(장애인1대 포함)23대 4.주차조건-무료', '수영강변대로 반여농수산물 시장 방향 센텀 대림아파트 200M 앞 오른쪽 매장', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1398, 'T03@T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T31@T36@T40@P50@P90', 'WHCROAD', '고품격 스타벅스 리저브 커피, 싱그러운 티바나 티를 함께 즐기실 수 있는 스타벅스 더해운대R점입니다.', '1.주차가능 2.주차장 위치 - 입점건물 지하1층 및 기계식 타워주차장 3.주차가능대수 - 40대이상 4.주차조건 - 조건부 무료(금액제한 없고 영수증당 1시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '지하철 2호선 동백역 1번출구, 동백섬 방향 도보 7분거리 위치
버스 139,307,1003번 이용 후 "동백섬입구" 하차', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1658, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P90', NULL, 'Drive Thru 매장의 특별한 서비스를 경험할수 있는 울산신정DT 입니다.', '1. 주차가능 2. 주차장위치: 매장전면 3. 주차가능대수: 6대 4. 주차조건: 매장이용 시 무료 5. 주차요금정산방법: 정산없이 출차', '신정고등학교 앞 하차 도보 200m, 학성고등학교 맞은 편 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (435, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '여성적인 세련미와 아늑하고 품격있는 인테리어, 편안한 휴식처가 될수있는 울산삼산대로점을 방문해 주세요~!', '1.주차불가', '삼산사거리의 현대백화점에서 공업탑 방향 맞은편, 
강남피부과건물 1층 상가내', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (757, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P60@P70', 'WHCROAD', '젊음과 활력의 매장 울산신복점입니다.', '1. 주차불가', '신복 로타리에서 울산대 후문 방면 50m 탄산수대로사우나 1층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (739, 'T04@T05@T08@T16@T17@T20@T21@T30', 'WHCROAD', '울산 패션문화의 중심 울산디자인거리점입니다.', '1. 주차불가', '울산 삼산동 업스퀘어 맞은편', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (850, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20', NULL, '젊음과 열정의 울산대점, 여유롭고 편안한 공간에서 향기로운 커피의 향을 느껴보세요.', '1. 주차불가', '울산대 정문 건너편 안쪽골목(바보사거리)에서 오른쪽으로 100m', 'N', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (895, 'T04@T05@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '아늑하고 품격있는 인테리어, 편안함과 은은한 커피향을 느낄수 있는 울산삼산로점 입니다.', '1. 주차가능 2. 주차장위치-매장 노면 주차, 매장옆 주차타워 3. 주차가능대수-매장 노면 6대, 주차타워 36대 4.주차조건- 조건부 무료(금액무관, 주차증에 매장도장 받을시 1시간 무료) 5.주차정산방법-파트너에게 요청', '롯데호텔 옆 대로변 
울산롯데시네마 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1006, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@P70', 'WHCROAD', '울산의 중심 삼산동에서 특별한 리저브 커피 경험을 해보세요.', '1. 주차가능 2. 주차장위치-건물지하 주차타워(SUV,외제차,에쿠스 주차 불가) 3. 주차가능대수-90대 4.주차조건- 조건부 무료(영수증 1만원이상 1시간 무료/초과시 10분 당 500원) 5.주차정산방법-파트너에게 요청', '삼산동 현대백화점에서 터미널사거리 방면으로 도보 2분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1042, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '울산센트럴자이 상가 1층 좌측코너로 오세요', '1.주차가능 2.주차장위치: 건물지하주차장 3. 주차가능대수:약 30대 이상(건물전체사용으로 주차혼잡) 4.주차조건:10,000원 이상 구매고객 1시간 주차 이용가능 5.주차요금정산방법: 파트너에게 차량번호 전달 및 등록 후 출차 가능, 초과금액은 무인카드결제진행', '뉴코아아울렛 울산점에서 현대백화점 방향으로 100M 내 위치.
목화예식장 건너편 센트럴 자이 1층 상가동 위치', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (999, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '햇살아래에 시원한 그늘 같은 친구가 되어드리겠습니다. 스타벅스 울산옥동점에서 만나요.', '1.주차가능 2.주차장위치: 건물지하주차장 3.주차가능대수: 32대(suv 16대/승용16대) 4.주차조건: 건물 주차권 제시시 1시간 무료이용 가능 5. 주차요금정산방법:파트너에게 주차권 도장 받으면 1시간 무료 적용, 현금결제(카드결제 불가능), 1시간 초과 시 30분당 1000원 요금발생', '울산법원앞 하차 후 10m 이내', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1021, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '디지털감동서비스 Drive Thru와 도심 속 여유로운 공간 울산중리사거리DT입니다.', '1. 주차가능 2. 주차장위치-매장후면 3. 주차가능대수-(장애인1대포함)16대 4.주차조건- 2시간 무료', '중리사거리에서 현대백화점 방향', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1022, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T22@T36', 'WHCROAD', NULL, '1. 주차가능 2. 주차장위치: 매장전면 3. 주차가능대수: 4대 4. 주차조건: 매장이용 시 무료 5. 주차요금정산방법: 정산없이 출차', '울산 KBS/문화예술회관 건너편으로 오세요.
삼산지구대 바로 옆 건물 입니다', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1128, 'T01@T05@T07@T08@T09@T16@T17@T20@T36@P70@P90', 'WHCROAD', 'Drive Thru 매장의 특별한 서비스를 경험할수 있는 시청사거리DT', '1.주차가능 2.주차장위치:매장측면 3.주차가능대수:5대 4.주차조건:매장이용 시 무료 5.주차요금정산방법:정산없이 출차', '1. 달동사거리에서 울산시청방향으로 300m 교보생명 옆

2. 버스이용시 205,216 ,좌석 1127 외다수 이용.달동사거리정류장하차 도보3분거리
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1417, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '여천천 앞 힐링 핫 스팟! 울산도산사거리dt점입니다.', '1.주차가능 2.주차장위치:건물지하주차장 3.주차가능대수: 25대 4.주차조건:매장 내 구매고객 2시간, 1만원 이상 3시간 무료주차가능 5.주차요금정산방법:파트너에게 차량번호 전달 및 등록 후 출차 가능, 초과금액은 무인카드결제진행', '도산사거리에서 야음동 방향.
롯데인벤스 맞은편
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1483, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', NULL, '계절의 아름다움을 느낄 수 있는 울산대공원점 입니다.', '1.주차가능 2.주차장위치:매장전면 3.주차가능대수: 2대 4.주차조건:매장이용 시 무료 5.주차요금정산방법: 정산없이 출차', '울산대공원 정문 로터리 좌측 방향 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1554, 'T04@T05@T08@T09@T16@T17@T20@T30@T34@T36', NULL, '밝고 쾌적한 통유리구조가 돋보이는 울산번영로점 입니다.', '1.주차가능 2.주차장위치: 건물지하주차장 3. 주차가능대수:약 30대 이상(건물전체사용으로 주차혼잡) 4.주차조건: 매장 내 구매 고객 대상 2시간 무료 주차 5.주차요금정산방법: 파트너에게 차량번호 전달 및 등록 후 출차 가능, 초과금액은 무인카드결제진행', '번영사거리 내 삼성생명 건물 1층 매장 내', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (416, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', NULL, '도시적이고 세련된 인테리어와 시원한 바다를 함께 즐길 수 있는 울산테라스파크점입니다.', '1.주차가능 2. 상가 내 주차장 이용 3. 주차가능 대수- 약 50여대 4. 주차조건-조건부무료(영수증 1만원 이상 1시간 무료/MSR충전 및 쿠폰 사용시 무료 주차 불가) 5. 주차요금정산방법-파트너에게 요청', '일산 해수욕장 사거리에서 현대백화점 방향으로 100m, 홈플러스 맞은편', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (83, 'T04@T05@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '편안하고 아늑한 공간, 쇼핑의 즐거움, 조용한 호수공원이 위치한 현대동구점은 고객님께 은은한 커피향을 선사합니다.', '1.주차가능 2.백화점 주차장 이용 3.주차 약 100대 이상 가능 4.주차조건-조건부무료(백화점 방문 도장 1시간, 영수증 10,000원 이상 1시간, 20,000원 이상 2시간) 5. 주차요금정산방법- 출차 시 영수증 제시', '동구 현대백화점 주차장입구 or 현대중공업 정문 맞은 편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (740, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '여유로운 일상에 기분좋은 커피한잔을 드리는 울산화봉점입니다.', '주차불가능', '화봉시장/화봉사거리에서 무룡산 방면 좌측', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1152, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P50', 'WHCROAD', '울산정자비치DT점에서 아름다운 바다를 보며 커피 한 잔의 여유를 즐기세요', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-16대(장애인1대포함) 4.주차조건-무료 5.매장 건너편 강동정자해변공영주차장 무료주차가능', '남목삼거리정류장에서 411번 환승 후 산하동 하차

강동정자해변 공영주차장 맞은편 위치
', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2300', '0900-2300', '0900-2200', '0900-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1136, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '쇼핑과 함께 향긋한 커피를 즐길 수 있는 울산진장점입니다.', '1. 주차가능 2. 주차장위치-신선도원몰 주차장 3. 주차가능대수- 100대 이상 4.주차조건- 무료', '효문사거리 지나 삼성디지털프라자 맞은 편 위치
대중교통(버스)104, 114, 123, 107, 132 이용 메가마트(신선도원몰) 하차', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1302, 'T01@T05@T08@T09@T16@T17@T20@T35@T36@P70', 'WHCROAD', '울산 북구의 핫플레이스, 울산북구청DT점 입니다.', '1.주차가능 2.주차장위치-매장전면/ 매장후면 3.주차가능대수-전면6대/후면28대 4.주차조건-매장 후면 주차장이용시 구매시 2시간무료', '자차이용 : 산업로를 따라 효문고가교 진입, 북부순환도로를 따라 ''경주,울산공항''방면으로 이동
대중교통 : 태화강역 기준 시내버스 453, 482, 712, 701, 472 탑승 후 ''북구청남문 정류장'' 하차, 횡단보도 맞은편 이동
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1633, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P90', 'WHCROAD', '경주 방향 7번국도에 위치한 편리한 Drive Thru 매장 울산호계DT점 입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-32대(장애인2대포함) 4.주차조건-무료', '자차이용: 경주 방향 산업로 1464번지 7번 국도 우측 방향 SK LPG충전소 옆
버스이용: 442번,5005번 버스 탑승시 농소2동 주민센터 하차 후 도보 462M
482번,112번 버스 탑승시 천곡사거리 하차 후 도보 380M
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (967, 'T03@T05@T07@T08@T09@T16@T17@T20@T30@T36@P50', 'WHCROAD', '동북아시아에서 해가 가장 먼저 뜨는 곳! 스타벅스 울산간절곶점에서 고품격 리저브 커피를 즐겨보세요.', '1.주차가능 2.주차장위치:매장전면 3.주차가능대수:12대 4.주차조건:매장이용 시 무료 5.주차요금정산방법: 정산없이 출차', '간절곶 버스 정류장에서 간절곶 등대 방면 350m (도보 5분)', 'N', '1000-2100', '1000-2100', '1000-2100', '1000-2100', '1000-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1722, 'T08@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '우리나라 제2호 국가정원, 태화강국가정원의 경관과 함께 편안한 휴식을 만끽하세요.', NULL, '만남의광장에서 다운동(전원교) 방면 200미터', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (601, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '도심속의 숲, 태화강을 느낄 수 있는 울산태화점에서 향기로운 커피를 느껴보세요.', '1. 주차불가', '태화강대공원 태화동 입구 맞은편', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (115, 'T04@T05@T07@T08@T16@T17@T20@T30@T36', NULL, '열정과 젊은 감성으로 충만한, 울산성남동점입니다.', '1.주차불가능', '울산 메가박스 성남점 맞은 편', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1132, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '지하철컨셉의 독특한 인테리어를 자랑하는 울산성남삼거리점 입니다', '1. 주차가능 2. 주차장위치-입점 건물 지상, 지하 주차장 3. 주차가능대수-50대 이상 4.주차조건- 조건부 무료(영수증 1만원이상 1시간 무료/ MSR충전 및 쿠폰 사용시 무료 주차 불가) 5.주차정산방법-파트너에게 요청', '성남동 강변주차장 맞은편 롯데시네마 건물 2층
대중교통(버스) 103, 107, 114, 123, 235, 407, 411, 507, 713, 714, 715, 802, 817 이용 성남동 하차', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1273, 'T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '아름다운 야경과 멋스러운 인테리어를 자랑하는 스타벅스 울산성안점 입니다.', '1. 주차가능 2. 주차장위치-건물 1층 주차장 3. 주차가능대수-7대 4.주차조건- 무료', '버스 이용 시 108번, 827번 탑승 성안파출소 하차하여 도보 10분 
자차 이용 시 북부순환도로를 따라 3km이동, 성안 12길을 따라 40m 이동', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1364, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '번영로의 중심, 울산MBC DT점에서 기분 좋은 활력을 느껴 보세요.', '1. 주차가능 2. 주차장위치-매장후면 3.주차가능대수-16대 4.주차조건- 2시간 무료', '울산MBC 버스 정류장 하차 (236, 266, 702번 버스 또는 10번 마을버스 이용)
홈플러스 울산점에서 복산성당 방면으로 도보 10분 거리에 있습니다.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1590, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P60', 'WHCROAD', '커피 한잔의 휴식과 차별화된 Drive Thru를 경험할 수 있는 인천강화DT점입니다.', '1. 주차가능 2. 주차장위치- 매장측면(DT주문 전 우측) 3. 주차가능대수- 20대이상 4. 주차조건-조건부무료(스타벅스영수증당 1시간무료) 5. 주차요금정산방법- 파트너에게요청', '강화풍물시장 건너편에 위치했습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1678, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', 'WHCROAD', '도심 속 커피 한 잔의 여유를 즐길 수 있는 문화생활의 중심 인천계산역DT점입니다.', '1. 주차가능 2. 주차장 위치- 매장 앞 전용 주차장 이용(만차 시 매장 뒤쪽 공영주차장 유료 이용) 3. 주차가능대수-7대(스타벅스 주차장) 4. 주차조건-스타벅스 이용 시 최대 2시간 이용 가능. 5. 주차요금 정산방법 -정산 필요 없음', '계산역 6번 출구 약 100m 앞 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (613, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', NULL, '인천 작전의 랜드마크 활기찬 인천작전점으로 오세요.', '1. 주차가능 2. 주차장 위치-스타벅스 입점건물 뒤 전용 주차장 3. 주차가능대수-50대 이상 4. 주차조건-스타벅스 이용(결제) 시 1시간 무료 주차. 이후 30분당 1천원 부과. 5. 주차요금 정산방법-영수증 지참 후 파트너에게 무료 1시간 등록 요청.', '인천 지하철 1호선 작전역 5번 출구에서 도보 3분', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2200', '0900-2200', '0900-2130', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (889, 'T04@T05@T08@T16@T17@T20@T30@T36@P90', 'WHCROAD', '생활 속의 작은 여유를 즐기실 수 있는 인천계양점이 여러분을 기다립니다!!', '1. 주차불가', '인천지하철 1호선 임학역 2번출구에서 직진 도보 10분
-버스 이용: 롯데마트(계양점) 정류소 하차', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1557, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P80@P90', 'WHCROAD', '커피 한잔의 휴식과 빠르고 편리한 Drive Thru를 경험할 수 있는 경인교대입구역DT점입니다.', '1. 주차가능 2. 주차장 위치-DT진입로 지난 후 전용 주차장 이용 3. 주차가능대수-2대 4. 주차조건-스타벅스 이용 시 최대 2시간 이용 가능. 5. 주차요금 정산방법 -정산 필요 없음', '경인교대입구역 4번출구 도보 5분내 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (543, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '인천 논현점에서도 새로운 스타벅스를 경험하세요~', '1.주차가능 2.주차장 위치-입점건물 지하 3.주차가능대수-10대이상 4.주차조건-조건부 무료( 2시간 주차권 1매 지급(중복사용불가) 5.주차요금정산방법-카드만 가능', '인천논현역 1번출구 도보 5분, 홈플러스 맞은편 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (124, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@P80', 'WHCROAD', '행복한 제3의 공간 스타벅스 인천구월점. 여러분에게 항상 행복을 드리겠습니다.', '1.주차가능 2.주차장위치-입점건물지하 3.주차가능대수-10대이상 4.주차조건-조건부 무료(1시간무료(단, 구매한 영수증 확인 후 가능) 5.주차요금정산방법-파트너에게요청', '엘리오스 구월(구)롯데백화점) 인천점 앞 이토타워 건물 1~2층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2200', '0900-2200', '0900-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (36, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P70', 'WHCROAD', '복잡한 도심을 벗어나 여유로움을 만끽 할 수 있는 편안한 휴식공간, 구월길병원점입니다.', '1.주차가능 2.주차장위치-입점건물뒤편 지하주차장입구쪽 3.주차가능대수-10대 4.주차조건-주차 1시간 무료 정산 5.주차요금정산방법-파트너에게 1시간무료 정산 등록 요청', '인천 길병원 바로 맞은 편 가천대길병원 인공지능병원 건물 1층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (145, 'T04@T05@T08@T16@T17@T20@T21@T30@P90', 'WHCROAD', '바쁜 현대인들의 휴식처가 되는 곳, 커피한잔의 여유가 느껴지는 구월로데오점입니다.', '1.주차불가능', '인천지하철 1호선 터미널역 2번 출구, 뉴코아 아울렛 오른편 길 건너 안쪽으로 들어오면 로데오 광장 앞', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2200', '1000-2200', '1000-2100', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (763, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '커피 한 잔의 여유로움과 문화생활을 즐길 수 있는 편안한 휴식공간 인천예술회관역점입니다.', '1.주차불가능', '인천 지하철 1호선 예술 회관 4번 출구 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1176, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '도심속 커피한잔의 여유와 편리함을 즐기실 수 있는 인천간석DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 앞 주차장 3. 주차가능대수 - 7대 4. 주차조건 - 무료', '1.지하철 1호선 간석역 2번출구 6공단 사거리 방향

홈플러스간석점 맞은편 (도보15분)

2. 버스 3-2, 23, 35 승차 후 신원아침도시 오피스텔 하차
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1103, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '향기로운 커피와 편안한 공간으로 휴식같은 공간이 되어드리는 인천서창점입니다.', '1.주차가능 2.주차장 위치-입점건물 지하2층 3.주차가능대수-10대이상 4.주차조건-조건부 무료(매장 내점 시 건물 지하주차장 2시간 무료이용 가능) 5.주차요금정산방법-파트너에게 요청', '광역버스 1302 이용 시 ''센타빌딩''정류장 하차
롯데리아 맞은편 국민은행 옆 건물에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1265, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '도심 속 커피 한잔의 여유를 즐길 수 있는 문화생활의 중심 인천터미널사거리점입니다.', '1.주차가능 2.주차장 위치-입점건물 지하주차장 3.주차가능대수-10대이상 4.주차조건-조건부 무료(건물 자체 30분 무료지원, 매장 30분 무료지원(어플등록) 5.주차요금정산방법- 파트너에게 요청 필요) 총 1시간 건물 내 중복 주차지원 안됨', '인천예술회관역 6번출구 방향 롯데백화점 출구에서 인천터미널 방면으로 200m 직진하여 Link126 건물 1-2F
(19시 이후 화장실 사용시 파트너 문의 필수)', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2200', '0900-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1328, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향긋한 커피 한 잔과 여유로움을 느낄 수 있는 아늑한 휴식공간', '1.주차불가능', '남인천세무서 버스정류장 하차 도보1분', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1559, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@P80@P90', 'WHCROAD', '자동차로 즐기는 또하나의 즐거움 편안한, 하루를 선물하는 부평삼거리역DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 오른편 주차장 3. 주차가능대수 - 5대 4. 주차조건 - 무료', '인천지하철 1호선 부평삼거리역 2번출구에서 200M 거리 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (634, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '반가운 커피향과 친절한 파트너가 있어 스타벅스의 즐거움이 배가 되는 곳, 송림트레이스점 입니다.', '1.주차가능. 2. 주차장 위치 -송림트레이더스 내 주차장 3. 주차가능대수 -100대 이상 4. 주차조건 - 무료', '이마트 트레이더스 송림점 내 1층. 송림공구 상가에서 도보 2분 거리.', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1719, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '신속하고 편리한 Drive Thru를 경험할 수 있는 스타벅스 인천주안DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 오른편 주차장 3. 주차가능대수 - 7대 4. 주차조건 - 무료', '제물포여자중학교 정류장에서 보도로 200M에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1672, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', 'WHCROAD', '빠르고 편리한 Drive Thru를 경험할 수 있는 차별화된 서비스의 스타벅스 제물포역DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 오른편 주차장 3. 주차가능대수 - 9대 4. 주차조건 - 무료', '제물포역 1번 출구에서 도보로 200M에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (420, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '젊음과 열정이 살아 숨쉬고, 낭만과 문화가 공존하는 스타벅스 인하대점입니다.', '주차 불가', '인하대 후문 건너편 좌측방향 100m 메사건물 1,2층에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (314, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T34@T35@T36@P80@P90', 'WHCROAD', '바쁘고 지친 일상 속에서 책 한 권의 여유로움과 아늑함이 함께 하는 곳, 주안역점입니다.', '주차 불가', '지하철 1호선 주안역 1번 출구 / 주안역 지하상가 6번 출구', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0900-2100', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1033, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '커피한잔의 여유와 편리하고 특별한 Drive Thru의 경험을 인천용현DT점에서 느껴보세요.', '1. 주차가능 2. 주차장위치 - 매장 오른편 주차장 3. 주차가능대수 - 장애인 1대 포함 5대 4. 주차조건 - 무료', '1. 동인천역 1번 출구 521번 버스 승차 후 조달청(한양아파트 2차) 하차
2. 인하대병원 사거리 좌회전 조달청 맞은편 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1356, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피 한 잔의 즐거움과 편리한 Drive Thru 이용이 가능한 인천학익DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 오른편 주차장 3. 주차가능대수 - 4대 4. 주차조건 - 무료', '자차이용 시: 학산사거리 문학지하차도 방향 50m 위치
대중교통 이용 시: 간선 46, 5, 지선 518, 520, 학익고등학교 하차후 학산사거리 방면 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (454, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P90', 'WHCROAD', '바쁜 일상 속에서 따뜻함을 느낄수 있는 제 3의 공간, 부평GM점 입니다.', '주차불가.', '부평 GM 홍보관내 위치 (서쪽 출구쪽)

*부평GM점은 GM단지 내에 입점되어 있어 GM직원 외에 외부인은 이용이 어렵습니다.', 'N', '0700-1630', '0700-1630', '0700-1630', '0700-1630', '0700-1630', '0000-0000', '0000-0000', '0000-0000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (346, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', NULL, '언제 찾아와도 멋지고 편안한 휴식공간을 스타벅스에서 만나 보실 수 있습니다. 부평역점은 고객님들에게 즐거움을 선사할 것입니다.', '주차 불가', '부평 북부역 북인천우체국 (지하상가 16번 출구) 우측에 자리하고 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (372, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '동암역 북광장에 자리하고 있는 여유로운 분위기 속에 편안한 만남의 장소, 동암역점입니다.', '주차 불가', '지하철 1호선 동암역 2번출구 우측 건물 1,2층
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '1000-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (166, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80@P90', 'WHCROAD', '확 트인 창 안으로 햇살가득 아늑한 인천지역의 1호점 부평점입니다.', '주차 불가', '부평역 12번 출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (605, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P40@P80', 'WHCROAD', '복잡한 도심 속 여유로움을 느낄 수 있는 편안한 휴식공간, 부평시장역점 입니다.', '1.주차가능. 2. 주차장 위치 -현대해상 내 주차장 3. 주차가능대수 -100대 이상 4. 주차조건 - 조건부 무료(영수증당 30분 무료) 5. 주차요금정산방법 - 파트너에게 요청', '인천지하철 1호선 부평시장역 2번 출구로 나와 50M 직진', 'N', '0730-1900', '0730-1900', '0730-1900', '0730-1900', '0730-1900', '1000-1900', '1000-1900', '1000-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (686, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '아늑하고 편안한 휴식공간, 부평사거리점으로 여러분을 초대합니다.', '주차 불가', '부평역 지하상가 29번 출구로 나와 우회전 후 50M 직진', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (826, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '빛이 쏟아지는 통로, 도심속의 낙원 인천삼산점입니다.', '1. 주차불가', '7호선 굴포천역 8번 출구 방향으로 한 블록 건너 직진, 경복궁 한정식 건물 1층.', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0800-2200', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (935, 'T01@T04@T05@@T08@T09@T16@T17@T20@T30@T32@T34@T35@T36@P90', 'WHCROAD', '커피한잔의 여유와 새롭고 특별한 Drive Thru의 경험을 인천갈산DT점에서 느껴보세요.', '1. 주차가능 2. 주차장 위치-DT진입로 우측(언덕) 스타벅스 주차장 3. 주차가능대수-3대 4. 주차조건-스타벅스 이용 시 최대 2시간 이용 가능. 5. 주차요금 정산방법 -정산 필요 없음', '버스 이용
1. 지선 555, 간선 111-2, 87, 좌석 905, 엠코타운/부평순복음교회 하차 후 도보 2분
2. 광역버스 9300, 3700, 3800, 갈산동성당/부평순복음교회 하차 후 도보 2분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (797, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P90', 'WHCROAD', '커피 한 잔의 여유로움을 즐길 수 있는 편안한 휴식공간 인천청라점입니다.', '1. 주차가능 2. 주차장 위치-스타벅스 입점 건물의 홍익주차타워 이용 3. 주차가능대수-50대 이상 4. 주차조건-스타벅스 이용(1만원 이상 결재. 쿠폰, 스타벅스 카드 충전 제외) 시 1시간 무료. 이후 15분당 600원 부과. 5. 주차요금 정산방법 -영수증 지참 후 파트너에게 무료 1시간 등록 요청', '대중교통: 청라 1동 주민센터 맞은편 도보 10분(버스 904, 2-1)
차량 이용 시: 서인천IC에서 경제자유구역. 청라 방면 따라 청라 1동 주민센터 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (798, 'T01@T04@T05@T08@T16@T17@T20@T36@P80@P90', 'WHCROAD', '편안한 공간에서 특별한 경험을 선사하는 서구청 DT점 입니다.', '1. 주차불가', '대중교통: 66, 42-2, 84, 13, 1, 903 한전서인천지점 정류장 하차 도보 1분
인천지하철2호선 서구청역 3번출구 방향 10미터 앞
차량 이용 시 : 연희사거리에서 서인천IC방향. 서부소방서 맞은편', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2300', '0700-2300', '0800-2230', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (996, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '넓고 안락한 편안함을 선사하는 인천청라타워돔점입니다.', '1. 주차가능 2. 주차장 위치-스타벅스 입점 건물 4~5층 3. 주차가능대수-50대 이상 4. 주차조건-당일 1만 2천원 이상 결재 시 1시간 무료. 2만 4천원 이상 시 2시간 무료(쿠폰, 스타벅스 카드 충전 제외). 이후 10분당 300원 부과. 5. 주차요금 정산방법 -영수증 지참 후 파트너에게 주차권 요청.', '공항철도 인천청라국제도시역 하차 후 94번, 46번 버스 환승
린스트라우스정문 정류장 또는 광명메이루즈정문 정류장 하차', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1005, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P80@P90', 'WHCROAD', '당하동의 랜드마크, 오전 햇살이 따뜻한 인천당하DT점입니다.', '1. 주차가능 2. 주차장 위치-DT진입로 지난 후 전용 주차장 이용 3. 주차가능대수-9대 4. 주차조건-스타벅스 이용 시 최대 2시간 이용 가능. 5. 주차요금 정산방법 -정산 필요 없음', '인천 지하철 2호선 완정역 2번출구에서 나와 원당대로 방향으로 도보 5분', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1649, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '커낼웨이를 걸으며 커피 한잔의 여유를 즐길 수 있는 인천청라한신점입니다.', '1. 주차가능 2. 주차장 위치-스타벅스 입점 건물 주차장 이용 3. 주차가능대수-50대 이상 4. 주차조건-스타벅스 이용 시 최대 2시간 무료(추후 변경 가능) 5. 주차요금 정산방법 -정산 필요 없음(추후 변경 가능)', '- 버스 : 청라2동행정복지센터 하차 (43번, 904-1번) / 홈플러스 하차 (591번)/ 롯데캐슬 (306,306A) 하차, 도보 5분거리
- 홈플러스 청라점 뒤편에 위치 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1489, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '진정한 제 3의 공간을 느낄 수 있는 스타벅스 인천청라센트럴점입니다.', '1. 주차불가', '1) 청라국제도시역 702번 승차 청람초등학교 하차 약 200m 도보
2) 메가박스 대각선 맞은편에 위치
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1430, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '커피 한 잔의 여유로움을 즐길 수 있는 편안한 휴식공간 검단사거리역점입니다.', '1. 주차가능 2. 주차장 위치-입점 건물 지하주차장 B2~B3 3. 주차가능대수-50대 이상. 4. 주차조건-기본 1시간 무료. 구매금액 5,000원 당 30분 추가 가능. 최대 3시간 추가 가능. (총 4시간 무료 주차 가능) 5. 주차요금 정산벙법-5. 주차요금 정산방법 -영수증 지참 후 파트너에게 무료 시간 등록 요청', '인천지하철 2호선 검단사거리역 1번출구 건너편 20m앞 건물입니다.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1664, 'T04@T08@T16@T17@T20@T27@T30@T32@T34@T35@P80', 'WHCROAD', '송도의 랜드마크, WALK THRU 매장으로 새로운 스타벅스 문화를 경험하세요.', '1. 주차가능 2. 주차장위치-입점건물 지하 3. 주차가능대수-50대 이상 4. 주차조건-조건부 무료(영수증 지참시 무료)', '인천지하철 1호선 테크노파크역 현대프리미엄아울렛 송도점 1층에 위치', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (322, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑을 즐기며, 일상속의 달콤한 커피와 여유를 느껴 보세요.', '1,주차가능 2.주차장위치-이마트내 주차장 사용 3.주차가능대수-10대이상 4.주차조건-조건부 무료( 스타벅스 이용고객 2시간 무료/ 이마트 구매고객 금액대별 주차비용 정산-마트 영수증 합산가능) 5.주차요금정산방법-파트너에게 요청', '인천메트로 1호선 동춘역 하차 이마트 내 1층 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (641, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '빌딩숲 속 녹색 낙원에서 즐기는 커피 한 잔의 여유로움을 송도센트럴파크점과 함께하세요!', '1. 주차가능 2. 주차장위치-입점건물 지하 3. 주차가능대수-50대 이상 4. 주차조건-조건부 무료(영수증 지참시 3시간 무료) 5. 주차요금정산방법-매장 내 파트너에게 요청', '송도 자이 하버뷰 1단지 아파트 맞은편, 송도센트럴파크 2차 주상복합 아파트 상가(센투몰)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (695, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '반갑습니다. 품격 높은 스타벅스 송도커넬워크점입니다.', '1. 주차가능 2. 주차장위치-입점건물 지하 3. 주차가능대수-50대 이상 4. 주차조건-무료', 'NC큐브 커넬워크 여름동 1~2층에 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1088, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '맛있는 커피와 친절한 서비스가 있는 송도캠퍼스타운역점과 함께하세요!', '1. 주차가능 2. 주차장위치-입점건물 지하 3. 주차가능대수-50대 이상 4. 주차조건-조건부 무료(영수증 지참시 4시간 무료) 5. 주차요금정산방법-파트너에게 요청', '인천지하철 1호선 캠퍼스타운역 2번출구', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1090, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '아늑하고 편안한 분위기, 향긋한 커피향이 가득한 인천연수점입니다.', '1.주차가능 2.주차장위치 입점건물(파크타운 지하주차장) 3.주차가능대수-10대이상 4.주차조건-조건부무료(건물주차장 주차증 확인후 1시간 무료주차권 제공(제/상품구매시 제공/최대 주차권 4장 사용가능(4시간)) 5.주차요금정산방법-파트너에게 요청', '수인선 연수역 1번출구 힘찬병원 방향 도보 10분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1078, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '커피한잔의 여유와 편리하고 특별한 Drive Thru의 경험을 인천송도DT점에서 느껴보세요.', '1. 주차가능 2. 주차장위치-매장 측면 3. 주차가능대수-3대 4. 주차조건-무료', '인천지하철 1호선 인천대입구역 1번 출구 도보 10분 소요
', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1239, 'T03@T04@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T33@T36@T40@@P40@P80', 'WHCROAD', '인천의 첫번째 리저브 매장으로 차별화된 서비스와 프리미엄 커피를 즐기실 수 있는 송도트리플R점 입니다.', '1. 주차가능 2. 주차장위치-입점건물 지하 3. 주차가능대수-50대 이상 4. 주차조건-무료', '인천 지하철 1호선 테크노파크역 2번 출구 도보150m 트리플스트리트 A동 1층~2층', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1493, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '바쁜 도시 속 여유를 찾고, 쉴 수 있는 고품격 스타벅스 인천송도점 파트너들이 활기찬 모습으로 고객님을 기다리고 있습니다.', '1. 주차불가능', '송도 동춘터널을 지나, 이안송도 아파트 1층에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1481, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '편안한 하루를 선물할 인천동춘DT점입니다.', '1.주차가능 2.주차장위치-매장옆면 자체 주차장 3.주차가능대수-10대 4.주차조건-무료', '[대중교통]
인천지하철 1호선 동춘역 하차(2번 출구) - 인천 간선버스 환승(65-1), ''여성의 광장'' 하차 도보 97m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1452, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P80@P90', NULL, '향긋한 커피향과 친절한 파트너가 있어 쇼핑의 즐거움이 배가 되는 곳, 인천스퀘어원점입니다.', '1.주차가능 2.주차장 위치-SQUARE1 영업시간내 주차가능 3.주차가능대수-100대이상 4.주차조건-조건부 무료_1)영수증 3만원 미만 3시간 무료 2)영수증3만원 이상 5시간 무료(스퀘어원,CGV, 홈플러스 당일 영수증 합산 가능)', '인천지하철 동춘역 1번 출구에서 50m 스퀘어원 GATE1 앞', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (110, 'T04@T05@T10@T18@T30@T36@P10@P80', 'WHCROAD', '여행의 설레임을 선사하는 인천국제공항 제1여객터미널 지하1층에 위치한 인천공항랜드점에서 함께 하세요.(임직원 할인 및 사이렌오더 불가, 쿠폰사용불가)', '1. 주차불가능', '인천국제공항 제1여객터미널 B1층 중앙', 'N', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100', '0630-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1030, 'T04@T05@T07@T10@T11@T18@T30@T36@P10', 'WHCROAD', '여행의 설레임을 선사하는 인천공항중앙점과 함께 하세요~ 00:00-01:00 정산 작업으로 주문이 불가합니다.(24시간운영, 임직원 할인 및 사이렌오더 불가, 쿠폰사용불가)', '1. 주차불가능', '인천국제공항 제1여객터미널 3층 면세구역 28Gate 옆', 'N', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1210, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '하늘과 바다가 맞닿은 아름다움이 가득한 영종도운서역점 입니다.', '1. 주차불가능', '공항철도 운서역1번 출구 앞 200m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1325, 'T04@T05@T07@T10@T18@T30@T36@P10@P80', 'WHCROAD', '여행의 설레임을 선사하는 인천국제공항 제2여객터미널 1층에 위치한 인천공항T2입국점과 함께 하세요.(임직원 할인 및 사이렌오더 불가, 쿠폰사용불가)', '1. 주차불가능', '인천국제공항 제2여객터미널 1층 입국장 위치', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1327, 'T04@T05@T10@T11@T18@T30@T36@P10', 'WHCROAD', '여행의 설레임을 선사하는 인천공항T2에어점과 함께 하세요~ 00:00-00:30 정산 작업으로 주문이 불가합니다.(24시간운영, 임직원 할인 및 사이렌오더 불가, 쿠폰사용불가)', '1. 주차불가능', '인천국제공항 제2여객터미널 3층 면세구역 248Gate 옆', 'N', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400', '0000-2400');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1326, 'T04@T05@T10@T18@T30@T36@P10@P80', 'WHCROAD', '여행의 설레임을 선사하는 인천국제공항 제2여객터미널 3층에 위치한 인천공항T2출국점과 함께 하세요.(임직원 할인 및 사이렌오더 불가, 쿠폰사용불가)', '1. 주차불가능', '인천국제공항 제2여객터미널 3층 7번출구, G게이트 앞', 'N', '0600-1800', '0600-1800', '0600-1800', '0600-1800', '0600-1800', '0600-1800', '0600-1800', '0600-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1504, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36', 'WHCROAD', '바쁜 도시 속 여유를 찾고, 쉴 수 있는 고품격 스타벅스 영종하늘도시점 파트너들이 활기찬 모습으로 고객님을 기다리고 있습니다.', '1. 주차가능 2. 주차장위치-입점건물 측면 3. 주차가능대수-14대 4. 주차조건-조건부 무료(영수증 지참시 1시간30분 무료) 5. 주차요금정산방법-매장 내 파트너에게 요청', '중산동 영종하늘도시 세영프라자 1층에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1709, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '커피 향 가득한 따뜻하고 안락한 공간, 스타벅스 고양행신점 입니다', '1. 주차가능 2.주차장 위치 - 입점건물 지하주차장 3. 주차조건 - 매장이용시 1시간 무료 4. 주차요금정산방법 - 파트너에게 문의', '(버스) 97,11,72,850, 030번 이용하여 ''샘터3단지,고양시교통정보센터 역'' 하차. 도보 2분', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (541, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '화정 로데오 거리의 중심! 요진타워 1층에 위치한 화정역점입니다.', '1.주차가능 2.건물지하 3.50대 이상 4.매장 이용 고객 영수증당1시간 무료. 이후 10분당 500원씩 추가 5.POS에서 주차정산입력', '3호선 화정역 1번출구에서 도보 1분 거리 (버스정류장 화정 롯데마트에서 하차)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (161, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '오랜 전통을 자랑하는 스타벅스 16호점 화정점입니다.', '주차 불가능', '화정역 롯데마트 맞은 편 KFC 옆 2층짜리 스타벅스 입니다.', 'N', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (869, 'T01@T04@@T07@T08@T16@T17@T20@T36', 'WHCROAD', '바쁜 일상속, 원당Drive Thru에서 커피한잔의 여유를 느껴보세요~', '1.주차가능 2.매장정문앞 3.3대 4.조건없음', '지하철 3호선 원당역 하차, 원당시장 방면 도보 20분
(버스: 공항버스 3200번, 7300번, 서울 지선버스 7728번, 경기버스 85-1번, 
850번, 550번 동양쇼핑 하차 도보 1분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1075, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', 'KTX여행, 스타벅스 행신역점에서 설레임 가득히 시작해 보세요-!', '1.주차가능 2.건물내 지하1층 주차장 3.5대 이하 4.영수증당 1시간 5.출차시 영수증 확인', '지하철 경의중앙선 행신역 1번 출구, 도보 5분(국민은행 맞은편)
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1014, 'T01@T04@@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '향긋한 커피와 함께 드라이브를 즐길수 있는 고양DT점입니다.', '1.주차가능 2.매장 옆에 주차 3.10대 가능 4.조건없음', '지하철 3호선 화정역 2번출구 롯데마트 앞에서 버스 (850, 85-1, 85번) 이용, 신성빌라 혹은 푸른마을 동익 아파트에서 하차, 도보 7분 거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1121, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '넓고 탁트인 공간에서 좋은 사람들과 커피 한잔의 여유를 느껴보세요.', '1.주차불가능', '1. 지하철 3호선 삼송역 4번 출구 하차. 마을버스(040,041,047) 탑승 후 롯데슈퍼 하차. 
2. 버스 이용시 신원마을 3단지 하차, 도보 2분 
(일반버스 703,760,330,333,100번 외 다수 / 직행버스 9710번 / 광역버스 9709번)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1259, 'T04@T05@T07@T08@T09@T30@T36@P40', 'WHCROAD', '스타벅스의 유토피아 같은 공간', '1.주차가능 2.주차장 위치- 스타필드고양점 지상 및 지하 주차장 3.주차가능대수- 50대 이상 4.주차조건- 무료', '스타필드고양 3층 잇토피아 내
삼송역3번출구 도보 10분
버스 9703,706,705,042,046,048,077', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1260, 'T04@T05@T08@T09@T20@T27@T36@P40', 'WHCROAD', '한국에서 느끼는 에딘버러의 정취. 스타벅스 스타필드고양1F고메스트리트점입니다.', '1.주차가능 2.주차장 위치- 스타필드고양점 지상 및 지하 주차장 3.주차가능대수- 50대 이상 4.주차조건- 무료', '삼송역 3번출구. 직진500m.
스타필드고양 1층 고메스트리트 내부 위치.', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1261, 'T03@T04@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T36@T40@@P40', 'WHCROAD', '스타필드고양1F(리저브) 가 스타벅스 고객님께 새로움과 다양한 경험을 선사합니다.', '1.주차가능 2.주차장 위치- 스타필드고양점 지상 및 지하 주차장 3.주차가능대수- 50대 이상 4.주차조건- 무료', '스타필드고양 1층 정문으로 들어오시면 바로 오른쪽에 위치하고 있습니다.', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1262, 'T04@T05@T08@T09@T16@T17@T20@T29@T30@T36@P40', 'WHCROAD', '상큼, 발랄 티바나 매장에 오신것을 환영합니다!', '1.주차가능 2.주차장 위치- 스타필드고양점 지상 및 지하 주차장 3.주차가능대수- 50대 이상 4.주차조건- 무료', '자차 이용시 네비게이션에 ‘스타필드고양’ 검색

버스 705 ,706 동산마을 22단지 하차

지하철 3호선 삼송역 3번 출구에서 500m 직선 ( 도보 8분 소요)
', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1548, 'T04@@T08@T09@T16@T17@T20@T21@T30@T34@T36@P80@P90', 'WHCROAD', '스타벅스 원흥역점에서 커피 한잔의 편안함과 여유로움을 느껴보세요.', '1. 주차가능 2.상가 전용 주차장 이용 3.20대이하 4.매장이용시 금액상관없이 최대2시간무료주차가능 5.파트너가 직접등록 가능하며, 매장운영 시간에만 주차등록 가능', '3호선 원흥역 1번 출구에서 도보 5분 내 위치한 삼송원흥역센트럴푸르지오 상가 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1642, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P80@P90', 'WHCROAD', '창릉천을 바라보며 향기로운 커피 한 잔과 편안한 휴식을 즐길 수 있는 삼송역점입니다.', '1.주차가능 2.주차장 위치- 입점건물상가 지하1F-지하2F 3.주차가능대수- 50대 이하 4.주차조건- 조건부 무료(스타벅스 영수증 당 2시간까지만 무료) 5.주차요금 정산방법- 파트너에게 요청', '3호선 삼송역 3번 출구에서 건너편 도보 3분 내 위치한 힐스테이트삼송역 상가 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1681, 'T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P80', NULL, '도심속의 편안한 휴식처에서 커피한잔의 여유를 즐겨보세요.', '건물 주차장 1시간 무료주차(이후 15분당 1,500원), 파트너 주차등록 필요, 건물 내 사용영수증 중복 불가', '3호선 정발산역 1번출구 도보 5분, 1000번, 2000번 버스 등 일산동구청(중) 버스정류장 하차 도보 5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (490, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '스타벅스 마두역점에서 편안한 휴식을 커피와 함께 즐기세요.', '1.주차불가', '지하철3로선 마두역 4번 출구에서 정발산 방면으로 도보 3분.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0730-2100', '0830-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (381, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '바쁜 일상속에서 벗어나 삶의 여유와 편안함이 있는 웨스턴돔B 입니다.', '1. 주차가능, 2. 건물내부 주차장. 3.조건부 무료: 2시간 무료주차 가능. 이후 추가 10분당 500원씩 비용 발생.', '지하철3호선 정발산역 1번출구 웨스턴돔 B동 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (986, 'T04@T05@T07@T08@T16@T17@@T20@T21@T30@T36', 'WHCROAD', '안락한 분위기와 최고의 서비스를 즐기실 수 있는 일산백마점입니다.', '1.주차불가능', '- 경의중앙선 이용 시
백마역에서 1번 출구에서 횡단보도 건너 마두1동 사무소 방면으로 800m 직진(도보 13분)
- 3호선 마두역 이용 시
버스로 환승 후 마두1동 주민센터에서 하차
(066, 88A 버스 이용)
- 3호선 백석역 이용시
버스로 환승 후 마두 1동 주민센터에서 하차
(88B, 97, 1200,1001,921 버스 이용)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (631, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@T36@P80', 'WHCROAD', '모든 고객에게 특별한 경험을 드리는 스타벅스 라페스타광장점 입니다.', '1. 주차불가', '지하철 3호선 정발산역 2번출구 라페스타몰 방면으로 도보 5분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (779, 'T03@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '향긋한 커피와 함께 편안한 시간 보내세요.', '1.주차가능 2.건물내 지하주차장 3.20대 이상, 영수증 당 1시간 무료 4.주차 도장 찍어드림', '백석역 4번 출구로부터 약 70m
(버스 73, 073, 921, 068, 082)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2130', '0730-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (673, 'T01@T04@@T07@T08@T16@T17@T20@@@T36@P60@P80@P90', 'WHCROAD', '수도권 첫 Drive Thru 매장, 백석역DT점입니다.', '1.주차불가능', '백석역 5번출구', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0730-2200', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (810, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑과 커피한잔의 여유를 한번에 즐길 수 있는 휴식처, 풍산이마트점입니다.', '1. 주차가능,2. 건물지상주차장. 3. 조건부무료: 구매 금액별 무료 주차 제공/ 30분무료, 1만원이상 1시간, 3만원이상 2시간, 5만원이상 3시간, 7만원이상 4시간, 10만원이상 5시간무료', '경의선 풍산역 하차 후 2번 출구 도보 2분 거리', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (829, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '가족, 연인 그리고 친구와 함께 커피 한잔의 여유를 즐겨보세요.', '1. 주차가능. 2. 건물 내 지상 주차장 . 3.조건부무료: 2시간 무료주차 가능. 이 후 추가 10분당 500원씩 비용 발생.', '일산 식사동 위시티 단지 
(백마역 039,080 풍산역 081,087,999 버스 이용 ''위시티주상복합단지'' 정류장 앞)
식사중앙공원 쪽 건물 주차장 입차', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1112, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '편안하고 아늑한 쉼터에서 커피 한잔의 여유를 느껴보세요.', '1.주차가능 2.건물지하주차장 3.60대 이상 4.2시간 무료이용, 2시간 이상 유료주차(개인정산) 5.건물 무인 출납기 정산', '1. 지하철 3호선 백석역 8번 출구 하차 도보5분
2. 버스 이용시 백석동 요진 와이시티 하차 직행버스 1000,1100,1200번 / 일반버스 56, 66,72,95 번 외 다수
일산 요진 와이시티 상가 1층에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1317, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '풍동의 첫 스타벅스 Drive Thru를 즐길 수 있는 일산풍동DT점입니다.', '1.주차가능 2.매장 앞 주차공간 3.9대 가능 (장애인 주차장 1대 포함) 4.조건없음', '일산 동구 성원에이스아파트 정류장 하차 후 도보 50M 이내', 'N', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0630-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1432, 'T04@T05@T08@T16@T17@T20@T30@T36@P40@P70', 'WHCROAD', '동국대일산병원 1층에 위치한 스타벅스 동국대일산병원점입니다.', '1. 주차불가', '3호선 원당역에서 97번, 9703번 탑승 후, 동국대일산병원 사거리에서 하차. 도보 8분
동국대일산병원 1층 로비에 위치해있습니다.', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0800-1700', '0900-1700', '0800-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1465, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '스타벅스 일산애니골DT점 입니다.', '1. 주차가능. 2.매장앞 주차장. 3.매장 내 19대 가능(장애인주차 1대 포함), 무료주차, 2시간 이용가능', '풍산역 2번출구에서 동국대학교 병원 방면 500m에 위치해 있습니다.', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1596, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T34@T36', NULL, '일산 킨텍스 중심의 평온한 환경 속에서 친절한 파트너와 함께 커피한잔의 여유를 즐길 수 있는 소노캄고양점입니다.', '1. 주차가능 2. 호텔 내 지하주차장 3. 조건부무료: 구매영수증 확인 등록 후 1시간 무료주차 가능(입차기준), 이후 10분당 500원 부과', '3호선 대화역 하차 이후 마을버스(010,058,064,089)이용, 킨텍스꿈에그린, 원시티1단지 정류장 하차 이후 원시티 방향 도보 5분/ 공항버스 7400 소노캄고양 정류장 하차 이후 도보 1분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1675, 'T04@T08@T16@T17@T20@T30@T32@T34@T35@P80@P90', 'WHCROAD', '탄현의 명소, 안락하고 편안한 장소 스타벅스 일산탄현동점입니다.', '주차불가', '탄현마을 3, 5 단지 건너편, 탄현지하차도 방향 우측 2층 매장입니다', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1661, 'T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P40', NULL, '최고의 서비스와 최고의 품질과 최고의 고객님을 만나는 공간 스타벅스 현대킨텍스점입니다.', '1. 주차가능 2.건물 내 주차장 사용 3. 조건부무료:금액 상관 없이 주차 등록이후 1시간 무료, 3만원이상 구매시 5시간 무료 타 매장 사용 합산 가능', '현대백화점 현대킨텍스점내 지하1층 식품관내 위치', 'N', '1030-2000', '1030-2000', '1030-2000', '1030-2000', '1030-2030', '1030-2030', '1030-2030', '1030-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (666, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '안락하고 편안한 여러분만의 매장을 즐겨보세요.', '1. 주차가능. 2.건물뒷편 주차장 3. 조건부무료: 영수증 지참시 2시간 무료', '주엽역 8번 출구 50M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (697, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '최고의 서비스와 품질로 도심 속 쉼터가 되어드리는 대화역점입니다.', '1. 주차가능. 2. 건물지하주차장. 3. 조건부무료: 무료 주차 30분 가능 (무인주차차 시스템 설치, 매장 내 주차등록 요청)', '3호선 대화역 1번 출구 약 50M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (724, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '탄현의 핫플레이스, 새로운 랜드마크가 될 일산탄현점입니다.', '1. 주차무료 2. 건물 내 주차장 사용 3. 조건부 무료: 영수증 확인 무료주차 가능 1만원 이상 2시간 무료주차 가능, 매장 내 영수증 제공', '탄현역 2번 출구 쪽으로 연결된 연결 다리를 건너면 제니스 스퀘어와 바로 연결됩니다.
제니스스퀘어 상가 1동 1층 3번 GATE 옆에 위치해 있습니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (941, 'T02@T04@T05@T07@T08@T09@T16@T17@T30@T32@T36@P60@P80', 'WHCROAD', '편리한 쇼핑과 친절한 파트너와 함께 여유있는 커피한잔의 행복을 느낄 수 있는 킨텍스이마트점입니다.', '1주차가능 2. 건물주차장 이용 3. 조건부 무료: 30분이 내 출차시 무료 2.매장 내 주차정산등록 시 2시간무료 3.이마트,트레이더스 무료 주차 합산 가능', '현대백화점 킨텍스점에서 킨텍스IC방향으로 500m (도보 15분)
-대화역 4번출구로 나와 082, 039번 버스 이용', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (942, 'T04@T05@T08@T16@T17@T20@T30@T36@P60@P80', 'WHCROAD', '향긋한 커피와 함께 편안하고, 품격있는 서비스를 제공해드리는', '1. 주차불가', '경의선 일산역 1번출구에서 후곡마을 롯데아파트 방향으로 450m 
-주엽역에서 010, 091번 버스 이용', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1212, 'T01@T05@T07@T08@T16@T17@T20@T36', 'WHCROAD', '커피 한잔의 휴식과 빠르고 편리한 Drive Thru를 경험할 수 있는 일산덕이DT점입니다', '주차 불가 (주변 덕이동로데오거리 주차장 사용 가능)', '일산 덕이동로데오거리에서 도보 1분
경의선 탄현역에 하차,2번 출구 덕이동로데오 방면 도보 10분', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1300, 'T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '하이파크시티의 랜드마크 스타벅스 일산가구단지점입니다.', '매장 뒷편 주차장 이용 (무료 주차, 주차 대수 20대 가능)', '일산가구단지 사거리에서하이파크시티방면 좌회전후 100m 이내 위치
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1373, 'T03@T05@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T33@T35@T36@T40@P90', NULL, '리저브 커피와 다양한 티바나 티를 함께 즐길 수 있는 일산가로수길R점입니다.', '1. 주차가능 2.몰 내 지하주차장. 3.조건부무료: 2시간 무료주차 가능(입차기준)', '지하철 3호선 주엽역 2번 출구 방면 구름다리 직진도보 7분거리
일산가로수길 E동 1층에 위치합니다.', 'N', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1629, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '따뜻함과 안락함이 가득한 스타벅스 주엽강선점입니다.', '1.주차가능 2. 주차장위치-건물내 지하주차장 3.주차가능대수 -50대이상 4.주차조건- 30분무료, 20,000원이상 2시간 주차권 발급(금액에 따라 지급 매수 상이), 일요일 주차장 상시개방, 추가 30분당 1,000원 5.주차요금정산방법-출차시정산', '주엽역 1번출구 정발산역 방향 뉴서울프라자 1층(뉴서울프라자 사거리에 인접)', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (366, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '소중한 인연 혹은 친구와의 만남은 커피향 가득한 과천점에서 가져 보세요.', '1.주차불가능', '지하철 4호선 정부과천청사역 11번 출구 앞 
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (175, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80@P90', 'WHCROAD', '일상에 편안하고 아늑함을 느끼실 수 있는 여러분의 오아시스, 과천이마트점입니다.', '1.주차가능 2.주차장 위치-이마트 지하주차장 3.주차가능대수-50대 이상 4.주차조건-조건부 무료(당일 영수증 지참 시 1시간 무료, 초과 시 30분 당 1천원) 5.주차요금정산방법-출차 시 당일 영수증 제시', '정부과천청사 2번 출구에서 우회전하여 약 40M 직진, 전방에 보이는 이마트 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0800-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1449, 'T01@T04@T08@T09@T16@T17@T20@T36@P90', NULL, '차별화된 Drive Thru 서비스와 쾌적한 까페 및 갤러리를 운영하는 과천DT점입니다.', '1.주차가능 2.주차장 위치-매장 전면 3.주차가능대수-(장애인 1대 포함)20대 4.주차조건-무료', '4호선 과천역 1번 출구 도보 13분, 과천역 2번 출구 버스 환승 - 과천성당 하차 및 과천성당 옆 위치(도보 1분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (477, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T34@T36@P70@P80@P90', 'WHCROAD', '언제나 특별한 Starbucks Experience를 선사하는 스타벅스 광명철산점입니다.', '1. 주차불가능', '7호선 철산역 2번 출구에서 120M 직진', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (842, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '향기로운 커피 한 잔의 여유를 느낄 수 있는 광명하안점 입니다.', '1. 주차불가능', '하안사거리에서 독산역 방향으로 도보 10분 이내 (미래여성산부인과 옆)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1008, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '여러분의 일상 속에 언제나 함께하는 철산로데오점 입니다.', '1. 주차불가능', '철산역 2번출구에서 광명경찰서 방면으로 도보 약 5분거리(철산 푸르지오하늘채 아파트 입구 맞은편)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1168, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P70@P80@P90', NULL, '해와 달이 잘 비추는 광명시의 교통의요지 사거리에 위치한 광명사거리역점 입니다.', '1. 주차불가능', '지하철 7호선 광명사거리역 7번출구 앞', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1243, 'T04@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '최고의 서비스로 고객의 안식처가 되어줄 아늑한 공간 스타벅스 광명소하점입니다.', '1.주차가능 2.입점건물 지하1층~2층 3.주차가능대수-30대이상, 4.주차조건-조건부무료(구매시 1시간) 5.주차요금정산방법-파트너에게주문시등록요청', '가리대사거리.소하상업지구 정류장 하차 도보 160m, 광명소방서 옆.', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1207, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', 'Drive Thru를 통해 편안한 커피를 즐길 수 있는 광명소하DT점 입니다.', '1.주차가능 2. 매장측면 전용주차장 3.주차가능대수 - 8대 4.주차요금정산방법 없음', '광명동굴, 광명 이케아 방향 (구) 현대오일뱅크 위치
/ 대중교통 이용시 : 광명시여성비전센터 하차', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0830-2100', '0930-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1378, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '안녕하세요. 향긋한 커피 한잔과 함께 추억을 남길수있는 스타벅스 광명역점 입니다.', '1.주차가능 2.입점건물 지하3층~4층 3.주차가능대수-약100대, 4.주차조건- 조건부 무료(영수증 1만원이상 1시간무료, 1만5천원이상 2시간무료, 5만원이상 3시간무료(무료주차 2시간 기준이 아브뉴프랑 타점포와 상이함), 스타벅스카드 충전금액은 무료주차등록 불가 5.주차요금정산방법-파트너에게주문시등록요청', 'KTX 광명역 4번출구 방면 하차 후 도보 7분 아브뉴프랑 1층', 'N', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1564, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P80@P90', 'WHCROAD', '향기로운 커피와 함께 아늑함과 편안함을 느낄 수 있는 스타벅스 철산역점 입니다.', '1. 주차불가능', '지하철 7호선 철산역 4번출구, 도보 50m', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1433, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '안녕하세요, 일상 속 소소하지만 확실한 행복을 전하는 스타벅스 광명하안대로점 입니다.', '1. 주차불가능', '광명우체국에서 하안사거리방향 250m 국민은행 1층 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1003, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P60', 'WHCROAD', '경기도 광주 1호점에서 스타벅스 커피의 향기로움을 느끼세요!', '1.유료주차가능 2.건물지하주차장, 건물뒷편 황백주차장 3. 건물지하 약 20대, 뒷편 약 40대 4. 유료(30분당 1,000원과금) 5.사전주차요금정산기 이용', '경기도 광주터미널 맞은편', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1584, 'T01@T04@T08@T09@T16@T17@T20@T34@P90', 'WHCROAD', '도심 속에 작은 쉼터에서 힐링 하실 수 있는 경안천에 위치한 스타벅스 경기광주송정DT 점입니다.', '1.주차가능 2.매장 후면 주차장 3. 28대 (스타벅스 전용주차장 7대(장애인구역 포함) + 광주시 주차구역 약 21대 가능) 4.무료이용 가능 5.무료', '▣ 대중교통 이용 시 
-지하철+버스: 경강선 경기광주역 하차 후 2-1, 35-2 브라운스톤아파트 하차 도보 3분
-버스 : 광주종합버스터미널 하차 후 38-43, 38-42 브라운스톤아파트 하차 도보 3분

▣ 자차 이용 시
- 네비게이션에 “송정동 12-12" 검색
- 경안천로 퇴촌,양평방향 브라운스톤아파트 맞은편 위치
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1450, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '도심 속에 작은 쉼터에서 힐링 하실 수 있는 경기도 광주시에 위치한 스타벅스 경기광주신현DT 점입니다.', '1.주차가능 2.매장 전면 주차장 3. 11대(장애인 전용 1대 포함) 4.스타벅스 전용주차장으로 무료이용 가능 5.무료', '▣ 대중교통 이용 시 
-지하철+버스: 분당선 서현역 하차 -&gt; 520, 521, 522 환승 -&gt;현대모닝사이드1차 아파트 하차
-버스: 직행버스 1150, 1500-2 -&gt;현대모닝사이드1차 아파트 하차 
▣ 자차 이용 시
- 네비게이션에 “오포읍 태재로 37” 검색
- 57번 국도 경기도 광주 방면, E-편한세상 아파트 대각선 방향맞은편
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1615, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '도심속 작은 쉼터, 드라이브스루와 카페를 함께 즐길 수 있는 스타벅스 경기광주쌍령DT점입니다.', '1.주차가능 2.매장 전면 및 후면 주차장 3. 9대(전면 4대, 후면 5대) 4.스타벅스 전용주차장으로 무료이용 가능 5.무료', '▣ 대중교통 이용 시 
-지하철+버스: 경강선 경기광주역 하차 후 2번 버스 이용, 광주센트럴푸르지오아파트입구 하차
-버스 : 광주종합버스터미널 하차 후 1113-1, 114, 300번 버스 이용.광주센트럴푸르지오아파트 입구 하차

▣ 자차 이용 시
- 네비게이션에 “경충대로1445" 또는 "쌍령동 168" 검색

', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (614, 'T04@T05@T08@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '활력이 넘치는 구리돌다리점에 당신을 위한 최고의 음료가 준비되어 있습니다.', '1. 주차불가능', '구리역 3번 출구에서 돌다리사거리 방향으로 도보 5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0830-2200', '0830-2130', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (685, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '편안하고 안락한 매장입니다. 커피와 함께 리프레쉬하세요.', '1. 주차가능 2. 주차장위치 - 건물주차장(지하/지상) 3. 주차가능대수 - 5대 4. 주차조건 - 없음', '인창동 삼보아파트 맞은 편', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1413, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P80@P90', 'WHCROAD', '부드러운 커피향과 특별한 경험을 제공하는 스타벅스 구리갈매역점 입니다.', '1. 주차가능. 2. 주차장위치 - 갈매아이파크상가주차장( 노브랜드 구리갈매역점 옆 지하주차장) A동방면 3. 주차가능대수 - 50대이상 4. 주차조건 - 매장이용자에 한해 2시간 무료 5. 주차요금정산방법 - 파트너에게 요청', '지하철 경춘선 갈매역 1번출구 도보 400m 아이파크 에비뉴 방향 
주차-갈매아이파크상가주차장( 노브랜드 구리갈매역점 옆 지하주차장) A동방면
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (516, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '산본의 세번째 특별한 만남! 아늑한 쉼터 산본동점입니다.', '1.주차 불가능', '문화예술회관 사거리 옆, 군포농협본점 옆 건물 2층에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (442, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '모던하고 세련된 감각의 인테리어와 편리한 교통까지 매력을 더하는 스타벅스 산본역점 입니다.', '1.주차 불가능', '산본역 3번출구 앞 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (82, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '여유로운 커피 한잔과 행복을 느낄 수 있는 곳, 산본점 입니다.', '1.주차 불가능', '산본 이마트 주차장 입구를 정면으로 두고 좌측 30M 아래 성진빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1451, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P90', NULL, '산본사거리의 아늑한 휴식처! 언제나 따뜻함이 가득한 산본사거리점입니다.', '1.주차 불가능', '지하철 1호선, 4호선 금정역 6번 출구 이용시 마을버스 2,3번 [임광그대가] 정류장 하차 후 도보 1분 (산본사거리 방향)', 'N', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0900-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1683, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '빠르고 편리한 Drive Thru를 경험할 수 있는 스타벅스 김포석모DT점입니다.', '1.주차가능 2.주차장위치 - 매장후면 3.주차가능대수- 27대 4.주차조건 - 무료', '양촌읍 석모리 모산.연운사 버스정류장 하차 도보 300m 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (599, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '커피한잔의 여유를 편안하게 즐길 수 있는 김포장기점 입니다.', '1. 주차가능 2. 주차장위치- 입점건물지하 3. 주차가능대수- 5대이하 4. 주차조건 -스타벅스이용고객1시간무료 5. 주차요금정산방법-파트너에게요청', '김포신도시 장기상가 하차, 도보 1분', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (758, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '김포 중심가의 편안하고 향기로운 휴식 공간, 스타벅스 김포시청점입니다.', '1. 주차불가능', '81, 81-1, 60, 60-3 김포시청 하차 도보 2분 
김포시 사우역 3번출구 김포시청방향 도보 5분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (742, 'T01@T04@T08@T09@T16@T17@T20@T36', 'WHCROAD', '스타벅스의 새롭고 특별한 경험을 김포풍무DT점에서 느껴보세요~', '1. 주차가능 2.주차장위치- 매장측면(DT주문 전 우측) 3. 주차가능대수-5대 4. 주차비 - 무료', '버스 69, 81, 81-1, 1004, 1002, 841-1 이용하여 당곡고개 정류장 하차', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (891, 'T02@T04@T05@T08@T16@T17@T20@T30@T36@P40', 'WHCROAD', '즐거운 쇼핑과 여유의 공간, 스타벅스 김포이마트점과 함께 하세요.', '1. 주차가능 2. 주차장위치- 이마트주차장 3. 주차가능대수 - 50대이상 4. 주차조건-조건부유료(스타벅스영수증당 2시간무료) 5. 주차요금정산방법-파트너에게요청', '이마트 김포한강점 1층에 위치(김포한강신도시)

*장기지구/운양지구에서 자가용 이용 시 : 김포한강1로 - 김포한강4로 인천(검단)/장기지구 방면 좌회전 - 김포한강8로 150M 우회전 - 이마트 김포한강점 하차
*버스 이용 시 : 일반버스 22, 33, 60-1, 60-3, 81, 81-1, 90, 직행버스 8000, 8600, 9008 복합환승센터, 한가람/솔터마을 하차', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (940, 'T04@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '김포한강신도시의 여유와 편안함을 김포운양점에서 느껴보세요~', '1. 주차불가능', '김포시 운양역 2번 출구에서 도보 5분 거리 대로변에 위치', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2200', '0800-2200', '0830-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1274, 'T01@T04@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '스타벅스의 새롭고 특별한 경험을 김포감정DT점에서 느껴보세요~', '1. 주차가능 2. 주차위치-매장뒤쪽 주차장 3.주차대수 - 11대 4. 주차조건- 무료', '김포 감정동 홈플러스 맞은편 삼성 디지털 프라자 좌측 DT 매장', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1297, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '수변 도시의 여유를 느낄 수 있는 김포장기커낼점입니다.', '1. 주차가능 2. 주차위치-롯데마트지하주차장 3.주차대수 - 50대 4. 주차조건- 무료', '래미안 한강아파트 정류장 건너편 E편한 캐널시티 건물 1층입니다.', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1422, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '언제 어디서나 향긋한 커피로 여러분의 일상과 함께하는 스타벅스 김포구래점입니다.', '1. 주차가능 2. 주차장위치- 입점건물지하 3. 주차가능대수- 20대이상 4. 주차조건-조건부무료(스타벅스영수증당 1시간무료) 5. 주차요금정산방법- 파트너에게요청', '김포 이마트 한강점 건너편으로 도보 3분 거리에 위치한 상가 1층 입니다.
', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1534, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T35@T36@P90', 'WHCROAD', '편안하고 쾌적한 커피경험을 할 수 있는 김포아이앤씨점입니다.', '1. 주차불가능', '좌석버스 21번, 마을버스35번 김포경찰서 후문 하차 도보1분
', 'N', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1624, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '커피한잔의 여유와 편리하고 특별한 Drive Thru의 경험을 풍무사거리DT점에서 느껴보세요', '1. 주차가능 2. 주차장위치 - 매장전면 3. 주차가능대수 - 11대 4. 주차조건- 무료', '김포풍무동 홈플러스에서 당곡고개 방면 도보 4분 소요
버스정류장 [수행마을.홈플러스] 하차', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2200', '0730-2200', '0730-2130', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1591, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P80@P90', 'WHCROAD', '스타벅스의 새롭고 특별한 경험을 풍무역DT점에서 느껴보세요~', '1. 주차가능 2. 주차장위치 - 매장측면 3. 주차가능대수- 30대 4. 주차조건 - 무료', '차량 이용시 : 김포시 김포대로 659
대중교통 이용시 : 풍무역DT 2번출구 도보 8분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1706, 'T01@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '편리한 Drive Thru와 감성이 가득한 카페공간이 함께하는 스타벅스 남양주화도DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 앞 주차장 이용 3. 주차가능대수 - 22대(장애인 1대 포함) 4. 주차조건 - 없음', '1200, 1-4, 65번 버스 이용 진주아파트하차 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (610, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T36@P60', 'WHCROAD', '새로워진 스타벅스 평내호평역점을 만나보세요.', '1. 주차가능 2. 주차장위치 - 건물 지하주차장 이용 3. 주차가능대수 - 10대이상 4. 주차조건 - 주차 확인 시 30분 무료(주차장 오후 12시 이후부터 이용가능)', '위치 : (경춘선) 평내호평역 도보 3분 
일반버스 : 9-3, 9-7, 10-5, 165, 168, 30-16, 55번 
직행좌석버스 : 1000, 1100, 1115번', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (880, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '남양주 별내 신도시에 위치한 ''넓고 아늑한 느낌의 고품격 스타벅스''를 만나세요.', '1. 주차 불가능', '별내역 2번출구로 나와 길 건너 우측으로 직진, 삼거리에서 좌측길로 직진 
(약 10분 소요)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (959, 'T01@T04@T05@T07@T08@T09@T16@T17@T20', 'WHCROAD', '남양주시 최초의 Drive Thru 평내DT점에서 커피 한잔의 여유와 디지털 감동서비스를 느껴보세요.', '1. 주차가능 2. 주차장위치 - 매장 뒷편 주차장 3. 주차가능대수 - 7대(장애인주차장 1대 포함) 4. 주차조건 - 없음', '1) 경춘로 춘천 방향 도로이용 후 남양주 시청을 2.3Km를 지나 좌측에 위치
2) 경춘선 평내호평역 하차 후 2번출구 앞 버스 정류장에서 30, 1-4, 65-1, 65번 탑승 후 평내동 주민센터 남양주 우체국 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1122, 'T04@T05@T07@T08@T16@T17@@T20@T21@T30@T36@P90', 'WHCROAD', '쾌적한 환경과 따뜻한 커피가 있는 힐링 매장 별내불암로점 입니다.', '1. 주차가능. 2. 주차장위치 - 입점 건물 지하1-2층. 3. 주차가능대수 10대. 4. 주차조건 - 스타벅스 이용시 1시간 무료. 5. 주차요금정산방법 - 파트너에게 무료주차 등록요청', '지하철 6,7호선 태릉입구역 7번출구에서 마을버스 82B 승차 후 신안인스빌 하차 
경춘선 별내역 2번출구.이마트에서 마을버스 77번 승차 후 신안인스빌 하차 후 다이소 건물 내 위치

', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1204, 'T01@T03@@T07@T08@T09@T16@T17@T20@T22@T26@T29@', 'WHCROAD', '아름다운 한강뷰와 차별화된 커피장비로 고품격의 리저브커피를 경험 할 수 있는 리버사이드팔당DTR점 입니다 .', '1. 주차가능 2. 주차장위치 - 매장 앞 주차장 3. 주차가능대수 - 10대이상 4. 주차조건 - 없음', '경의중앙선 도심역 2번 출구에서 팔당방면 112-1,167,63,2000-3,2000-4 버스 탑승 후 갬벌역 하차, 도보 3분이내', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1222, 'T01@T05@T07@T08@T09@T16@T17@T20@P90', 'WHCROAD', '부드러운 커피와 편안함이 있는 스타벅스 남양주진접 DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 옆 주차장 이용 3. 주차가능대수 - 16대(장애인 1대 포함) 4. 주차조건 - 없음', '1.경춘선 퇴계원역 하차 후 퇴계원 농협 버스정류장에서 88,73,707번 탑승후 금곡리 입구, 신동아 아파트 정류장 하차 금강로 방면 도보 5분 거리에 위치 
2.자동차 이용시 47번 국도 금강로 퇴계원 방향 도로 이용 후 금곡 교차로 100m 지나 우측에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1627, 'T05@T08@T16@T17@T20@T21@T30@T32@T34@T35@P80', 'WHCROAD', '여기는 남양주의 안락한 휴식공간 스타벅스 도농역점 입니다.', '1. 주차가능 2. 주차장위치 - 건물 지하 주차장 이용 3. 주차가능대수 - 10대 이상 4. 주차조건 - 최조 15분 무료, 이후 10분당 700원', '부영아파트 3단지(302,303동 사이), 도농중학교 후문 앞에 있습니다.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0830-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1638, 'T05@T08@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '여기는 커피향이 그윽한 스타벅스 다산진건점입니다.', '1. 주차가능 2. 주차장위치 - 건물 지하 주차장 이용 3. 주차가능대수 - 10대 이상 4. 주차조건 - 최초 1시간 무료, 이후 10분당 1,000원', '다산 진건지구 헤리움 그랑비스타 1차 1층에 위치', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1482, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@P90', 'WHCROAD', '고급스러운 인테리어와 편안한 휴식공간 스타벅스 남양주연평DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 옆 주차장 이용(다이소와 공용) 3. 주차가능대수 - 6대(장애인 1대 포함) 4. 주차조건 - 매장이용 시 주차 할인권 제공(40분 무료)/다이소와 중복할인 안됨', '경춘선 사릉역 하차(1번출구)→마을버스 환승(5, 5-1) 진접농협연평지점 하차 도보 200m', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1620, 'T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '커피 아로마가 가득한 힐링공간 스타벅스 다산지금점 입니다.', '1. 주차가능 2. 주차장위치 - 건물 지하주차장 이용 3. 주차가능대수 - 10대이상 4. 주차조건 - 매장이용 시 차량번호 등록(1시간 무료)', '경의중앙선 도농역 하차 2번출구에서 마을버스 38번, 76번 승차 후 금강펜트리움1차 하차

직행버스 1000번, 1006번 승차 후 금강펜트리움1차 하차
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1072, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P80@P90', 'WHCROAD', '커피향 가득하고 아늑한 매장, 편리하고 신속한 Drive Thru 서비스와 함께하는 동두천DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 전면 3. 주차가능대수 - 18대 (장애인 1대 포함) 대 4. 주차조건 - 무료(스타벅스 이용고객에 한해)', '1호선 지행역 4번출구 한국전력 방면 도보 8분거리에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1480, 'T04@T05@T08@T16@T17@T20@T30@T35@T36@P80@P90', 'WHCROAD', '정성을 다해 만든 한잔의 커피와 최고의 서비스, 그리고 아늑하고 편안한 공간을 제공해드리는 스타벅스 지행역점 입니다.', '1.주차불가', '1호선 지행역 2번출구 동두천 소방서 방면 도보 5분', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0830-2130', '0930-2130', '0830-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1723, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', NULL, '바쁜 일상 속 향기로운 휴식을 선물하는', '1.주차가능 2.주차장위치 - 입점건물 지하 3.주차가능대수 -50대 이상 4.주차조건-최초 1시간 무료 5.주차요금정산방법-파트너에게 요청', '지하철 7호선 부천시청역 1번출구 에서 도보로 15분
중동센트럴파크 푸르지오아파트 104동 (GATE 4)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (438, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '새로운 인연이 생길 것 같은 설레임이 가득한 상동점에서 제3의 공간의 즐거움이 시작됩니다.', '1.주차가능 2.건물지하주차 3.10대이상(혼잡) 4. 조건부무료(영수증1만원이상 1시간무료) 5. 파트너에게 주차권 요청', '지하철 7호선 상동역 4번출구 앞 위치 (서울여성병원 방향 롯데리아 옆)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (552, 'T04@T05@T08@T09@T16@T17@T20@T30@T32@T36@P80@P90', 'WHCROAD', '바쁜 일상 속 커피한잔의 여유, 부천점과 함께하세요!', '1.주차가능 2.매장뒷편 채림웨딩홀 주차타워 3.50대 이하 4.1만원 이상 구매시 2시간 무료주차 가능 5.파트가 직접등록해드림', '1호선 부천역 북부출구방향 로얄쇼핑 1,2층에 위치
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (439, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', NULL, '1. 주차가능 2. 주차장위치-입점건물 뒷편 3. 주차가능대수-10대 이하 4. 주차조건-조건부 무료(영수증지참시 1시간 무료) 5. 주차요금정산방법-파트너에게 요청 6. 기타-기계식 주차장 / SUV 차량 주차 불가', '1호선 송내역 북부 출구(2번출구) 왼편 루치올라 빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (89, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P40', 'WHCROAD', '향기로운 커피 한잔과 여유로운 시간을 즐기실 수 있는 여러분의 장소, 부천플레이도시점입니다.', '1. 주차가능 2. 주차장위치-입점건물 지하 3. 주차가능대수-50대 이상 4. 주차조건-조건부 무료(영수증지참시 2시간 무료) 5. 주차요금정산방법-파트너에게 요청', '지하철 1호선 부개역 2번 출구에서 시내버스(579, 79번) 이용. 
웅진플레이도시 하차. 웅진플레이도시 내 1층.

7호선 삼산체육관역 1번 출구에서 도보로 15분', 'N', '0830-2000', '0830-2000', '0830-2000', '0830-2000', '0830-2000', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (206, 'T04@T05@T08@T09@T16@T17@T30@T32@T34@T35@T36@P40@P80', 'WHCROAD', '부천 중동의 편안한 휴식처~ 스타벅스 현대중동점 좋은 분들과 함께 현대중동점에 오셔서 행복한 추억 만드세요.', '1.주차가능 2.현대백화점주차장 3.100대 이상 4.조건부 무료(1만원이상 1시간 무료) 5.파트너에게 요청', '현대백화점 유플렉스 지하1층', 'N', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (650, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@T36@P80', 'WHCROAD', '하얀 벽돌간판과 실내 테라스로 분위기 있는 매장', '주차불가', '7호선 부천시청역 4번 출구 도보 2분 거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (741, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '복잡한 도심속에서 여유를 찾을 수 있는 편안한 휴식공간 부천중동점 입니다.', '1.주차불가능', '신중동역 3번 출구에서 5분 거리 위치', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (900, 'T01@T04@T05@T07@T08@T09@T20@@T30@T32@T36@P80@P90', 'WHCROAD', '경인로의 휴게소 1, 2층의 넓은 카페와 Drive Thru가 있는 역곡역점으로 오세요.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-7대 4.주차조건-무료', '지하철 1호선 역곡역 1번출구 CGV 옆 205M', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (938, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '특별한 당신을 위한 차별화된 커피 한잔, 스타벅스 리저브 부천신중동역점입니다.', '1.주차 가능 2.주차장 위치- 입점 건물 지하주차장 3.주차가능대수- 50대 이하 4.주차조건- 조건부 무료(금액 무관 스타벅스 이용 시 1시간 무료, 초과 시 10분 당 1,000원) 5.주차요금 정산방법- 주차관리인에게 제공받은 입차권 파트너에게 제시하여 도장 받아 출차 시 제출(현금 결제만 가능)', '부천신중동역 4번출구로 직진, 도보 5분이내', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1035, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '3층 테라스에서 커피의 여유를 느낄 수 있는 부천중동DT점으로 오세요.', '1.주차 가능 2.주차장 위치- 매장측면 3.주차가능대수-(장애인 1대 포함)총 3대 4.주차조건- 무료(스타벅스 이용 시 사용 가능)', '신중동역 3번 출구 70-3번 버스 승차 후 ''중동시장,넘말''앞 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2300', '0700-2300', '0700-2200', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1117, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80@P90', 'WHCROAD', '부천 중동지역의 중심지,향기로운 커피 한잔의 여유가 있는 스타벅스 중동이마트점입니다.', '1. 주차가능 2. 주차장 위치 - 이마트 내 주차장 3.주차 가능대수 - 100대 이상 4. 주차조건 - 조건부 무료( 구매 영수증으로 1개당 2시간 무료,사이렌오더시 POS에서 바코드 영수증 출력요청 ) 5. 주차요금정산방법 - 이마트 무인정산기에 바코드 스캔', '지하철 7호선 부천시청역 2번출구로 나와 도보 1분 거리.', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1118, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '생활속의 여유를 즐기실 수 있는 뉴코아부천4층점입니다', '1.주차가능 2.뉴코아주차장 3.100대 이상 4.입차후 1시간 무료(1만원 이상 2시간) 5.파트너에게 요청', '지하철 7호선 상동역 1번출구에서 도보 6분

', 'N', '1030-2100', '1030-2100', '1000-2100', '1030-2100', '1030-2200', '1030-2200', '1030-2200', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1279, 'T01@T04@T05@@T08@T09@T16@T17@T20@T36@P20@P70@P80@P90', 'WHCROAD', '부천로의 새로운 휴식공간, 부천심곡DT점에서 스타벅스의 다양한 경험을 즐기세요', '1.주차가능 2.매장옆 주차장 3.12대 4.조건없음.', '부천역 3번출구 도보 7분
부천역 북부농협 정류장에서 661,606,75,8,50번 버스 승차후 대성병원정류장에서 하차', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2200', '0730-2200', '0730-2100', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1612, 'T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P90', 'WHCROAD', '도심속의 힐링 공간으로 스타벅스만의 특별한 경험을 선사하는 부천옥길점 입니다.', '1.주차가능 2.주차장위치-퀸즈파크옥길 주차장 3.주차가능대수-50대 이상 4. 주차조건-무료', '버스 19번, 60번, 10번 옥길단독2블럭 하차 도보 170미터 앞', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1537, 'T05@T08@T16@T17@T20@T30@T34@T36@P40', 'WHCROAD', '도심 속의 힐링 공간으로 친구, 가족, 연인과 스타필드부천점에서 행복한 추억을 만드세요.', '1.주차가능 2.주차장위치-스타필드시티부천 주차장 3.주차가능대수-50대이상 4. 주차조건-무료', '스타필드시티부천 1층', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1613, 'T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '도심속의 힐링 공간으로 스타벅스만의 특별한 경험을 선사하는 부천상동역점 입니다.', '1. 주차가능 2. 주차장위치 - 세이브존 지하 주차장 3. 주차가능대수 - 400대 이상 4. 주차조건 - 조건부 무료 (영수증 1만원이상 1시간30분 무료, 3만원이상 2시간30분 무료, 5만원이상 3시간30분 무료) 5. 주차요금정산방법 - 출차 시 영수증 제시', '7호선 상동역 8번출구 20미터 세이브존 1층 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1689, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '여유로운 커피한잔으로 행복과 즐거움을 함께 드리는 스타벅스 야탑역사거리점 입니다.', '1.주차불가능', '야탑역사거리에서 돌마초등학교방면 약 100m', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1698, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '분당 유일 스타벅스 커피를 신속하고 정확하게 차안에서 즐겨보세요', NULL, '수원 용인에서 판교 IC 서울로 이어지는 대왕판교로대로변 해누리 한정식 좌측 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (551, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '고객과 함께하는 즐겁고 편안한 판교HIPEX점에서 최상의 커피와 서비스를 즐기세요!', '1.주차가능 2.주차장위치-입점건물 지하 2층 3.주차가능대수 -10대이상 4.주차조건-2시간 무료 5.주차요금정산방법-파트너에게 요청', '신분당선 판교역 1번 출구에서 직진방향으로 약 600m,
판교HIPEX점 B동 1층에 위치', 'N', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '0700-1800', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (539, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@P80@P90', 'WHCROAD', '문화를 담아 나르는 한잔의 커피, 오리역삼거리점에서 감성을 나누세요!', '1. 주차 가능 2. 주차장 위치 : 스타벅스 입점 건물 뒷쪽 기계식 주차장 3. 주차장 가능 대수 : 30대 이상 4. 주차 조건 : 1시간 무료 주차 지원 (초과 10분당 500원) 5. 주차 요금 정산 방법 : 스타벅스 결제 내역 지참', '분당선 오리역 6번 출구 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (440, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T34@T36@P90', 'WHCROAD', '한국 IT 융합산업의 ‘심장’ 판교테크노밸리에 위치! 일상의 편안함과 휴식을 즐길수 있는 판교H스퀘어점에서 최상의 커피를 즐겨보세요!', '1.주차가능 2.주차장위치-입점건물 지하 2층 3.주차가능대수 -10대이상 4.주차조건-2시간 무료 5.주차요금정산방법-파트너에게 요청', 'SK케미컬버스정류소하차 신분당선 판교역 방면 100M 직진, 판교 H스퀘어 S동 입구 왼편에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '1000-1800', '1000-1800', '1000-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (393, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@P40', 'WHCROAD', '작은 공간에서 특별하면서도 편안한 휴식공간 , 쇼핑의 친구가 가득한 분당이마트점', '1. 주차 가능 2. 주차장 위치 : 이마트 주차장 3. 주차 가능 대수 : 100대 이상 4. 주차 조건 : 스타벅스 이용 시 2시간 무료 주차 가능 5. 주차 요금 정산 방법 : 영수증 하단 주차 바코드 사용 및 결제 시 주차 등록 요청', '정자동 불정사거리 이마트분당점 1층에 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (469, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '고객님을 향한 특별한 서비스, 아늑하고 조용한 정자아데나점에서 경험해 보세요.', '1. 주차 가능 2. 주차장 위치 : 아데나팰리스 지상 주차장 진입 시 ''상가'' 버튼 사용 주차 3. 주차 가능 대수 : 3대 이상 (주차 공간 협소) 4. 주차 조건 : 2시간 무료 주차 지원 (초과 10분당 500원) 5. 주차 요금 정산 방법 : 주문 시 주차 등록 요청 필요', '정자역 3번출구 미금역 방향으로 도보 10분거리, 아데나팰리스 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (296, 'T04@T05@@T08@T16@T17@T20@T21@T30@T32@T34@P80', 'WHCROAD', '편안함과 안락함이 함께하는 포근한 수내역점입니다.', '주차불가능', '수내역 2번출구 50m앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (476, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32', 'WHCROAD', '편안함이 가득한 분당정자점입니다.', '1. 주차 가능 2. 주차장 위치 : 두산파빌리온 지상 주차장 이용 가능 3. 주차 가능 대수 : 50대 이상 4. 1시간 무료 주차 지원 (초과 요금 주차 등록 시 10분당 500원, 미등록 시 10분당 1000원) 5. 주차 요금 정산 방법 : 주문 시 주차 등록 요청', '신분당선 정자역 5번 출구 수내방면으로 도보 10분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (343, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@P80', 'WHCROAD', '모던한 인테리어와 커피한잔의 여유를 느낄 수 있는 오리역점입니다.', '1. 주차 가능 2. 상가 건물 지하 주차장 3. 주차 가능 대수 : 1대 이상 (주차 공간 협소) 4. 주차 조건 : 2시간 무료 주차 지원 5. 주차 요금 정산 방법 : 스타벅스 결제 내역 지참', '오리역 3번출구로 나와 죽전방향으로 도보로 5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (384, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '서현역에서 가장 가깝고, 쾌적하며 아늑한 서현역점으로 오세요.', '1.주차가능 2.주차위치 - 건물내지하주차장 3. 주차가능대수 - 50대이상 4. 주차조건 - 금액상관없이 구매시 2시간 무료 (타입점매장과 중복불가) 5. 결제 후 파트너에게 주차할인등록요청', '지하철분당선 서현역 5번출구 AK프라자앞 코코빌딩 1층', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0830-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (519, 'T04@T05@@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '소중한 사람들과의 행복한 시간, 서현N타운점이 함께합니다.', '1.주차가능 2.주차장 위치 - 건물 내 지하 2층~4층 3. 주차가능대수 - 100대 이상 4. 주차조건 - 조건부 무료(1시간 무료) 5. 주차요금정산방법 - 1시간 이후 10분당 500원 지불', '분당선 서현역 4번출구, AK플라자 2번 게이트로 나와 메가박스 길 건너편 서현N타운 1층', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2130', '0730-2100', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (594, 'T04@T05@T08@T16@@T20@T30@P70', 'WHCROAD', '마음의 힐링을 하실 수 있는 분당서울대병원1층점입니다', '1. 주차 지원 불가 2. 주차 요금 : 병원 주차장 이용 시 지하 주차장 20분 무료 초과 10분당 500원, 지상 주차장 (장례식장 앞) 60분 무료 초과 10분당 500원, 주말 및 공휴일 60분 무료 초과 10분당 500원', '미금역 3번 출구에서 마을버스 7, 7-1, 2번 분당서울대학교병원 로비 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2000', '0900-2000', '0800-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (595, 'T04@T05@T07@T08@T16@T17@T20@T30@P70', 'WHCROAD', '분당 서울대병원의 힐링 캠프, 하늘정원으로 여러분을 초대합니다.', '1. 주차 지원 불가 2. 주차 요금 : 병원 주차장 이용 시 지하 주차장 20분 무료 초과 10분당 500원, 지상 주차장 (장례식장 앞) 60분 무료 초과 10분당 500원, 주말 및 공휴일 60분 무료 초과 10분당 500원', '미금역 3번 출구에서 마을버스 7, 7-1, 2번
분당서울대학교병원 로비 하차
', 'N', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0700-1900', '0800-1800', '0900-1800', '0800-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (582, 'T05@T07@T08@T09@T16@T17@T20@T30@T32@P80', 'WHCROAD', '커피향이 가득한 대나무 테라스, 그 속으로 여러분을 초대합니다.', '1. 주차 가능 2. 주차장 위치 : 건물 지하 1층 ~ 4층 주차장 3. 주차 가능 대수 : 5대 이상 (주차 공간 협소) 4. 주차 조건: 1시간 무료 주차 지원 (초과 10분당 500원) 5. 주차 요금 정산 방법 : 주문 시 주차 등록 요청 필요', '정자역 3번 출구에서 도보 5분(분당경찰서 맞은편)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (415, 'T05@T07@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '넓은 아늑한 공간, 편안한 좌석에 어울리는 정성스러운 커피 한잔! 야탑글라스점입니다.', '1.주차가능 2. 주차장 위치 - 입점 건물 지하1~3층 3. 주차가능대수 50대이상 4. 주차조건-영수증당 30분 무료(구매제한없음,타입점매장중복불가) 5. 주차요금정산 방법-파트너에게 등록 요청', '지하철 야탑역 2번 출구. 도보 3분거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2130', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (132, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '가족,친구,연인과 함께 편안하게 즐길 수 있는 서현미래에셋점입니다.', '1.주차가능 2. 주차장위치-건물지하 3. 주차가능대수-10대이상 4.주차조건-조건부유료(영수증당 1시간 무료,타입점매장중복불가) 5.정산방법-파트너에게 할인등록요청', '지하철 분당선 서현역 5번 출구에서 분당제생병원 방향 5분 거리. 풍림아이원 건물 맞은 편', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (53, 'T04@T05@T08@T16@T17@@T20@T21@T30@T36', 'WHCROAD', '분당 정자동 카페거리 중심에 숨어있는 진주, 스타벅스 정자상떼뷰점을 찾아보세요.', '1. 주차 불가능', '지하철 분당선 정자역 4번 출구에서 아름방송을 끼고 오른편, 5분 정도 직진. 현대 아이파크 2단지 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (63, 'T04@@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '분당의 오랜 친구... 따뜻하고 여유로운 수내점입니다.', '1.주차가능 2.주차장위치-입점건물 지하 1층 3.주차가능대수 -10대이상 4.주차조건-30분 무료 5.주차요금정산방법-30분 추가발생 시 출차 시 요금 정산', '지하철 분당선 수내역 4번 출구 좌측 트라펠리스 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (767, 'T04@T05@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '바쁜 일상 속 커피 한 잔의 여유를 즐길 수 있는 편안한 공간, 미금역점입니다.', '1. 주차 불가능', '분당선 미금역 7번 출구에서 250M 직진, 메디파크 빌딩 1층
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (117, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑 후 편안한 휴식과 즐거움을 동시에 드리는 뉴코아 야탑점에서 여유를 느껴 보세요.', '1. 주차가능 2. 주차장 위치 - NC백화점 지상2~5층, 지하 3~5층 3.주차가능대수 - 100대이상 4.주차조건 - 조건부무료(영수증당 2시간 무료) 5.주차요금정산방법 - 파트너에게 요청', '지하철 분당선 야탑역 3,4번 출구 NC백화점 1층
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (773, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '아름다운 뷰와 함께 스타벅스 리저브를 즐길 수 있는 분당구청점입니다.', '1. 주차가능 2. 주차장위치 - 나우병원 건물 지하1~지하4층 3. 주차가능대수 - 10대 이상 4. 주차조건 - 영수증 파트너에게 제시시 1시간 주차권 제공 5. 주차요금정산방법 - 무료주차 1시간 이후 10분당 500원(카드결제)', '서현역 4번 출구로 나와서 AK플라자 6번 GATE', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2130', '0800-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (229, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '가장 Hot한 사람들이 만드는 가장 따뜻한 커피, 그리고 이야기. 스타벅스 정자역점 입니다!', '1. 주차 가능 2. 주차 위치 : 매장 우측 세븐일레븐 편의점 안쪽 기계식 주차장 3. 주차 가능 대수 : 3대 이상 4. 주차 조건: 90분 무료 주차 지원 (초과 10분 당 1,000원 30분 당 2,000원) 5. 주차 요금 정산 방법 : 주문 시 영수증에 도장 확인 필요', '지하철 분당선 정자역 4번 출구에서 왼편 대각선 방향으로 도보2분. SK C&C 맞은 편 건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (720, 'T04@T05@T08@T16@T17@T20@T21@T22@T30@T36@P80@P90', 'WHCROAD', '지친 일상 속 작은 쉼터에서 여유를 즐겨보세요.', '주차불가능', '분당선 수내역 4번 출구 분당구청 방향 약 500M 앞 C코아빌딩 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (750, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P80', 'WHCROAD', '유럽의 여유와 진한 커피향, 미금역사거리점입니다.', '1. 주차 가능 2. 주차장 위치 : 엠코헤리츠 지하 주차장 3. 주차 가능 대수 : 50대 이상 4. 주차 조건 : 2시간 무료 주차 지원 5. 주차 요금 정산 방법 : 주문 시 결제 영수증 지참', '분당선 미금역 5번 출구 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (674, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '프랑스 거리의 향기, 커피의 향기가 느껴지는 판교역점입니다.', '1.주차가능 2.주차장위치-롯데마트건물 지하 3층 3.주차가능대수 -10대이상 4.주차조건-1만원이상 구매시 1시간 무료 5.주차요금정산방법-파트너에게 요청', '판교역 2번 출구 월드마크 방향 150m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (785, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '향긋한 커피와 따뜻한 서비스, 그리고 일상의 여유로움을 느낄 수 있는', '주차불가능', '분당선 서현역 1번 출구로 나와 분당 한화 오벨리스크 방향으로 250M 직진 도보 약 3분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (816, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P80@P90', 'WHCROAD', '나이트로 콜드브루가 맛 있는 도심속 쉼 터, 판교역로점 입니다.', '1.주차가능 2.주차장위치-입점건물 지하 2층 3.주차가능대수 -10대이상 4.주차조건-구매시 1시간 무료 5.주차요금정산방법- 당일구매 영수증에 인증 스탬프 → 1층 경비데스크에 차량번호 작성 후 1시간무료권 발급 → 지하1층 정산기에 정산 후 출차 가능', '판교역 1번출구로 나와 횡단보도 건너 직진 3분.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (922, 'T04@@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '기분 좋은 서비스와 즐거운 이야기가 가득한 판교봇들마을점에서 커피한잔의 여유를 즐겨보세요.', '1.주차가능 2.주차장위치-입점건물 지하 1층 3.주차가능대수 -5대 4.주차조건-1시간 무료 5.주차요금정산방법-출차시 영수증 제시', '판교 봇들마을 송현초등학교 사거리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (931, 'T04@T05@@T08@T09@T16@T17@T20@T21@T22@T30@T36@P90', 'WHCROAD', '판교테크노밸리 직장인들의 마음을 사로잡는 판교브릿지타워점에서 진정한 스타벅스의 서비스와 커피를 느껴보세요.', '1.주차가능 2.주차장위치-입점건물 지상 2층 3.주차가능대수 -10대이상 4.주차조건-1시간 무료 5.주차요금정산방법-파트너에게 요청', '판교역 4번출구에서 버스 환승 후 ''이노벨리'' 버스정류장에서 하차, 도보 2분 거리에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-1800', '0830-1800', '0830-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (961, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '서판교 유일의 스타벅스에서 커피한잔의 여유를 즐기세요-', '1.주차가능 2.주차장위치-입점건물 지하 1층 3.주차가능대수 -5대 4.주차조건-영수증 지참시 2시간 무료 5.주차요금정산방법-출차 시 영수증 제시', '운중동 주민센터 정류장 앞', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1043, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '주거, 쇼핑, 문화생활의 트렌드를 만들어갈 알파돔시티의 중심에서 커피한잔의 여유를 즐기세요.', '1.주차가능 2.주차장위치-입점건물 지하 2층 3.주차가능대수 -10대이상 4.주차조건-1만원이상 구매시 1시간 무료 5.주차요금정산방법-파트너에게 요청', '신분당선 판교역 3,4번출구로 나와 알파돔시티방향 300M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1087, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '기분 좋은 서비스와 즐거운 이야기, 커피 향이 가득한 정자동점에서 여유를 즐겨보세요.', '1. 주차 불가능', '정자동 한솔프라자 정류장 도보 1분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1189, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30', 'WHCROAD', '향긋한 커피와 따뜻한 서비스, 그리고 일상의 여유로움을 느낄 수 있는', '1. 주차가능 2. 주차장 위치 - 매장전면 3. 주차가능대수 - 10대 4. 주차조건 - 2시간 1,000원(이후 30분당 천원 ) 5. 주차요금정산방법 - 출차시 주차요원에게 직접 납부(현금or계좌이체)', '율동공원 번지점프 주차장 맞은편. 율동공원사거리에 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2130', '0800-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1219, 'T04@@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '넓고 쾌적한 분당 이매동 1호점에서 맛있는 커피와 기분 좋은 서비스를 느껴보세요', '1. 주차가능 2. 주차장 위치 - 매장후면 출입문 앞 3. 주차가능대수 - 4대 가능 4. 주차조건 - 영업시간 내 무료주차', '분당선 이매역 6번 출구에서 도보 6분, 경강선 이매역 7번 출구에서 도보 6분
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1313, 'T04@T05@T08@T09@T16@T17@T20@T21@T22@T30@T36@P60', 'WHCROAD', '쇼핑, 영화, 여행이 공존하는 공간 속에 스타벅스 문화를 경험해 보세요~', '1.주차가능 2.주차장위치- 홈플러스 주차장4-7층 3.주차가능대수-100대이상 4.주차조건- 5만원 이하 구매시 2시간 무료, 5만원 이상 구매시 종일 주차가능 5.주차요금정산방법-출차시 영수증 제시', '야탑역 4번 출구 (지하 연결) 분당 테마폴리스 1층 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0730-2100', '0730-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1391, 'T03@T05@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T36@T40@@P40@P90', 'WHCROAD', '스폐셜한 리저브커피를 제공하는 트렌디한 감성공간, 판교아비뉴프랑R점 입니다.', '1.주차가능 2.주차장위치-입점건물 지하 1층 3.주차가능대수 -10대이상 4.주차조건-1만원이상 구매시 1시간 무료 5.주차요금정산방법-파트너에게 요청', '지하철 신분당선, 경강선 판교역 1번 출구에서 우회전 하여 300M에 위치', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1479, 'T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P80@P90', 'WHCROAD', '고객과 함께하는 즐겁고 편안한 판교알파돔타워점에서 최상의 커피와 서비스를 즐기세요!', '1.주차가능 2.주차장위치-입점건물 지하 2층~6층 3.주차가능대수-50대이상 4.주차조건-1만원이상 구매시 1시간 무료 5.주차요금정산방법-파트너에게 요청', '판교역 3번 출구 알파돔타워1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1558, 'T05@T08@T09@T16@T17@T20@T21@T30@T34@T35@T36@P90', 'WHCROAD', '판교테크노벨리에서 스타벅스의 경험을 느껴보세요', '1.주차가능 2.주차장위치-입점건물 지하 2층 3.주차가능대수 -10대이상 4.주차조건-2시간 무료 5.주차요금정산방법-파트너에게 요청', '금토천교 정류장 도보 3분내 유스페이스몰1 B동 2층 광장 길가에 위치', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1032, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑과 함께하는 커피한잔의 여유를 즐기세요', '1. 주차가능 2. 주차장 위치-이마트 지하 주차장 3. 주차가능대수-50대 이상 4. 주차조건-영수증당 2시간 무료 5. 주차요금 정산 방법-영수증 꼬리표 제공', '성남이마트 2층 에스컬레이터 우측', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1280, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '위례신도시 두번째 스타벅스 매장, 아늑하고 온기가 가득한 스타벅스 성남위례점입니다.', '1. 주차가능 2. 주차장 위치 : 매장 측면 지하주차장 3. 주차가능대수 : 50대이상 4. 주차조건 - 무료 (3시간) 5. 주차요금정산방법 : 없음(3시간 무료)', '위례 오벨리스크 건물 1층에 위치(롯데시네마 건물)하여 있습니다.', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1628, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@T36@P40@P80@P90', 'WHCROAD', '즐거운 스타벅스 경험이 가득한 스타벅스 신흥역점 입니다.', '1.주차가능 2. 주차장 위치 - 입점건물 지하 2층 ~ 6층 3. 주차가능대수 - 60대 이상 4. 주요금정산방법 - 파트너에게 요청', '8호선 신흥역 3번출구 , 롯데시네마1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (847, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '성남에 위치한 ''단대오거리역점''에서 파트너들과 함께 기분 좋은 경험을 해보세요.', '주차불가능', '지하철 8호선 단대오거리역 3번출구에서 직진 200M', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1513, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '환영합니다. 내 집처럼 편안한 남한산성입구역점 입니다.', '1.주차가능 2.주차장 위치-건물 후면 기계식 지하 주차장 3.주차가능대수-5대이하 4.주차조건-영수증당 2시간(금액제한없음) 5.주차요금 정산방법-출차시 건물관리인 요청시 제시', '지하철 8호선 남한산성입구역 2번 출구 도보 2분', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (390, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '여가시간속의 쉼표가 되어주고 일상속에서 함께 할 수 있는 편안한 공간, 수원시청점입니다.', '1.주차 가능 2.주차장위치-입점 건물 1층 3.주차가능대수-10대 4.주차조건-스타벅스 이용시 1시간 무료(초과시 10분당 500원) 5.주차요금정산방법-POS에서 영수증 확인 후 주차권에 스타벅스1시간 도장찍어줌, 초과시간은 출차시 비용지불', '수원시청역 사거리 신한은행 옆 , 분당선 수원시청역 3,4번 출구에서 도보 1분', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (173, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P60', 'WHCROAD', '수원의 오아시스같은 제3의 공간, 행복한 커피와 밝은 파트너들이 있는 수원이마트입니다.', '1. 주차가능 2. 주차장 위치 - 이마트 주차동 1층 ~ 3층 3. 주차가능대수 - 100대 이상 4. 주차 조건 - 스타벅스 이용시 구매 금액에 상관 없이 2시간 무료 ( 이후 10분당 1,000원) , 이마트 영수증 중복(합산) 적용 가능 ( 최대 5시간 ) 5. 주차요금 정산방법 - 결제시 주차 영수증 요청, 차액은 무인정산기에서 카드 정산', '이마트와 패션 아일랜드 연결 통로 중간 지점에 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '-', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1247, 'T04@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '한분의 고객, 한잔의 음료에 정성을 다하는 스타벅스 수원권선점입니다.', '1. 주차가능 2. 주차장위치 - 아이파크시티 상가동 지하 1층 3. 주차가능대수 - 30대이상 4. 주차조건 - 구매시 1시간 무료 5. 주차요금정산방법 - 파트너에게 주차권 요청', '선일초등학교. 수원아이파크시티 정류장 하차 후 6분,
아이파크시티 5차 아비뉴 1층.', 'N', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '0900-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1264, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '서수원의 중심, 오목천동에서 드라이브 스루 이용이 가능한 수원권선DT점 입니다.', '1.주차가능 2.주차장위치-매장후면(음식점과 공동사용) 3.주차가능대수-(장애인1대포함)40대 4.주차조건-무료', '자차 이용 시 : 오목천교 사거리에서 천천IC 방향 350m 위치
대중교통 이용 시 : 수원역에서 999, 400-4, 1004 승차, 오목동태산 아파트 하차 (도보 1분 이내)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1370, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P90', NULL, '향기로운 커피한잔의 여유. 행복과 즐거움을 더해드리는 수원호매실점 입니다', '1.주차가능 2. 주차장위치-모아미래도2단지 지하주차장, 한쪽 파란주차라인 3. 주차가능대수-[장애인 1대포함] 20대,(전체상가 같이 이용) 4. 주차조건- 무료', '오시는길 
대중교통 이용 시 :
성균관대역: 62-1번, 99번,직행 7800번 버스 이용 모아미래도아파트,칠보마을5단지 하차 후 도보로 5분
수원역: 13-4번,9번,13번,9-2번 버스 이용 모아미래도아파트,칠보마을5단지 하차 후 도보로 5분 
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1619, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '향기로운 커피한잔의 여유. 행복과 즐거움을 더해드리는 수원세류DT점 입니다.', '1.주차가능 2.주차장 위치- 매장 전면 3.주차가능대수-(장애인1대 포함)12대 4.주차조건-무료', '매교역 3번출구에서 도보 9분 거리,
버스정류장 [유천교.세류1동주민센터입구]에서 도보 1분 거리', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1568, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T34@P90', 'WHCROAD', '행복과 즐거움을 더해드리는 수원금곡점 입니다', '1.주차가능 2.주차장 위치:지하1층~3층 3.주차가능대수:100대이상 4.주차조건:스타벅스이용고객에게 무조건 1시간 제공.(초과시 10분당 500원 부과) 5.주차요금 정산방법: 매장 파트너에게 요청, 추가 비용 출차 시 카드 결제', '- 자가용: 
수원시 권선구 금곡동 1114-1 리더스 빌딩 주차장 검색

- 버스: 
일반버스: 13-1, 13-4 , 15-1 , 19 , 99 ,123B , 123C
직행버스: 7790 , 7800
광역버스: M5443
홈플러스 서수원점 정거장에서 하차 후 도보 1분

', 'N', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (525, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '영통의 핫 플레이스! 최고의 커피에 걸맞는 최상의 서비스를 느낄 수 있는 수원영통점입니다.', '1. 주차가능 2. 건물 지하 주차장 3. 주차 가능 대수 -10대 이상 4. 주차조건-결제시 2시간 주차 등록 必 *금~일요일은 경마장 운영으로 주차장 이용이 어려우니 이점 양해바랍니다.', '느티나무 사거리 월드 마크 맞은편 훼미리타워 1층 위치, 분당선 영통역 8번 출구에서 도보 7분 소요', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (985, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '광교이마트 안의 특별한 분위기의 공간!!~ 광교이마트점입니다.', '1. 주차 가능 2. 주차장 위치-이마트 건물 내 주차나 지상주차장 사용 3. 주차 가능 대수- 10대 이상 4. 결제 시 이마트2시간 무료주차증 제공 이마트정산기계사용', '광교 태크노밸리 또는 광교 카페거리 정류장 하차후 도보 10분거리
수원 광교이마트 1층. 매장입구 바로 앞 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (606, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80@P90', 'WHCROAD', '영통과 신영통의 랜드마크! 망포역점 입니다.', '1. 주차가능 2. 주차장위치 - 지하 1,2층 3.주차가능대수 50대이상 4. 주차조건 - 구매시 2시간 무료 5. 주차방법 - 파트너에게 영수증에 도장 요청', '분당선 망포역 3번 출구 앞 1분거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (760, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P20@P90', 'WHCROAD', '젊음과 낭만이 가득한 경희대국제캠퍼스점입니다.', '1. 주차불가능', '영통역 3번 출구 도보로 677M (약 10분)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (819, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '즐거운쇼핑과 여가시간을 스타벅스 수원트레이더스점과 함께 하세요!', '1. 주차가능 2. 주차장위치 - 수원트레이더스점 지상주차장 이용 3. 주차방법 - 무료', '수원트레이더스점 1층', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (928, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P80', 'WHCROAD', '낭만과 여유가 넘치는 곳, 수원광교점에서 새로운 스타벅스를 경험하세요!', '1.주차 가능 2.주차장 위치-건물 지하 주차장 3.주차 가능대수- 50대 이상 4.주차 조건-구매금액 1만원 이상 1시간, 3만원 이상 2시간, 5만원 이상 3시간(1일 최대 4시간) 아브뉴프랑, 롯데마트 전매장 합산가능 5. 주차요금정산방법-파트너에게 요청', '신분당선 광교중앙역 3번출구 도보5분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1010, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T36@P90', 'WHCROAD', '아름답고 편안한 카페와 특수한 Drive Thru를 동시에 경험할 수 있는 수원망포DT로 오세요.', '1. 주차가능 2. 주차장 위치 - 매장옆 주차공간 3. 주차가능대수 -7대 (협소하여 자리없을수 있음) 4. 주차요금정산방법 - 없음', '1.위치: 이마트 트레이더스 건너편

2.버스: 영통방면 - 1, 5, 7
동탄방면 - 5-1, 7-1, 13-5
: 망포그대가프리미어, 쌍용아파트 정류장 하차

3.지하철: 망포역 4번 출구 수원터미널 방향 도보 7분거리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1461, 'T03@T05@T08@T16@T17@T20@T22@T26@T29@T30@T36@T40@P90', NULL, '특별한 경험을 선사하는 고품격 리저브 매장인 영통R점에서 리저브 원두를 다양한 추출기구로 만나보세요.', '1.주차 가능 2. 주차장 위치-건물내 지상/지하주차장 이용 3.주차 가능 대수-10대 이상 4.주차 조건-결제시 2시간 등록 必', '분당선 망포역 하차 1번 출구에서 도보 10분 이내 (668m)
자차 이용시 지하 주차장 이용 가능', 'N', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1431, 'T03@T05@T08@T16@T17@T20@T21@T22@T26@T29@T30@T35@T36@T40@P90', NULL, '안녕하세요, 스페셜한 리저브 커피를 다양한 추출기구로 제공하는 스타벅스 광교엘포트R점 입니다.', '1.주차 가능 2.주차장 위치-건물내 지하 주차장 3. 주차 가능대수- 50대 이상 4.주차 조건-결제 시 2시간 주차 등록 必 (영수증 지참하여 출차해주세요) 5. 주차요금정산방법-파트너에게 문의해주세요', NULL, 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1437, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80@P90', 'WHCROAD', '젊음과 낭만이 있는 경기대후문에 위치한 광교역점 입니다.', '1.주차 불가능', '신분당선 광교역(경기대역) 1번 출구 도보 3분 이내(87m)', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0830-2000', '0830-2000', '0830-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1455, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '커피 한 잔의 여유와 힐링을 느낄 수 있는 행복한 수원법조타운점입니다.', '1.주차 가능 2.주차장 위치-건물 지하 주차장 3.주차 가능대수-30대 이상 4.주차 조건-결제 시 2시간 등록 必 초과 시 10분당 500원 / 다른 점포와 중복 적용 불가 5. 주차요금정산방법-파트너에게 요청', '신분당선 상현역 2번 출구 도보 700m(9분거리)
광교휴먼시아 32단지정문 버스정류장 하차, 도보 181m(2분거리)', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1618, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P40', NULL, '탁월한 커피 경험과 최상의 고객 서비스를 경험할 수 있는 스타벅스 광교갤러리아9F점입니다.', '1.주차 가능 2.주차장 위치-백화점 지하 주차장 3.주차 가능 대수 -100대 이상 4.주차 조건- 매장 결제시 주차 등록 必(2만원당 1시간 무료) 5. 주차요금정산방법-파트너에게 요청', '신분당선 광교중앙역 하차 후 4번 출구 도보 10분
버스 이용 시 수원컨벤션센터 정류장 하차 후 광교갤러리아 9층', 'N', '1030-2100', '1030-2100', '1030-2100', '1030-2100', '1030-2200', '1030-2200', '1030-2100', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (585, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T34@T36@P20@P80@P90', 'WHCROAD', '고객과 소통하는 열정적인 파트너와 탁 트인 플로어가 있는 수원성균관대점에서 따듯한 커피향을 즐겨보세요.', '주차불가능', '수원성균관대역 2번 출구에서 성균관대 후문쪽으로 도보 3분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1337, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '향기로운 커피한잔의 여유. 행복과 즐거움을 더해드리는 수원천천점 입니다.', '주차불가', '[대중교통]
- 수원성균관대역 1번출구 건너편 율전성당에서 버스(27,62-1,92-1) 장안등기소,성우아파트 하차
', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0900-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1410, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P90', NULL, '도심 속 한 가운데 Drive Thru의 편리함과 커피 한잔의 여유로움을 느낄 수 있는 여기는, 북수원IC DT점입니다.', '1.주차 가능 2. 주차장위치-매장 전면 3. 주차 가능대수-장애인주차 포함 5대 이용 가능(협소하여 자리 없을수 있음) 4. 주차 조건-무료', '대중교통 이용 시: 
수원역-직행: 2007,3000,7770 일반: 900,310번 이용 후 수일중학교 하차 도보 2분

자차이용 시: 1번국도 북수원IC 서울방향에 위치
매장주소-경기도 수원시 장안구 파장동 469-4', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1542, 'T01@T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P90', 'WHCROAD', '바쁜 일상속 여유와 휴식을 느낄 수 있는 스타벅스 수원연무DT점입니다.', '1.주차 가능 2. 주차장 위치-매장 전면 3. 주차 가능 대수-7대(협소하여 자리 없을수 있음) 4. 주차 조건 -무료', '동수원IC에서 창룡문 방향 3km,
수원월드컵 경기장에서 1km', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (535, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T34@T36@P20@P90', 'WHCROAD', '아주대학교 정문앞 위치! 2층 전망이 좋은 매장, 아주대점입니다!', '1.주차 불가능', '아주대학교 정문앞 위치 
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (559, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80@P90', 'WHCROAD', '수원의 중심 상권에 위치해있으며 멋진 테라스가 있는 아늑한 매장, 수원인계점입니다.', '1. 주차가능 2. 주차장 위치 - 입점건물 지하 1층~7층 3. 주차가능대수- 30대 이상 4. 주차조건 - 조건부 무료(스타벅스 이용시 1시간 무료, 무료시간 이후 10분당 500원) 5. 주차요금정산방법 - 파트너에게 1시간 무료 등록 요청, 차액은 출차시 카드정산', '인계주공 사거리 시청방향 100m 앞
삼성화재 건물을 지나 세영빌딩 1층에 위치
', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (987, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T36@P90', 'WHCROAD', '여유로운 좌석과 도심속에서 즐기는 특별한 Drive Thru를 경험하세요.', '1. 주차 가능 2. 주차장 위치-건물 뒤쪽 주차장 3. 주차 가능 대수-5대 이상(협소하여 자리 없을수 있음) 4.결제 영수증으로 최대 2시간 무료 가능', '아주대 삼거리에서 동수원 사거리 방향 ''동수원 병원'' 좌측에 위치
노선버스 : 3, 4-1, 11-1, 63, 720-2 외 다수.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (49, 'T04@T05@T08@T09@T16@T17@T20@T30@T32@T34@T36@P60@P80@P90', 'WHCROAD', '고객과 파트너가 함께하는 즐거움이 있는곳, 편안함과 젊음이 공존하는 이 곳은 스타벅스 172호점, 수원매산점입니다.', '1. 주차가능 2. 주차장 위치 - 입점 건물 지하 1층 3. 주차가능 대수 - 10대 이상 4. 주차조건 - 유료(10분당 500원) 5. 주차요금 정산방법 - 출차시 정산 기계 사용 (카드 정산)', '수원역 8번출구 → 약80M 직진', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0830-2200', '0900-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (899, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '고품격 프리미엄 리저브 원두를 즐길 수 있는 수원이비스점 입니다.', '1.주차가능 2.주차장위치_호텔지하주차장 3.주차가능대수_60대이상 4.주차조건_스타벅스 이용고객 1시간 무료, 이후 10분당 500원 5. 주차요금정산방법_파트너에게 할인 등록 요청,차액은 출차시 카드 결제.', '지하철 분당선 수원시청역 2번출구로 나와서 도보 3분 거리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (828, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '1번 국도와 만나는 도심속 Drive Thru의 색다른 경험을 즐겨보세요.', '1.주차가능 2.주차장 위치- DT라인 진입 후 오른쪽 3.주차가능대수-(장애인1대포함)14대 4.주차조건- 조건부 무료( 스타벅스 지류영수증 2시간 무료, 무료시간 이후 10분당 500원) 5.주차요금정산방법- 출차 시 영수증 제시', 'KBS 수원센터에서 인계사거리 방향으로 약 350m 지점', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1321, 'T01@T04@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '향기로운 커피한잔의 여유. 행복과 즐거움을 더해드리는 수원KBS DT점 입니다.', '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - 12대 4. 주차조건 - 무료', '- 지하철 : 
분당선 수원시청역 2번 출구 벽산그랜드코아 정류장에서
202,202-1,3002,4000버스 승차 후 "삼성아파트"에서 하차
- 버스 : 
① 202,202-1,3002,4000 버스 승차 후 "삼성아파트"에서 하차
② 2-1,9,9-1,82-2,98 버스 승차 후 "동수원우체국,삼성래미안"에서 하차 후 
수원청소년 문화센터 방향으로 도보 5분
', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0830-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1610, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P90', 'WHCROAD', '아름다운 인테리어와 편리한 드라이브 스루 모두를 즐길수 있는 여기는 수원경수인계DT점 입니다.', '1.주차가능 2.주차장 위치 - 매장 전면 주차장 3.주차가능대수 - (장애인 1대 포함) 16대 4.주차조건 - 무료', '경수대로 동수원사거리에서 오산 방향, 한화생명빌딩 옆(300m)에 위치.
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1688, 'T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '시흥은계의 랜드마크 활기찬 시흥은계점입니다.', '1.주차가능 2.주차장 위치-건물지하 3.주차가능대수-30대이상 4.조건부 무료(1시간무료/건물내 타점포와 중복안됨) 5.주차요금정산방법-파트너에게 요청', '은계일반 상업지구 버스정류장 하차 시흥 골드웨이건물', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (562, 'T05@T08@T09@T16@T17@T20@T30@T32@T36@P90', 'WHCROAD', '항상 기분 좋은 제 3의 공간! 향기로운 커피로 스타벅스의 여유와 정취를 느껴보세요 -', '1.주차가능 2.주차장위치-건물지하 3.주차가능대수-15대 4.주차조건-조건부 무료(1만2천원이상 1시간권/1만 2천원이하 30분권/스타벅스카드 충전제외) 5.주차요금정산방법-파트너에게 요청', '시화이마트 옆 중심상가2길을 따라 도보 3분 거리 (약150m)
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1199, 'T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '커뮤니티형 쇼핑과 특별한 스타벅스 공간을 만끽하실 수 있는 시흥P.아울렛1F점입니다.', '1.주차가능 2.아울렛주차장 3.주차가능대수 500대이상 4.주차조건-무료', '정왕 I.C 옆 시흥프리미엄 아울렛 메인주차장 왼쪽 출입구에서 바로 만나실 수 있습니다.', 'N', '0930-2030', '0930-2030', '0930-2030', '0930-2030', '0930-2100', '0930-2100', '0930-2100', '0930-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1200, 'T03@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '책과 리저브 커피를 즐기실 수 있는 스타벅스 시흥P,아울렛3F점입니다.', '1.주차가능 2.아울렛주차장 3.주차가능대수 500대이상 4.주차조건-무료', '시흥 신세계프리미엄아울렛 3층, 북스리브로 매장과 연결', 'N', '1030-2030', '1030-2030', '1030-2030', '1030-2030', '1030-2100', '1030-2100', '1030-2100', '1030-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1281, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '향기로운 커피와 쾌적한 공간을 선사하는 스타벅스 시흥대야점입니다.', '1.주차불가능', '신천연합병원 정류장에서 롯데마트 방면 도보 3분', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1330, 'T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '스타벅스만의 커피 문화를 배우는 곳, 배곧신도시점입니다.', '1.주차가능 2.주차장위치-건물지하 3.주차가능대수-15대 4.주차조건-조건부무료(주차1시간 무료/건물 내 다른점포와 2시간 이상 이용 시 중복등록불가) 5.주차요금정산방법-파트너에게 요청', '로얄펠리스 버스정류장 하차, 배곧스타타워 도보 3분', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2200', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1631, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@T36@P90', 'WHCROAD', '따뜻한 커피와 친절한 파트너가 있는 스타벅스 시흥대야동점 입니다.', '1.주차불가능', '대야 청구 2차 아파트 정문 앞에 위치한 매장 입니다.', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1607, 'T05@T08@T16@T17@T20@T21@T30@T32@T34@T36', NULL, '당신의 커피여정이 시작되는 곳 배곧아브뉴프랑점입니다.', '1.주차가능 2.주차장위치-배곧아브뉴프랑센트럴 주차장 3.주차가능대수-30대 4.주차조건-1만2천원 이상 구매 시 1시간 지원(센트럴주자창만 무료/공영주차장 지원안됨)', '배곧중심상가 정류장 하차, 도보 3분', 'N', '0930-2130', '0930-2130', '0930-2130', '0930-2130', '0930-2130', '0930-2130', '0930-2130', '0930-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1609, 'T01@T04@T08@T16@T17@T20@T21@T30@T32@T34@P70@P80@P90', 'WHCROAD', 'Drive Thru를 통해 편안한 커피를 즐길 수 있는 시흥대야DT점 입니다.', '1.주차가능 2.주차장위치-건물뒷편 3.주차가능대수-4대 4.주차조건-무료', '서해선 신천역6번출구 도보 221m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (515, 'T02@T05@T07@T08@T09@T16@T17@T20@T30@T32@T36@P40', 'WHCROAD', '따뜻하고 향기로운 커피가 있는 휴식공간, 스타벅스 안산트레이더스점입니다.', '1.주차가능 2.주차장위치-이마트트레이더스 2층~5층 3.주차가능대수 -100대이상 4.주차조건- 무료', '안산역 1번 출구로 나와 육교 2개를 지나 보이는 안산트레이더스점 1층에 위치(도보 5분)10시50분 주문마감', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (79, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '즐거운 만남과 향긋한 커피가 있는 따뜻한 공간, 스타벅스 안산중앙역점은 고객님을 언제나 환영합니다.', '1.주차가능 2.주차장 위치-건물지하 3.주차가능대수-30대이상 4.조건부 무료(1시간무료) 5.주차요금정산방법-파트너에게 요청', '지하철 4호선 중앙역 1번 출구 맞은편(지하도 건너 맞은편)', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (665, 'T05@T08@T16@T17@T20@T21@T30@P80@P90', 'WHCROAD', '기분좋은 커피 향기가 가득한 안산중앙점 입니다.', '건물 내 지하 주차장 이용 가능, 최대 1시간 무료 (1사간 주차 도장 발급)', '롯데시네마 센트럴락점 옆 스타타워 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (691, 'T05@T08@T09@T16@T17@T20@T21@T30@T32', 'WHCROAD', '안산에서 가장 맛있는 커피와 언제나 기분 좋은 만남이 있는 안산문화광장점 입니다.', '1시간 무료 주차 (도장 발급)', 'NC백화점 고잔점에서 호수공원 방향으로 300M (도보 5분)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (857, 'T02@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '사랑하는 사람들과 향기로운 시간을 보낼 수 있는 곳, 스타벅스 고잔이마트점 입니다.', '이마트 주차장 유료(최초 30분 무료)/스타벅스 이용시 구매금액 상관없이 2시간 무료주차 제공/이마트 영수증 합산 가능(최대 6시간)/초과시 10분당 1,000원', '99-1, 98번 버스 이용, 고잔이마트 정류장 하자 후 도보 3분, 고잔이마트 내 1층', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1284, 'T05@T08@T16@T17@T20@T21@T30', 'WHCROAD', '기분좋은 만남과 향긋한 커피가 있는 스타벅스 안산상공회의소점입니다.', '당일 일만원 이상 구매하신 고객님에 한하여 주차권을 제공해드립니다.(1시간권 최대 1장 제공) /스타벅스 카드 충전 및 쿠폰 사용 금액 제외', '고잔역 1번 출구 안산고대병원 방향 500m 
안산고대병원 맞은 편 안산상공회의소 B관 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1392, 'T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '스타벅스 커피와 함께 하는 청량한 쉼터 안산고잔센트럴타워점입니다.', '주차 불가', '- 안산중앙역 1번 출구에서 도보 7분, 뉴코아 안산점 좌측 건물 1층 위치', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (668, 'T05@T08@T16@T17@T20@T21@T30@T36@P80', 'WHCROAD', '편안한 분위기와 공간을 함께 즐길 수 있는 안산 한대앞역점 입니다.', '주차 불가', '지하철 4호선 한대앞역 2번 출구로 나와 신호건너 직진 3분 거리', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (660, 'T05@T08@T09@T16@T17@T20@T21@T30@P20', 'WHCROAD', '안녕하세요. 언제나 행복이 가득한 스타벅스 안산한양대점 입니다.', '건물 뒷편 5대 가능(주차 공간 협소)', '안산한양대(에리카) 캠퍼스 정문 좌측 방향', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1701, 'T03@T04@T08@T09@T16@T17@T20@T26@T29@T30@T32@T34@T35@T37@T39@T41@T42@P40@P90', 'WHCROAD', '스타벅스 만의 특별한 경험과 프리미엄 커피 한 잔의 여유를 제공해드리는 스타필드안성R점입니다.', '1.주차가능 2.주차장위치 - 입점건물 지하 3.주차가능수 :10대이상 4.주차조건 : 출차시 영수증제시및 정산', '스타필드안성 1층 정문으로 들어오시면 바로 오른쪽에 위치하고 있습니다.', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1529, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P90', 'WHCROAD', 'Drive Thru의 편리함과 커피 한잔의 여유로움을 느낄 수 있는 여기는, 안성공도DT점입니다.', '1.주차가능 2.매장후면주차. 3.장애인포함14대, 4,무료,5.정산X', '롯데마트 안성점 맞은편에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1444, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P20@P90', 'WHCROAD', 'Drive Thru의 편리함과 커피 한잔의 여유로움을 느낄 수 있는 여기는, 안성석정DT점입니다.', '1.주차가능 2.매장후면주차. 3.장애인포함10대, 4,무료,5.정산X', '대중교통 이용시 : [안성시내 버스] 1번, 5-5번, 7번, 10-8번, 22-1번, 50번 등 한경대학교(정문)행 버스 이용, 한경대학교 정문 하차 후 도보 3분
자차 이용시 : 스타벅스 안성석정DT 주차장 이용', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (579, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80@P90', NULL, '아름다운 뷰를 가진 커피향 가득한 인덕원점으로 오세요.', '1.주차가능 2.주차장 위치-입점건물 지하주차장 3.주차가능대수-30대 이상 4.주차조건-조건부 무료(당일 영수증 지참 시 2시간 무료, 초과 시 시간 당 2천원) 5.주차요금정산방법-출차 시 당일 영수증 제시', '인덕원역 4번 출구 도보 5분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (395, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P80', 'WHCROAD', '안양 도심 속 젊음의 거리, 범계 로데오점으로 오세요!', '1.주차불가능', '지하철 4호선 범계역 2번 출구, 중앙로 직진 맨끝 왼쪽편에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (51, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '전면 통유리의 따스함과 은은한 커피향이 조화로운 평촌아크로점 입니다.', '1.주차가능 2.주차장 위치-입점건물 주차장 3.주차가능대수-30대 이상 4.주차조건-조건부 무료(당일 영수증 지참 시 2시간 무료, 초과 시 30분 당 1천5백원) 5.주차요금정산방법-파트너에게 요청 후 초과요금은 출차 시 신용카드로 정산', '지하철 4호선 범계역 2번 출구에서 400m 
(안양시청 맞은편 평촌대림아크로타워 상가동 2층)

', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (954, 'T01@T04@T05@@T08@T09@T16@T17@T20@T30@@T32@T36', 'WHCROAD', '차별화된 Drive Thru 서비스와 쾌적한 카페 공간까지 모두 경험할 수 있는 안양비산DT점입니다.', '1.주차 가능 2.주차장 위치- DT매장 후면 3.주차가능대수- 11대 (장애인1대 포함) 4.주차조건- 매장 영업시간 내 이용 가능 5.발렛파킹 불가', '경수대로 비산사거리에서 수원방면으로 약 1km 직진', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (932, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '안양의 첫 리저브 매장, 평촌역사거리점에서 프리미엄 커피와 함께 여유를 느껴보세요', '1.주차가능 2.주차장 위치-입점건물 지하주차장 3.주차가능대수-30대 이상 4.주차조건-조건부 무료(당일 영수증 지참 시 2시간 무료, 초과 시 10분 당 500원) 5.주차요금정산방법-출차 시 당일 영수증 제시', '지하철 4호선 평촌역 3번출구에서 도보 2분 거리 (100M)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (908, 'T04@T05@T07@T08@T16@T17@T20@T21@T22@T30@T36@P80@P90', 'WHCROAD', '평촌의 새로운 휴식 공간! 평촌로데오점에서 진한 커피와 함께 여유를 즐기세요', '1.주차불가능', '지하철 4호선 평촌역 2번출구로 나와 범계역 방면 도보로 6분 거리 (380m)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1111, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '새로운 인테리어로 편안한 공간을 즐길 수 있는 평촌호계점 입니다.', '1.주차불가능', '지하철 4호선 범계역 4번출구(뉴코아 아울렛 앞) 마을버스 03,03-1,5-2,10-2 승차 후 학원가(먹자골목)하차 맥도날드에서 150M 지점', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1104, 'T01@T04@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '안양 도심속에서 활력소가 되는 안양호계DT점 입니다.', '1.주차 가능 2.주차장 위치- DT매장 측면 3.주차가능대수- 5대 4.주차조건- 매장 영업시간 내 이용 가능 5.발렛파킹 불가', '- 호계아크로리버 정류장 하차시 호계 삼거리 방향 1분거리
- 호계삼거리 또는 유한양행 정류장 하차시 호계아크로리버 방향으로 6~10분거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1294, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P80', 'WHCROAD', '언제나 밝은 미소와 따뜻함이 있는 범계역점 입니다.', '1.주차가능 2.주차장 위치-롯데백화점 평촌점 지하주차장/식품관 주차장 3.주차가능대수-50대 이상 4.주차조건-평일 조건부 무료(1시간 무료, 초과 시 10분 당 1천원, 30분 초과 시 최초 30분 포함하여 정산), 주말/공휴일 유료(시간 당 6천원) 5.주차요금정산방법-파트너에게 요청 6.특이사항-백화점 주차장 시간당 6천원/식품관 주차장 시간당 3천원', '지하철 4호선 범계역 8번출구 도보 1분 거리 
롯데백화점 평촌점 G,스퀘어 오피스동 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1385, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', NULL, '도심속의 편안함과 쾌적함을 드리는 안양운동장사거리DT점 입니다.', '1.주차 가능 2.주차장 위치- DT매장 측면 3.주차가능대수- 4대 (장애인1대 포함) 4.주차조건- 매장 영업시간 내 이용 가능 5.발렛파킹 불가', '- 안양 종합 운동장 "운곡 공원" 맞은편 
- 평촌 우리 병원 맞은편 
- 운동장사거리에서 안양방면으로 약 200M이내 
- 인덕원역 8번출구 방면 버스 이동 20분 내외 ( 8-1, 51, 11-2,11-3,8)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1648, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P80@P90', 'WHCROAD', '바쁜 일상 속 커피 한 잔의 여유를 느낄 수 있는 새로운 휴식공간, 스타벅스 안양범계점입니다.', '1.주차가능 2.주차장 위치-입전건물 지하주차장 3.주차가능대수-10대 이상 4.주차조건-조건부 무료(주차증 도장 확인 시 1시간 무료, 초과 시 30분 당 1천원) 5.주차요금정산방법-파트너에게 요청 후 출차 시 주차증 제시', '지하철 4호선 범계역 1번 출구에서 도보로 5분 소요', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1603, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T36@P90', 'WHCROAD', 'Drive Thru의 빠른 서비스와 카페 공간에서의 아늑함을 동시에 즐길 수 있는 평촌역DT점입니다.', '1.주차가능 2.주차장 위치-매장 전면 3.주차가능대수-(장애인 1대 포함)17대 4.주차조건-조건부 무료(당일 영수증 지참 시 2시간 무료, 초과 시 30분 당 2천원, 회차 30분 무료) 5.주차요금정산방법-파트너에게 요청 후 초과요금은 차단기 신용카드 결제 6.특이사항-영수증 당 최대 2대까지만 지원, 이중주차 시 지원불가', '4호선 평촌역 3번 출구에서 794m (도보 11분 소요)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1611, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36', 'WHCROAD', '언제나 향기로운 커피와 함께 바쁜 일상 속 여유로움을 느낄 수 있는 호계지식산업센터점입니다.', '1.주차 가능 2.주차장 위치- 건물 내 주차 3.주차가능대수- 200대 이상 4.주차조건- 2시간 무료주차 (2시간 초과 시 10분당 500원) 5.주차요금 정산방법- 파트너에게 요청', '명학역 1번 출구에서 64번, 65번 버스 승차 후 ''LS타워'' 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (192, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80', NULL, '고객께서 원하는 즐거움과 여유로움을 동시에 만족시켜 드릴 수 있는 스타벅스 안양일번가점. 놀러오세요^^', '1.주차 불가능', '안양역 1번 출구에서 명학역 방면으로 약 300m 직진. 도보 5분거리.
', 'N', '1100-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2200', '0900-2200', '0900-2130', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (945, 'T01@T04@T07@T08@T09@T16@T17@T20@T36@P80', 'WHCROAD', '안양의 첫 DT 매장~ 커피 한잔의 여유를 빠르고 편안하게 즐기실 수 있는 안양석수DT점입니다.', '1.주차 가능 2.주차장 위치- DT매장 후면 3.주차가능대수- 13대 (장애인1대 포함) 4.주차조건- 매장 영업시간 내 이용 가능 5.발렛파킹 불가', '지하철 1호선 석수역 1번출구에서 안양 방향으로 500m (도보 약 8분)', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (980, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P80', NULL, '젊음이 넘치는 안양! 스타벅스 안양역점에서 달콤하고 향긋한 추억을 만들어보세요', '1.주차 불가능', '지하철 1호선 안양역 1번 출구 맞은편, 시외버스 터미널 방향 도보 3분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1654, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '바쁜 업무와 학업, 일상 속에서 잠시 여유를 느끼며 향기로운 커피를 마시며 즐길 수 있는 명학역점입니다.', '1. 주차 가능 2. 주차장 위치- 건물 내 주차 3. 주차가능대수- 100대 이상 4. 주차조건- 매장 이용 고객 무료 (추후 변경 예정)', '- 서울 강남 구로 및 군포 안양에서 이동할 수 있는 지선 및 간선버스 이용
- 지하철 1호선 명학역 1번 출구에서 성결대학교 방면으로 300m (도보 5분 정도 소요)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1562, 'T03@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T32@T34@T36@T40@P80', 'WHCROAD', '안양역 엔터식스의 젊은 에너지와 스타벅스 리저브 커피의 향이 공존하는 휴식 공간 안양역R점 입니다.', '1.주차 가능 2.주차장 위치- 엔터식스 주차장 3.주차가능대수- 100대 이상 4.주차조건- 1만원 이상 1시간 무료주차 5.주차요금 정산방법- 파트너에게 요청', '1호선 안양역 1번 출구 오른편 (관악역 방향) 50m 도보 3분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (965, 'T04@T05@T07@T08@T09@T16@T17@@T20@T21@T30@T36@P90', 'WHCROAD', '양주시의 첫번쩨 제3의 공간 스타벅스 양주고읍점입니다.', '주차 불가능', '이마트 에브리데이 광사동점에서 건너편으로 90M직진 필립프라자 1층', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1397, 'T01@T04@T05@T08@T09@T16@T17@T20@P90', 'WHCROAD', '안녕하세요, 싱그럽고 고즈넉한 자연 속에서 즐기는 커피 한 잔의 여유를 양주광사DT점에서 즐겨보세요.', '1. 주차가능 2. 주차장위치 - 매장 전면 3. 주차가능대수 - 18대 4. 주차조건 - 무료(스타벅스 이용고객에 한해)', '- 양주고읍방향 서반창(삽사동) 버스 정류소 앞 
- 기아자동차 양주지점 옆', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1651, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P90', 'WHCROAD', '고객님의 편안한 휴식처가 되어드리는 스타벅스 양주고읍DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 측면 3. 주차가능대수 - 44대(장애인 2대 포함) 4. 주차조건 - 무료(스타벅스이용 구객 한해)', '- 버스로 한양수자인1단지 하차 후 도보로 500m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1478, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P80@P90', 'WHCROAD', '안녕하세요. 쾌적한 공간 속에서 향긋한 커피와 신속한 DRIVE THRU 서비스를 양주덕정역DT점에서 만나보세요.', '1. 주차가능 2. 주차장위치 - 매장 후면 3. 주차가능대수 - 18대 4.. 주차조건 - 무료(스타벅스 이용고객에 한해)', '대중교통 이용 시, 전철 1호선 덕정역 1번 출구에서 봉우재 사거리 방향으로 650m (도보 10분 소요)
자차 이용 시, 동두천 방향 KB국민은행 덕정지점 옆', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1585, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P90', 'WHCROAD', '안녕하세요! 북한산의 싱그러운 자연과 즐길거리가 넘치는 스타벅스 양주송추DT점입니다.', '1. 주차가능 2. 주차장위치 - 매장 측면 3. 주차가능대수 - 11대 4. 주차조건 - 무료(스타벅스 이용고객에 한해)', '송추IC에서 의정부 방향 600m 진출 (송추가마골 본관 맞은편)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1515, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '한 잔의 정성스런 음료와 서비스를 쾌적하고 편안한 공간에서 즐길 수 있는 스타벅스 양주옥정타운점입니다.', '1. 주차가능 2. 주차장위치 - 입점건물지하 1층 3. 주차가능대수 - 30대 이상 4. 주차조건 - 스타벅스 구매 고객 최대 2시간 무료( 초과시 30분당 1,000원 부과) 5. 주차요금방법 - 파트너에게 요청', '· 대중교통
1호선 양주역 2번 출구 버스 정류장(39-439)에서 77번/90번/81-2번 승차 ― e편한세상11단지 하차 ― 도보 6분(500m)
', 'N', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1676, 'T01@T03@T05@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T32@T34@T35@T42@P60@P90', 'WHCROAD', '갓구운 빵과 리저브 커피를 남한강뷰와 함께 즐길 수 있는 스타벅스 더양평DTR점 입니다.', '1.주차가능 2. 주차장위치-매장주차장 3.주차가능대수-자동차 100대 / 자전거 주차-10대 4.주차조건-무료', '양근대교 건너기 전 단독건물 / 양평군립미술관 맞은편
양평군 양평읍 양근로 76', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1406, 'T04@T05@T08@T16@T17@T20@T30@T35@T36@P60@P90', NULL, '물 맑은 양평의 1호점, 싱그러운 자연속의 휴식처 스타벅스 경기양평점 입니다.', '1.주차가능 2.매장전용주차장 3. 17대가능(장애인주차장1대) 4.무료', '경의중앙선 양평역 2번출구 도보 15분 
양평시외버스터미널 옆', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (66, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@P40@P90', 'WHCROAD', '테라스가 아름다운 여주P.아울렛점. 진정한 프리미엄을 누리고 싶다면 여주P.아울렛점으로 오세요~', '1.주차가능 2.아울렛주차장 3. 100대이상 4.현재무료운영중 5.현재무료운영중', '영동고속도로에서 여주I.C 톨게이트 진출, 우회전 후 첫 신호등에서 좌회전. 

강남고속터미널/동서울터미널에서 고속버스 이용

지하철 경강선 여주역하차 1,2번출구 여주역-프리미엄아울렛 순환버스 이용', 'N', '0930-2030', '0930-2030', '0930-2030', '0930-2030', '0930-2100', '0930-2100', '0930-2100', '0930-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (20, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@P40@P90', 'WHCROAD', '작은매장, 큰감동! 쇼핑의 피로를 풀어드리는 휴식공간, 여주P.아울렛입구점입니다.', '1.주차가능 2.아울렛주차장 3. 100대이상 4.현재무료운영중 5.현재무료운영중', '여주I.C에서 우회전 후 첫 신호등에서 좌회전. 강남고속터미널/동서울터미널에서 버스 이용. 지하철 경강선 여주역 하차 1,2번 출구 여주역 - 프리미엄아울렛 순환버스 이용', 'N', '1030-2030', '1030-2030', '1030-2030', '1030-2030', '1030-2100', '1030-2100', '1030-2100', '1030-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1424, 'T01@T04@T05@T08@T09@T16@T17@T20@P20@P90', NULL, 'Drive Thru 의 편리한 이용과 진정한 제 3의 공간을 느낄 수 있는 여주 DT 점 입니다.', '1.주차가능 2.매장 후면 스타벅스 전용 주차장 3. 19대(장애인 전용 포함) 4.스타벅스 전용주차장으로 무료이용 가능 5.무료', '지하철 경강선 여주역에서 902,902-1,902-2 버스로 환승 후 여주대학교 정문 하차, 도보 2분
자차이용시: 여주IC에서 여주대 방향 1.84km 직진 후 유턴 242m직진', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (893, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P60@P80@P90', 'WHCROAD', '고객님의 생활 가까이에서 밝은 미소, 향기 가득한 커피를 약속드립니다. 오산시청점에서 생활의 여유를 만끽하세요.', '주차불가', '오산 롯데마트 사거리에서 오산시청 방면 50M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (926, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T34@T36@P90', 'WHCROAD', '오산IC 초입에 위치한 오산 최초의 Drive Thru 매장으로 차를 타고 보다 편리하게 스타벅스를 경험해보세요.', '1.주차가능 2.주차위치: DT 진입 시 주차장 3.주차가능대수 무료 (20대 가능) 4.주차조건:무료', '운암초등학교 맞은편 오산IC 진입 직전,
매장 후면에 SK 주유소 위치 

', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1423, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', 'Drive Thru의 편리함과 커피 한잔의 여유로움을 느낄 수 있는 여기는, 오산갈곶DT점입니다.', '1.주차가능 2.주차위치: 건물 주차장 3.주차대수: 10대이상 4.주차조건: 무료', '대중교통 이용시 : 오산역 - 오산역,오산터미널 정류장 승차 (301,2-2,2,300번 버스) - 원영화남아파트 정류장 하차
자차 이용시 : 스타벅스 오산갈곶DT 주차장 이용
', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1636, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35', NULL, '세교의 새로운 휴식처 스타벅스에서 커피 한잔의 여유를 느껴보세요.', '1.주차가능 2.주차위치:건물 지하1~2층 3.주차대수: 20대 이상 4.주차조건: 무료', '대중교통 이용시:
1호선 세마역에서 버스(202,7번) 승차 후 세교중심상가 앞 하차
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1580, 'T01@T04@T08@T09@T16@T17@T20@T34@P90', NULL, '북오산 IC DT점 입니다.', '1.주차가능 2.주차위치:건물주차장 3.주차대수: 20대이상 4.주차조건:무료', '일반버스: 9번, 201번, 포스코더샵정문, 삼성본병원 하차 후 도보 8분~10분(약 600m)
지하철: 1호선 서동탄역 2번 출구 도보 17분 (1.2km)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1684, 'T02@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P40', NULL, '커피와 함께 특별한 스타벅스 경험을 전달드립니다. 안녕하세요 스타벅스 동백이마트점 입니다.', '1. 주차가능 2. 주차장 위치-이마트 3~5층 3. 주차가능대수-100대이상 4. 주차조건-조건부 무료(주차 영수증 2시간 무료) 5. 주차요금정산방법-결제 후 제공되는 영수증꼬리표이용하여 주차정산등록', '동백 쥬네브썬월드 빌딩 1층 에 위치해 있습니다.', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1667, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '편리한 Drive Thru와 함께 쾌적한 공간에서 커피 한 잔의 여유를 느낄 수 있는 스타벅스 용인보정DT점입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수-22대 4. 주차조건-스타벅스 이용고객 무료', '1) 분당수서간고속도로 구성방향 오른쪽위치 (죽전역인근) 
2) 죽전역에서 분당수서간고속도로 진입 삼거리에서 좌회전(구성방향)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (331, 'T04@@T07@T08@T09@T16@T17@T20@T21@T30@P20@P80', 'WHCROAD', 'Mountain View를 자랑하는 강남대점입니다. 아늑한 인테리어와 파트너들의 정성이 담겨있는 커피를 경험해보세요.', '1.주차가능 2.주차장위치-건물 지하 3.주차가능대수-100대 이상 4.주차조건-기본 2시간 무료/초과시 10분당 1,000원 / 운영시간 : 10:00~23:00', '용인 경전철 강남대역 맞은 편 강남&플러스 상가 1층입니다.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (354, 'T02@T04@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '이마트 트레이더스 1호점에 입점한 스타벅스! 커피향과 친절한 파트너가 맞이하는 트레이더스점입니다.', '1. 주차가능 2. 주차장 위치-트레이더스 지하 3. 주차가능대수-100대이상 4. 주차조건-무료', '구성역과 보정역 사이, 트레이더스 구성점', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (584, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P80', 'WHCROAD', '죽전 카페거리에 인접한 용인보정점에서 커피 한 잔의 여유를 느껴보세요.', '1. 주차가능 2. 주차장 위치-누리에뜰상가건물 지하 2~3층 3. 주차가능대수-50대이상 4. 주차조건-매장이용시 3시간무료(이 후 30분당 1,000원) 5. 주차요금정산방법-파트너에게 요청', '분당선 죽전역에서 도보 10분거리,죽전누리에뜰상가 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (718, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '수도권 남부 최초의 Drive Thru 매장, 수원IC DT점입니다.', '1.주차 가능 2. 주차장 위치-매장 측면 주차장 이용 3. 주차 가능 대수 - 6대(협소하여 자리 없을수 있음) 4. 주차 조건 -무료', '신갈 오거리에서 수원 방향 ''수원 프리미엄 아울렛'' 정유소 맞은편
노선버스: 66번,720-1번, 27번외 다수
', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (780, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P80', 'WHCROAD', '향긋한 커피와 다정한 파트너들이 고객님을 기다리는 용인기흥구청입니다.', '1. 주차가능 2,,주차장위치-건물주차장 3.주차가능대수-6대 4.주차조건-무료', '분당선 신갈역 3번 출구로 나와 기흥더샵 프라임뷰 아파트 방향으로 530M 도보 8분', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (982, 'T01@T04@T07@T08@T09@T16@T17@T20@@T36', 'WHCROAD', '용인의 중심 마북동에서 드라이브 스루 이용이 가능한 용인마북DT점입니다.', '매장뒷편 주차장 이용 가능', '자차 이용 시 : 마북삼거리에서 신갈 방향 300m 위치
대중교통 이용 시 : 구성역(분당선) 하차, 마을버스(80, 36번) 경기도여성능력개발센터 하차 (약 도보 1분)
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1066, 'T01@T04@T05@T07@T08@T09@T16@T17@T20', 'WHCROAD', 'Drive Thru 의 편리한 이용과 진정한 제 3의 공간을 느낄 수 있는 용인동백 DT 점 입니다.', '1.주차가능 2.주차장위치-매장 옆 전용 주차장 3.주차가능대수- 7대 4.주차조건-무료', '에버라인 어정역 1번 출구 좌측 방향 도보 3분 소요.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1387, 'T01@T04@T05@T08@T09@T16@T17@T20@P90', NULL, '관광과 놀이를 즐길수 있는 용인 보라동에 위치한 스타벅스 용인보라DT 점입니다.', '1.주차가능 2.주차장위치-매장 앞 전용 주차장 3.주차가능대수- 13대 4.주차조건-무료', '- 정류장 민속촌 입구도보 2분 거리 
- 상갈역에서 2km 이내 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1634, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P40', NULL, '커피와 가구를 한공간에 즐기는 특별한 경험 스타벅스 용인고매동점 입니다.', '1. 주차가능 2. 주차장위치 - 기흥리빙파워센터 지하, 지상주차장 이용 3. 주차대수 -100대이상 4. 주차조건 - 무료', '기흥 리빙파워센터 B1 , 까사미아, 삼성전자 옆', 'N', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '1000-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1498, 'T03@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T35@T40@P40@P80', 'WHCROAD', '고품격 스타벅스 리저브 커피, 싱그러운 티바나 티를 함께 즐기실 수 있는 스타벅스 기흥역AK R점 입니다.', '1. 주차가능 2.주차장위치-건물 지하 주차장 이용 3.주차가능대수-100대 이상 4.주차조건-매장이용고객 2시간 무료 5.주차요금정산방법-파트너에게 요청', '기흥역 3번,4번출구 
기흥AK& 1층 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1644, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '아늑한 분위기와 커피 한 잔의 힐링이 있는 용인언남점입니다.', '1. 주차가능 2. 주차장 위치-매장 후면 3. 주차가능 대수-22대 4. 주차조건-스타벅스 이용고객 무료', '언남동 동부아파트 건너편 위치 (롯데슈퍼와 한국마트 사이)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0700-2200', '0700-2100', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1486, 'T01@T04@T05@T08@T09@T16@T17@T20@T21@T36@P90', 'WHCROAD', '편리한 Drive Thru와 함께 아늑한 공간에서 커피한잔의 여유를 느낄 수 있는 용인상하DT점 입니다.', '1.주차가능 2.주차장위치-매장 전용 주차장 3.주차가능대수- 16대 4.주차조건-무료', '중부대로 이천에서 용인방향, 쌍용/진흥 루벤스 아파트 맞은편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1617, 'T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P70', 'WHCROAD', '용인세브란스병원 내 아늑한 쉼터, 커피한 잔의 힐링을 얻을 수 있는 용인세브란스병원점입니다.', '1. 주차가능 2.주차장위치-건물 지하/ 외곽 3.주차가능대수-100대이상 4.주차조건-최초30분 무료, 30분 이후 1,500원(10분당 500원) 5.주차요금정산방법-병원로비와 엘레베이터앞 사전정산기 이용', '에버라인 동백역 3번출구 도보 10여분
용인세브란스병원 1층 외래진료접수처 우측 위치', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-1700', '0800-1600', '0700-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (501, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '수지의 휴식처 스타벅스 수지풍덕천점에서 커피 한잔의 여유를 느껴보세요.', '1. 주차 불가능', '신분당선 수지구청역 2번 출구 SC 은행 건물 뒷편
수지우체국 후문 건너편 전방 80m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (350, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑도 하고 특별한 스타벅스 경험도 함께! 언제나 밝은 미소를 선사합니다. 수지이마트로 오세요.', '1. 주차가능 2. 주차장 위치-이마트 3~5층 3. 주차가능대수-100대이상 4. 주차조건-조건부 무료(주차 영수증 2시간 무료) 5. 주차요금정산방법-결제 후 제공되는 영수증꼬리표이용하여 주차정산등록', '수지구 신봉동에 위치한 수지이마트 1층에 위치하고 있습니다.', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (137, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T36@P40@P80', 'WHCROAD', '행복한 쇼핑과 정성스런 커피의 만남. 신세계 경기점 4층으로 오세요~', '1. 주차가능 2. 주차장 위치-신세계백화점 지하 및 주차동 3. 주차가능대수-100대이상 4. 주차조건-조건부 무료(백화점 주차 기준 적용) 5. 주차요금정산방법-이용영수증 주차정산시 제시', '신세계백화점 경기점 4층 상행 에스컬레이터 바로 옆', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (241, 'T02@T04@T05@T08@@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑의 즐거움! 쉬어가는 편안한 휴식공간! 죽전이마트점입니다.', '1. 주차가능 2. 주차장 위치-이마트 3~5층 3. 주차가능대수-100대이상 4. 주차조건-조건부 무료(주차 영수증 2시간 무료) 5. 주차요금정산방법-결제 후 제공되는 영수증꼬리표이용하여 주차정산등록', '죽전이마트 1층
', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (136, 'T04@T05@T08@@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '즐거운 영화관람과 맛있는 커피를 함께 즐길 수 있는 죽전 CGV점으로 오세요~', '1. 주차가능 2. 주차장 위치-신세계백화점 지하 및 주차동 3. 주차가능대수-100대이상 4. 주차조건-조건부 무료(백화점 주차 기준 적용) 5. 주차요금정산방법-이용영수증 주차정산시 제시', '신세계백화점 경기점 8층 CGV 티켓박스 바로 옆', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (651, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36@P80', 'WHCROAD', '친절하고 열정적인 파트너, 쾌적한 공간, 최상의 커피를 광교의 첫 매장! 광교중앙로점에서 경험해보세요.', '1.주차 가능 2. 주차장 위치-건물 주차장(2층 이상) 3. 주차 가능 대수- 5대 이상(협소하여 자리 없을수 있음) 4.주차 조건- 결제시 1시간 30분 주차 등록 必 *', '버스정류장 광교마을.중심상가 역 하차. 도보 5분(상현중학교 맞은편) 
신분당선 상현역 4번 출구에서 150m 이내', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (824, 'T01@T04@@T08@T09@T16@T17@T20@@T36@P80', 'WHCROAD', '디지털 감동 서비스의 Drive Thru와 휴양림을 온듯한 아늑한 공간의 여유를 드리는 수지성복DT점 입니다.', '1. 주차가능 2.주차장 위치-매장 측면 3. 주차가능대수-3대 4. 주차조건-스타벅스 이용고객 무료', '신분당선 성복역 5번 출구 나와서 왼쪽 100M 
수지이마트에서 성복동 방향으로 직진하여 LG빌리지로 가는 입구.
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (814, 'T04@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '가족, 친구들과 함께하는 편안한 일상을 풍요롭게 만드는 곳, 죽전점입니다.', '1. 주차불가능', '내대지마을6단지하차
- 직행 102, 1303, 9414
- 마을 22, 29, 39-2', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (841, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', 'View가 아름다운 매장 수지동천점에서 따스한 햇살과 향기로운 커피를 경험하세요.', '1. 주차가능 2. 주차장위치-매장 후면 3. 주차가능대수-8대 4. 주차조건-스타벅스 이용고객 무료', '신분당선 동천역 2번 출구
1) 손곡초등학교 방향으로 직진, 도보 18분 소요
2) 동천역에서 마을버스 17번 탑승 후 송란아트프라자 하차, 10분 소요
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1464, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P90', 'WHCROAD', '커피 한잔의 여유로움과 편안한 휴식을 즐길 수 있는 죽전단국대점입니다.', '1. 주차가능 2. 주차장 위치-매장 후면 3. 주차가능대수-6대 4. 주차조건-스타벅스 이용고객 무료', '단국대 정문 앞 정류장에서 도보 200M', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1503, 'T03@T05@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T36@T40', 'WHCROAD', '프리미엄 리저브커피의 아로마, 티바나 티의 싱그러움을 느끼실 수 있는 스타벅스 용인죽전역R점 입니다.', '1. 주차가능 2. 주차장 위치-입점건물 지하 2~3층 3. 주차가능대수-50대 이상 4. 주차조건-매장 이용시 2시간 무료 5. 주차요금정산방법-파트너에게 요청', '[지하철]분당선 죽전역 하차 오리역방면 도보 12분
[버스]동성1차아파트.죽전패션타운 하차', 'N', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130', '0830-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (638, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '용인시 처인구의 첫 매장 용인처인구청점에서 정성을 담은 커피한잔을 즐겨보세요.', '1. 주차가능 2.주차장위치-건물 뒤쪽 외부 주차장 이용 3.주차가능대수-30대 이상 4.주차조건-매장이용고객 1시간 무료주차 가능(이후 10분당 1,000원) 5.주차요금정산방법-파트너에게 요청', '버스정류장 처인구청 & 농협 앞 하차
처인구청에서 100m', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1071, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@P80', 'WHCROAD', '색다른 인테리어를 갖춘 Cafe와 Drive Thru가 공존한 용인시청DT점입니다.', '1.주차가능 2.주차장위치-매장 전용 주차장 3.주차가능대수- 16대 4.주차조건-무료', '에버라인 삼가역 3번 출구 300M직진', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1514, 'T03@T05@T16@T20@T22@T26@T27@T29@T30@T32@T34@T35@T42@P40', 'WHCROAD', '국내 최대 테마파크인 에버랜드에서 스타벅스 Reserve 를 경험할 수 있는 매장입니다', '1.주차가능 2.주차장위치-에버랜드 주차장 3.주차가능대수-100대 이상 4. 주차조건-에버랜드 정문주차장(유료), 외곽주차장(무료) 5.주차요금정산방법-카카오T앱모바일, 무인정산기, 출구정산기 (정산방법에 따라 유료요금 상이/자세한 내용은 에버랜드 홈페이지 참고)', '대중교통 이용시 : 경전철 에버라인 "전대에버랜드"역 하차 셔틀버스로 이동 "에버랜드 정문 200m"
용인에버랜드R점은 에버랜드 내부에 위치해 있습니다.', 'N', '1000-1930', '1000-1930', '1000-1930', '1000-1930', '1000-1930', '0930-1930', '1000-1930', '0930-1930');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1531, 'T01@T04@T08@T09@T16@T17@T20@T21@T34', 'WHCROAD', '용인 김량장동에서 드라이브 스루 이용이 가능한 용인김량장DT점 입니다.', '1.주차가능 2.주차장위치-매장 앞 전용 주차장 3.주차가능대수- 35대 4.주차조건-무료', '용인 경전철 "운동장,송담대역"에서 용인IC 방향 300m위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1213, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '언제나 편안하고 아늑한 도심속의 여유를 느낄 수 있는 의왕포일점 입니다.', '1.주차불가능', '지하철 4호선 인덕원역 2번출구 삼성아파트 방면 도보 12분
버스 이용시 5번,10번,22번 한국농어촌공사 하차
광역버스 이용시 7002번,1550-3번, 1303번 한국농어촌공사 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1604, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T36@P90', NULL, '편리함과 여유가 공존하는 백운호수 근방에 위치한 의왕시의 첫 Drive Thru, 의왕청계DT점입니다', '1.주차가능 2.주차장 위치-매장 전면 3.주차가능대수-(장애인 1대 포함)10대 4.주차조건-무료', '4호선 인덕원역 2번 출구에서 22번 마을버스 승차, 청계농협 하차(8분) 후 도보 238m(4분 소요)', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2200', '0800-2130', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1718, 'T04@T07@T08@T09@T16@T17@T20@T30@T32@T34@T35@P40', 'WHCROAD', '여유롭고 안락한 공간과 따뜻한 커피 한잔으로 완벽한 하루를 만들어드립니다. 스타벅스 의정부이마트점입니다.', '1.주차가능 2.주차장위치:이마트건물3-10F 3.주차가능대수:50대이상 4.주차조건:구매시 최대2시간 무료주차가능/10분당 1,000원 추가요금 5.주차정산방법:이마트 키오스크 사전정산 시스템 등록', '23,203-1번 버스 이용 이마트정문앞 하차 (이마트 의정부점 1층 고객만족센터 옆)', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1662, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '도심속의 작은 숲처럼 청명하고 쾌적한 공간이 준비되어 있는 의정부민락타운점입니다.', '1. 주차불가능 (건물지하주차장 유료이용 15분회차 무료, 1시간 1천원)', '산들마을 2단지. 민락상업지구앞 정류장 하차 후 200m 도보 3분 
민락동 제일풍경채 상가 1층 (호반베르디움 APT 맞은편)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (506, 'T04@T05@T07@T08@T09@T16@T17@T30@T36@P40@P80', 'WHCROAD', '리프레쉬 타임! 쇼핑과 함께 행복한 커피타임을 신세계의정부6F에서 즐겨보세요.', '1. 주차가능 2. 주차장위치-신세계백화점 주차동 건물 이용 3.주차가능대수 - 100대이상 4.주차조건 - 1만원 이상 구매 시 1시간,3만원 이상 구매 시 2시간, 5만원 이상 구매 시 3시간 무료 주차 5.주차요금정산방법 - 출차시 영수증 제시', '1호선 의정부역 신세계백화점내 6층', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (505, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '탁 트인 전망, 세련된 인테리어! 의정부의 랜드마크 신세계의정부2F점입니다.', '1. 주차가능 2. 주차장위치-신세계백화점 주차동 건물 이용 3.주차가능대수 - 100대이상 4.주차조건 - 1만원 이상 구매 시 1시간,3만원 이상 구매 시 2시간, 5만원 이상 구매 시 3시간 무료 주차 5.주차요금정산방법 - 출차시 영수증 제시', '1호선 의정부역 신세계백화점내 2층', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (645, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '넓고 쾌적한 의정부금오점에서 커피 한 잔으로 여유를 즐기세요.', '1.주차가능2.주차장 위치 - 입점건물 지하1층. 3.주차가능대수 - 10대이하. 4. 주차조건 - 스타벅스 이용시 2시간무료 5. 주차요금정산방법 - 파트너에게 주차도장 요청', '의정부 홈플러스 주차장 입구 건너편 건물 1층', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1012, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P80@P90', 'WHCROAD', '경기북부 최초의 Drive Thru 매장으로 향긋한 커피와 즐거움이 넘치는 의정부녹양DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 측면 3. 주차가능대수 - 12대 4. 주차조건 - 무료 (스타벅스이용 구객 한해)', '지하철 1호선 녹양역 1번출구에서 녹양사거리 방면 도보 5분거리(370m)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1149, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P80', 'WHCROAD', '확트인 테라스와 넓은 주차장 커피한잔의 여유를 즐길 수 있는 의정부회룡역DT점 입니다.', '1.주차가능. 2. 주차장위치 - 매장후면 전용주차장. 3. 주차가능대수 - 10대미만. 4. 주차조건 - 매장 이용 시 무료', '지하철 1호선 회룡역 5번출구 200m이내', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1256, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향기로운 커피향과 편안하고 아늑한 공간이 있는 의정부 민락점입니다.', '1. 주차가능. 2. 주차장위치 - 건물 지하 주차장 이용 가능(월드투타워, 월드본타워). 3. 주차가능대수 - 40대이상 4. 주차조건 - 매장 이용시 1시간 할인권 지급, 이후 10분당 500원 5. 주차요금정산방법 - 파트너에게 주차권 요청', '민락동 산들마을2단지 건너편 성모병원 방향 월드Ⅱ타워 1층(천보산 물사랑수영장 건물)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1296, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P80@P90', 'WHCROAD', '도심속의 작은 공원 "의정부공원점"에서 커피가 선사하는 여유로움을 만끽하세요', '1. 주차불가능', '의정부역 5번 출구 의정부공원 앞 공항버스 정류장 건너편 퍼시픽 타워 1층 매장', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1376, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '만가대 사거리, 솔뫼중학교 옆에 위치한 의정부용현DT 점 입니다.', '1.주차가능. 2. 주차장위치 - 매장전면 전용주차장. 3. 주차가능대수 - 10대미만. 4. 주차조건 - 매장 이용 시 무료', '자차 이용시: 남양주 방향 만가대 교차로 전 우측
대중교통 이용시: 의정부역 한화생명 정류장에서 1, 3번 버스 승차 이후
“만가대 솔뫼 중학교” 정류장 하차
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1497, 'T01@T04@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피한잔의 여유와 편리하고 특별한 Drive Thru의 경험을 느낄 수 있는 스타벅스 의정부신곡DT점 입니다.', '1.주차가능. 2. 주차장위치 - 매장 측면 전용주차장. 3. 주차가능대수 - 20대이상. 4. 주차조건 - 매장 이용 시 무료', '- 지하철 이용 시 : 1호선 회룡역에서 경전철 환승 이후 발곡역 2번 출구 도보 16분
- 버스 이용시 : 회룡역 5번 출구 하차 버스정류장(08-123)에서 203번 장암주공7단지(마을) 하차 도보 5분
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1453, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '커피향 가득하고 아늑한 매장, 편리하고 신속한 DRIVE THRU 서비스와 함께하는 의정부예술의전당DT점 입니다', '1.주차가능. 2. 주차장위치 - 매장측면 전용주차장. 3. 주차가능대수 - 10대미만. 4. 주차조건 - 매장 이용 시 무료', '자차 이용시, 경의교차로에서 호원IC 방향으로 800M 직진
대중교통 이용시, 의정부역(3번출구) 신세계백화점 정류소에서 마을 버스(202번) 승차이후 상우고등학교에서 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (479, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P60', 'WHCROAD', '쌀과 도자기의 고장 이천의 첫 매장인 이천터미널점입니다.', '1.주차가능 2.매장건물뒤편 주차장 3.주가능대수 약 12대 4. 오픈~21시까지 매장이용고객 30분 무료주차 가능 (이후 10분당 500원) 5.오전 10시 이전 방문시 파트너에게 주차권 요청, 이후부터 21시 사이 방문고객은 결제영수증지참하여 정산소방문. 21시 이후 출차시 주차요금 과금되며 매장지원없음,주말공휴일제외', '이천터미널 사거리에서 중리사거리 방면 라온팰리스 앞', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (602, 'T04@T05@T09@T16@T17@T19@T20@T30@P40', 'WHCROAD', '여행중에 느끼는 따뜻한 커피향, 이제는 고속도로에서도 느껴보세요', '1.주차가능 2.마장휴게소 주차장 3.100대이상 4.무료운영 5.무료운영', '- 하행: 제2중부 고속도로 (통영, 대전방면) 동서울 TG에서 산곡JC 왼쪽 제2 중부고속도로 진입, 오른쪽 마장휴게소 진입 
(하행선 주차장에서 롯데마트 옆 계단이용 시 도보로 5분 거리)

- 상행: 중부고속도로(서울, 하남방면) 호법JC에서 동서울 방면으로 진출-&gt; 좌측 중부고속도로 진출후 서이천TG 1km전에 오른쪽 마장휴게소 진입 
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (655, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '넓고 편한 2층 좌석이 준비되어 있는 이천하이닉스점에서 맛있는 커피를 즐겨 보세요.', '1.주차가능 2.매장 정면에서 우측 주차공간 (정면 주차금지 표지판 구역 주차불가) 3. 2대 4. 해당공간 2시간무료 후 10분에 1,000원과금.매장 주차공간 만차 시 건물 앞 주차장 이용가능하나 전시간 유료. 5.출차시 주차요원에게 정산(스타벅스 이용2시간은 입차 및 출차시 요원이 확인)', '이천터미널에서 자차 이용시 7~8분,
시내버스 이용시 15~20분 SK하이닉스 정문에서 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1270, 'T01@T04@T05@T08@T09@T16@T17@T20', 'WHCROAD', '이천의 첫 Drive Thru 매장 스타벅스 이천사음DT점 입니다.', '1.주차가능 2.매장 전면 주차장 3. 14대(경차 2대,장애인 전용 1대 포함) 4.스타벅스 전용주차장으로 무료이용 가능 5.무료', '자차 이용시 : 이천터미널 출발시 경충대로 따라 서이천IC 방면 5km
서울 출발시 중부고속도로이용 서이천TG진출 서이천삼거리에서 이천,신둔 방면 좌회전 후 사음동삼거리 우회전 후 30m

대중교통 이용시 : 이천터미널인근 버스정류장에서 사음2동 방면 버스 이용, 사음2동.동일냉장 하차', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1473, 'T01@T04@T05@T08@T09@T16@T17@T20@T21@T36', NULL, '이천증포DT점에서 커피한잔의 여유와 특별한 Drive Thru를 경험하세요', '1.주차가능 2.매장 후면 스타벅스 전용 주차장 3. 35대 4.스타벅스 전용주차장으로 무료이용 가능 5.무료', '증포교차로에서 수원방향으로 250m 직진, 이마트 사거리 전 우측방향 
', 'N', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0700-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1707, 'T02@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P40', NULL, '편안함과 쾌적함으로 준비되어 있는 이마트의 핫플레이스 스타벅스 파주운정이마트점입니다.', '건물 내 주차장 이용(주차등록 혹은 주차영수증 제출시 2시간 무료)', '버스정류장 새암공원 앞 하차 이후 도보 5분 거리 운정이마트점 내 1층', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (371, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑과 문화예술, 그 이상의 경험!! 파주P.아울렛점을 느껴보세요..!!', '결제 관계 없이 아울렛 주차장 무료 이용가능 (확인없이 출차 가능)', '판교:일산IC 자유로 분기점 방향, 

문산:킨텍스 방면으로 우측 방향, 

금촌:법흥리 방면으로 우측방향(필승로)', 'N', '0930-2030', '0930-2030', '0930-2030', '0930-2030', '0930-2100', '0930-2100', '0930-2100', '0930-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (765, 'T04@T05@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '아늑한 공간에서 여유로운 커피 한 잔을 즐기실 수 있는 공간. 파주운정점입니다.', '건물 내 주차장 사용(금액 제한 없이 1대당 1장 주차권 제공, 무료 주차 90분 이후 추가 비용 지불, 매장 내 구매 시 주차권 증정)', '버스정류장 &lt;새암공원&gt;, &lt;경기인력개발원&gt;에서 하차', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (699, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P80', 'WHCROAD', '파주 첫번째 로드 매장으로 선보이는 설렘과 행복이 가득한 스타벅스 파주금릉역점 입니다.', '건물 내 지하주차장 이용 (1시간무료. 매장에서 주차도장 제공)', '경의선 금릉역 1번출구 약 50M', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1375, 'T05@T08@T16@T17@T20@T30@T36@P90', NULL, '내 집같은 편안한 제 3의 공간을 제공해드리는 파주금촌역점 스타벅스입니다.', '주차불가', '경의중앙선 금촌역 1번 출구 방면 도보 3분에 위치하고 있습니다.', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0900-2000', '0900-2100', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1381, 'T05@T08@T16@T17@T20@T21@T30@T36@P90', NULL, '커피와 함께 행복을 느낄 수 있는 야당역의 랜드마크 스타벅스 파주야당역점 입니다.', '건물 주차장 사용 (기본 주차 30분 무료 제공 + 매장 내 5,000원 이상 구매 시 주차 등록 1시간 무료, 차 1대당 1번 등록)포스에서 등록 진행', '대중교통 이용시 : 경의중앙선 야당역 1번출구 방면 하차 후 도보 5분거리
자차 이용시 : 경의로 운정호수공원 금촌방면으로 지하차도 진입 1.2km 이동 후 소리천로 8번길 우회전 238m 이동', 'N', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1539, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T34@T35@T36@P40@P90', NULL, '쇼핑과 문화, 그 이상의 즐거움을 경험할 수 있는 파주P.아울렛1F점에 어서오세요!!', '결제 관계 없이 아울렛 주차장 무료 이용가능 (확인없이 출차 가능)', '신세계파주프리미엄아울렛 신관 내 위치. A/B주차타워 지하1층 지오다노옆에 위치.', 'N', '1000-2030', '1000-2030', '1000-2030', '1000-2030', '1000-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1666, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '평택의 두번째 스타벅스 Drive Thru매장, 평택죽백DT점에서 편리함과 여유로움을 느껴보세요.', '1.주가가능 2.매장 전면 3.장애인포함 16대 4.무료 5.정산X', '경기도 평택시 죽백동 479-7번지 버거킹 옆라인', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (622, 'T04@T05@T08@T16@T17@T20@T30@T36', 'WHCROAD', '송탄에 찾아온 특별한 공간!! 평택송탄점에서 특별함을 선사합니다.', '주차불가', '평택시 송탄출장소에서 롯데시네마 방면 도보 3분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0900-2200', '0900-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (868, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P60@P80@P90', 'WHCROAD', '맛있는 음료와 좋은서비스 제공하겠습니다. 스타벅스 평택AK플라자점에서 행복한 하루 시작하세요!', '1.주차가능 2.백화점 주차 요금 기준과 동일하게 영수증 합산 적용', '1호선 평택역에서 하차 후 3층 백화점 연결통로 진입,
1층 백화점 랑콤화장품 매장 옆', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0900-2030', '0900-2030', '0900-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (976, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P60@P80', 'WHCROAD', '활기찬 도심 속 평온한 휴식을 위한 향기로운 선택 Welcome to 평택로데오점', '주차불가', '평택역 1번출구 앞 오거리 국민은행 방면 도보 5분거리 (주차불가)', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2200', '0900-2200', '0900-2100', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1589, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P90', 'WHCROAD', 'Drive Thru의 편리함과 커피 한잔의 여유로움을 느낄 수 있는 여기는, 평택안중DT점입니다.', '1.주차가능 2.매장(후면) 3.장애인 포함 28대 4.무료 5. 정산X', '평택 안중읍 서동대로 1459, 홈플러스 평택안중점에서 평택항 방향 도보 5분.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1526, 'T01@T04@T08@T16@T17@T20@T21@T34@T36@P90', 'WHCROAD', '송탄 최초의 스타벅스 Drive Thru 매장으로 차를 타고 편리하게 스타벅스를 경험해보세요.', '1,주차가능 2.주차위치: 건물 주차장 3.주차대수: 3대 4.주차조건: 무료', '평택송탄 출장소 맞은편에 위치
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1502, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '행복함과 편안함이 있는 스타벅스 평택비전점 입니다.', '1.주차가능 2.건물 지하 주차장 이용/1시간 무료(건물 주차이용시) 3.주차유료 4. 정산O', '평택시 비전동 비전로 20-24 로데오1103건물 1층(평택가로수길센트럴돔 옆건물)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (640, 'T04@T05@T07@T08@T09@T16@T17@T20@@T30@T36@P90', 'WHCROAD', '무궁무진 포천의 유일한 제 3의 공간 스타벅스 포천송우점 입니다.', '1. 주차가능 2. 주차장위치 - 입점 건물 뒤면(주차타워) 3. 주차가능대수 - 10대 4. 주차조건 - 건물주차장 주차가능 5. 기타 - 주차타워로 SUV 이상 차량 주차 불가', '포천 하나로마트 옆 우리은행 건물 1층', 'N', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '0900-2030', '1000-2030', '1000-2030', '1000-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1306, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피 한 잔의 즐거움과 편리한 Drive Thru 이용이 가능한 포천DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 전면/후면 3. 주차가능대수 - 23대 (장애인 2대 포함) 대 4. 주차조건 - 무료(스타벅스 이용고객에 한해)', '의정부방면 이마트 포천점 100m 전', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (737, 'T04@T05@T08@T16@T17@T20@T30@T36', 'WHCROAD', '하남의 중심 스타벅스 하남시청점에서 제3의 공간의 안락함을 느껴보세요.', '주차불가', '대중교통(버스)
30-3, 112, 341
하남시청 정거장 하차 후, 덕풍교 방면 도보 5분.', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (890, 'T04@T05@T08@T16@T17@T20@T30@T36', NULL, '신장사거리의 핫 플레이스 ''하남신장점''에서 커피 한 잔의 여유를 느껴보세요.', '주차불가', '서울에서 버스 이용 시, 112-1, 112-5, 30-1, 9301
신장사거리 정류장에서 하차 후 덕풍시장 방면으로 도보 2분
(우리은행 하남지점 옆)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1108, 'T03@T05@T07@T08@T09@T16@T17@T20@T22@T26@T29@T30@T36@T40@P40', 'WHCROAD', '블랙이글, 사이폰, POC 등 추출기구를 통해 스타벅스 리저브 커피를 즐기실 수 있는 스타필드 하남2F R점입니다.', '1.주차가능. 2.스타필드주차장이용.3.500대이상 4. 무료', '스타필드 몰 내 2층 안쪽 쟈딕앤볼테르 매장 건너편에 위치', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1109, 'T04@T05@T07@T08@T09@T16@T17@T20@T36@P40', 'WHCROAD', '쇼핑 후 커피 한잔의 여유를 즐길 수 있는 신세계하남2F점입니다.', '1.주차가능 2.백화점주차장이용 3.500대 4.무료', '스타필드하남 신세계백화점 2층에 위치', 'N', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100', '1100-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1110, 'T04@T05@@T08@T09@T16@T17@T20@T29@T30@T36@P40', 'WHCROAD', '티바나 전용 음료를 즐기실 수 있수 있는 스타필드하남GL(티바나)점입니다.', '1.주차가능. 2.스타필드주차장이용.3.500대이상 4. 무료', '스타필드하남 1층 중앙 출입문 앞', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1214, 'T05@T07@T08@T16@T17@T20@T30@T36', 'WHCROAD', '미사강변도시의 편안하고 안락한 쉼터 "하남미사점"입니다.', '주차불가', '미사강변대로 226번길
미사강변도시 아파트 8단지 맞은편
미사강변교회 옆에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1532, 'T05@T08@T16@T17@T20@T21@T30@T34@T36@P90', NULL, '마음이 따뜻한 사람들과 함께 할 수 있는 편안한 휴식공간, 하남덕풍점 입니다.', '1.주차가능.2.건물내지하주차장.3.10대 4.60분무료. 5.이후 초과분에대해서는 주차정산기이용하여 카드정산.', '덕풍동로 123. 풍산메트하임 오피스텔 1층 위치
하남시립 나룰도서관 인근 도보300m
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1517, 'T05@T08@T09@T16@T17@T20@T21@T30@T35@T36@P90', 'WHCROAD', '완벽한 휴식을 제공하는 "미사역효성"점 입니다.', '1.주차가능 2.입점건물지하주차장3. 30대이상가능 4. 구매 금액1만원이상 60분무료 5. 구매시 파트너에게 주차권요청 必 / 출차 전 엘레베이터 앞 정산기로 정산 후 출차', '아리수로 570
미사역 효성 해링턴 타워 더 퍼스트 
미사파출소앞', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1446, 'T03@T04@T05@T08@T09@T16@T17@T20@T22@T26@T29@T30@T36@T40@P40', 'WHCROAD', '도심 속에서의 특별한 힐링법! 스타벅스 만의 특별한 경험과 프리미엄 커피 한 잔의 여유를 제공해 드립니다.', '1. 주차 가능 2. 주차장위치 - 매장 입점 건물(스타필드위례시티점)이용 3. 주차가능대수 - 50대 이상 4. 주차조건 - 무료. 5. 주차정산방법 : 제한없음', NULL, 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1643, 'T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P90', 'WHCROAD', '완벽한 휴식을 제공하는 하남황산사거리점 입니다.', '1.주차가능2.건물지하주차장 3.50대 4.1시간무료이후 10분당 500원 5.출차전 복도에서 사전정산 / 지하2층이하 주차시 출입구에서 [비번+2580+호출]하여 입장가능', '하남황산사거리 
미사강변유림노르웨이숲 오피스텔 1층 상가', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2130', '0800-2100', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1524, 'T01@T08@T16@T17@T20@T21@T34@T36@P90', 'WHCROAD', '하남지역의 첫 Drive Thru매장, 커피한잔의 여유와 편안함을 드리는 하남미사DT점 입니다.', '1.주차가능 2.매장뒷편 주차장. 3. 3대 4.무료 / 진출입로가 일방통행도로이며 주차장이 매우 협소하여 인근 공영주차장 이용부탁드립니다.', '하남고등학교 후문 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1687, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P40@P90', NULL, '.', '1. 주차가능 2. 주차장위치 - 건물 지하 1,2층 주차창 이용 3. 주차대수 100대이상 4. 주차요금정산방법 (1만원이상 구매시 1시간 무료/3만원이상 구매시 2시간무료/ 5만원이상구매시 3시간무료/7만원이상구매시 4시간무료/10만원이상구매시 5시간).직원에게 주차등록 요청필수. 몰의 주차규정에 따름', '동탄호수공원 레이크꼬모 상가 1층. 지하 주차장의 Gate2번과 가깝습니다.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1691, 'T08@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', NULL, NULL, '대중교통 이용 시 대방노블랜드 1차 정류장 하차 약 400m', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1671, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35', NULL, '커피 한 잔의 여유 스타벅스 화성반월DT점 입니다.', '1. 주차가능 2. 주차장장소 - 매장앞주차공간 3. 주차대수 - 10대(협소하여 자리 없을수 있음) 4. 주차요금정산방법 - 없음', '삼성전자 화성사업장에서 병점방향, 능리교차로 인근', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1693, 'T01@T04@T08@T16@T17@T20@T21@T30@T32@T34@T35', NULL, '커피 한잔의 여유를 느낄 수 있는 스타벅스 화성봉담DT점 입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-(장애인1대포함) 16대 4.주차조건-무료', '- 대중교통 이용 시 : 수원역에서 1007, 46 , 31,1004 승차, 한국농수산대학 하차 (도보 4분 이내)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (388, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P90', 'WHCROAD', '쇼핑을 즐기며, 일상속에 달콤한 커피 한잔의 여유를 느껴보세요.', '1. 주차가능 2. 주차장 위치 - 이마트 2-7층 주차장 3. 주차가능대수 -100대이상 4. 주차조건 - 영수증당 2시간 무료 5. 주차요금 정산 방법 - 파트너에게 요청', '동탄이마트 1층 정문 우측에 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (589, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36@P70@P90', 'WHCROAD', '아늑한 분위기와 친절한 파트너가 있는 동탄광장점입니다.', '1. 주차가능 2.주차장 위치 - 위버폴리스 지하 1-2층 3.주차대수 50대 이상 4. 주차조건 - 구매시 2시간 제공 5. 주차요금정산방법 - 파트너에게 차량번호등록요청', '메타폴리스에서 동탄소방서 방면 도보 3분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (617, 'T04@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '바쁜 일상 커피 한잔의 여유와 고객님의 힐링을 책임질 동탄점입니다.', '1. 주차가능 2.주차장위치 - 동양파라곤2차상가 지하 1,2층 주차장 3. 주차대수 - 30대이상 4. 주차요금정산방법 - 구매시 2시간 무료 , 파트너에게 주차요청', '동탄 홈플러스에서 토지주택공사 방향으로 도보 3분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (888, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '동탄의 그린스팟! 동탄센트럴파크점에서 자연이 주는 여유를 느껴 보세요!', '1. 주차불가능.( 인근 센트럴파크주차장, 공영(노상)주차장 이용 )', '센트럴파크 사거리
동탄센트럴파크-파크골프장(게이트볼) 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1016, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피 한잔의 여유로움과 빠르고 편리한 Drive Thru를 경험할 수 있는 신영통DT점 입니다.', '1. 주차가능 2. 주차장장소 - 매장앞주차공간 3. 주차대수 - 8대(협소하여 자리 없을수 있음) 4. 주차요금정산방법 - 없음', '위치 : 수원 망포역(분당선) 3번 출구에서 기흥동탄 IC방면으로 약 1.5km 
버스 : 수원역에서 5-1, 7-1, 13-5번 버스 ''신영통 현대타운 두산위브'' 하차 도보 2분거리', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1086, 'T04@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '동탄 2신도시 11자상가 동탄영천점 입니다.', '1. 주차가능 2. 주차장위치 - 건물 지하 1,2층 주차창 이용 3. 주차대수 15대- 협소하여 자리 없을 가능성 많음 4. 주차요금정산방법 - 구매시 2시간 주차무료, 파트너에게 주차권 요청', '동탄 2신도시 11자 상가, 이주택지 버스정류장 앞 에이스프라자', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1163, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P70@P90', 'WHCROAD', '병점의 랜드마크 화성병점DT점에 오신 것을 환영합니다.', '1.주차가능 2.주차위치: 매장 건물 주차장 3.주차대수: 10대이상 4.주차조건: 1시간 무료 이후 30분1500원', '병점 중심상가에서 1번 국도 방향. 화남아파트 사거리에 위치.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1276, 'T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '스타벅스의 고품격 서비스를 즐기실 수 있는 동탄역점입니다.', '1. 주차가능 2. 주차장 위치 - 매장건물 지하 1-4층 이용 3. 주차대수 100대이상 4. 주차조건 - 테이크아웃시 40분, 체류시 2시간 가능 5. 주차요금정산방법 - 파트너에게 차량번호 등록 요청', '우성 KTX타워 옆, 리치안타워 1F, 2F', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1384, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '동탄능동DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장앞 주차공간 3. 주차대수 - 12대 (협소하여 자리 없을수 있음) 4. 주차요금정산방법 - 없음', '동탄 방향에서 방문시; 버스 27-1 능동지성로사거리 하차, 버스 64 이지더원 하차
수원 방향에서 방문시: 버스 64 경남아너스빌 앞 하차, 버스 1550-1, 34-1,3,4 신미주아파트 앞 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1393, 'T03@T04@T08@T16@T17@T20@T21@T22@T26@T29@T30@T36@T40@P40@P90', NULL, '스페셜한 리저브커피를 제공하는 동탄의 트렌디한 감성공간 스타벅스 동탄카림R점 입니다.', '1. 주차가능 2. 주차장위치 - 매장 건물 지하 1,2층 주차장 3. 주차대수 100대 이상 4. 주차조건 - 구매시3시간 주차 가능 5. 주차요금정산방법 - 출구정산소에서 영수증 확인', '호반베르디움/롯데캐슬 버스정류장 하차 동탄중앙어울림센터 맞은편 카림에비뉴 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1470, 'T04@T05@T08@T16@T17@T20@T21@T30@T35@T36@P70@P90', 'WHCROAD', '행복함과 편안함이 있는 스타벅스 화성향남점 입니다.', '1.주차가능 2.주차위치:입점건물 지하 1~2층 3.주차가능대수: 10대이상 4.주차조건:무료', '향남홈플러스/향남환승터미털/향남읍사무소 버스정류장 하차 후 도보 5분 거리에 위치.', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1588, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@P90', NULL, '편안한 공간과 행복을 느끼실 수 있는 스타벅스 화성봉담점 입니다.', '1.주차가능 2.주차위치:건물 지하1~2층 3.주차대수: 30대 이상 4.주차조건: 무료', '대중교통 이용시,
34-1번, 30-1번, 30번, 9번
동화휴먼시아1단지, 상봉초등학교 하차, 도보 2분(130m)
', 'N', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200', '0830-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1538, 'T04@T05@T08@T16@T17@T20@T21@T30@T34@T36@P70@P90', NULL, '친절한 파트너와 맛있는 커피가 있는 스타벅스 화성시청점 입니다.', '1.주차가능 2.주차위치:건물 지하1~2층 3.주차대수: 10대이상 4.주차조건: 1시간만 무료 이용 가능 10분당 500원', '화성시청에서 도보 4분(355m) 거리', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (633, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@T36@P50@P90', 'WHCROAD', '창밖으로 푸른 바다와 쪽빛하늘이 펼쳐지는 스타벅스 강릉안목항점입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 안목해변 공영주차장 3. 주차가능대수-50대 이상 4. 주차조건-무료', '강릉 안목해변 커피거리', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '1400-2100', '0800-2100', '1400-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (854, 'T04@T05@T07@T08@T16@T17@T20@@T30@T36@P70@P90', 'WHCROAD', '강릉의 교통요지인 강릉중앙로에서 커피 한잔의 여유와 함께 여행계획을 세워보세요.', '1. 주차불가능(강릉중앙시장 공영주차장(유료) 이용)', '강릉 신영극장/교보생명 하차', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0730-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1308, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '최고의 파트너가 준비한 맛있는 한잔의 커피가 있는 스타벅스 강릉교동광장점 입니다.', '1. 주차가능 2. 주차장 위치-매장 후면 3. 주차가능대수-5대 4. 주차조건-무료', '교동 택지 올리브영 맞은편, 롯데리아 옆. 구름다리 정류소 앞.', 'N', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0730-2130', '0800-2130', '0730-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1600, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@P50@P90', 'WHCROAD', '동해의 푸른 바다가 눈앞에 펼쳐지는 스타벅스 강릉강문해변점 입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 강문해변 공영주차장 3. 주차가능대수-50대 이상 4. 주차조건-무료', '강릉 강문해변 강문어화횟집 옆', 'N', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1586, 'T01@T04@@T08@T09@T16@T17@T20@T34@T36@P90', 'WHCROAD', 'DT 의 편리함과 Cafe의 아늑함이 있는 스타벅스 강릉송정DT 점 입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수-4대 4. 주차조건-무료 5. 매장 뒤 이마트 주차장 이용 가능', '이마트 강릉점 앞, 전자랜드 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (706, 'T04@@@T08@T09@T16@T17@T20@T30@T36@P30@P90', 'WHCROAD', '설악산 울산바위의 풍경이 눈 앞에 펼쳐지는', '1. 주차가능 2. 주차장 위치-리조트 내 주차장 3. 주차가능대수-100대 이상 4. 주차조건-무료', '소노델피노 소노문 이스트(SONO MOON EAST) (구 A동) 1층 로비', 'N', '0800-1400', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1164, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '떠오르는 태양과 푸른바다를 함께 즐길 수 있는 해뜨는 동해 스타벅스 동해DT점 입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수-5대 4. 주차조건-무료', '한마음 병원 버스정류장 하차/ 동해 요양병원 맞은편에 위치해 있습니다.', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (629, 'T04@T05@T08@T16@T17@@T20@T30@T36@P90', 'WHCROAD', '시원한 바닷바람과 함께하는 향기로운 커피한잔, 속초중앙로점에 준비되어 있습니다.', '1. 주차불가능(인근 속초 로데오 주차장 이용)', '속초 시내버스 관광수산시장 정류장 하차 후 도보 5분', 'N', '1000-2130', '1000-2130', '1000-2130', '1000-2130', '0900-2130', '0900-2200', '0900-2130', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1007, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P50@P90', 'WHCROAD', '강원도 최초의 Drive Thru 속초DT점에서 커피한잔의 여유와 디지털 감동서비스를 느껴보세요.', '1. 주차가능 2. 주차장 위치-매장 전면 3. 주차가능대수-20대 이상 4. 주차조건-무료', '강원국제관광 엑스포 기념관 앞 맥도날드 옆', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1191, '@T07@T08@T09@T16@T17@T20@T30@T36@P30', 'WHCROAD', '유럽풍의 이국적인 리조트에서 커피한잔의 여유를 즐겨보세요.', '1. 주차가능 2. 주차장 위치-리조트 내 주차장 3. 주차가능대수-100대 이상 4. 주차조건-무료', '한화리조트 설악 쏘라노 5동(체크인동) 1층 로비', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (554, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T35@T36@P60@P90', 'WHCROAD', '원주의 핫플레이스! 스타벅스 원주1호점, 원주터미널점입니다.', '1.주차불가능', '원주 시외버스터미널 건너편', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1131, 'T05@T07@T08@T09@T16@T17@T20@T21@T22@T30@T36@P90', 'WHCROAD', '원주혁신도시 중심 중의 중심! 스타벅스원주혁신도시점입니다!', '1.주차가능 2.주차장위치 - 건물지하 3.주차가능대수 - 10대이상 4.주차조건 - 조건부무료(매장이용고객에 한해 1시간 할인권 지급/중복할인불가) 5.주차요금정산방법 - 파트너요청, 그외 카드결제만 가능(삼성페이불가)', '원주혁신도시 건강보험심사평가원 맞은편 골든스퀘어2차 1층에 위치하고 있습니다.', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1232, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@P90', 'WHCROAD', '맛있는 한잔의 커피와 따뜻한 감성이 있는 스타벅스 원주무실점입니다.', '1.주차가능 2.주차장위치 - 건물 지하 3.주차가능대수 - (장애인 1대포함) 11대 4.주차조건 - 건물이용고객제한없음 5.주차요금정산방법 - 파트너 요청시 주차권지급(시간제한없음) 평일 17시이후 무료출차가능, 주말,공휴일 무료', '무실동 법원사거리 신협건물 1층에 위치해 있습니다.', 'N', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1425, 'T01@T04@T05@T08@T09@T16@T17@T20@T30@T32@T35@T36@P90', NULL, '원주의 첫번째 Drive Thru 매장으로 스타벅스의 새롭고 편리한 서비스를 즐길 수 있는 원주명륜DT점 입니다.', '1.주차가능 2.주차장위치 - 매장 전면 측면 3.주차가능대수 - (장애인 1대 포함)17대 4.주차조건 - 이용고객에 한하여 무료', '1)자차 이용시: 의료원사거리에서 원주고등학교 방면 500m 내 위치 
2)대중교통 이용시: 젊음의광장사거리 하차 원주고등학교 방면 직진 180m 내 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1487, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '도심속에 휴식을 즐길 수 있는 원주반곡DT점 입니다.', '1.주차가능 2.주차장위치 - 매장전면 3.주차가능대수 - (장애인1대포함) 20대 4.주차조건 - 매장 이용고객에 한해 무료', '1)자차 이용시: 버들만이삼거리에서 동부교 방향 50m 내
2)대중교통 이용시: 원주시노인종합복지관에서 동부순환로 방향 300m', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1696, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P60@P90', NULL, '커피향 가득한 오아시스 춘천온의점입니다.', '주차불가능', '춘천KBS 방속국 맞은편 건물 1층에 위치하고 있습니다.', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (508, 'T04@T05@T07@T08@T16@T17@T20@@T21@T30@T36@P20', 'WHCROAD', '은은한 커피 향과 함께 만나는 춘천의 젊은 공간. 스타벅스 강원대점입니다', '1.주차불가능', '강원대학교 후문광장 횡단보도를 건너 사대부고 방향으로 이동하시면 됩니다.', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (55, 'T02@T04@T05@T08@T09@T16@T17@@T20@T30@T36@P40@P60', 'WHCROAD', '쇼핑의 즐거움과 여유로운 휴식을 함께 즐길 수 있는 춘천이마트점입니다', '1. 주차가능 2.주차장위치 - 이마트 내 주차장 이용 3.주차가능대수 - 200대이상 4.주차조건 - 조건부 무료 (스타벅스 이용 시 2시간 무료) 5.주차요금정산방법 - 주차증으로 정산 가능', '춘천시 이마트 내 (푸드코너 위치)', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (86, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P90', 'WHCROAD', '봄내골 춘천의 큰 창을 가지고 있는 매장입니다. 이 큰 창만큼 항상 밝은 미소로 맞이하겠습니다.', '1.주차가능 2.주차장위치 - 건물지하 3.주차가능대수 - 10대이상 4.주차조건 - 구매고객 1시간 무료 5.주차요금정산방법 - 파트너에게 영수증 제시', '중앙로터리 우리은행 맞은 편', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1070, 'T01@T04@T07@T08@T09@T16@T17@T20@@T36@P90', 'WHCROAD', '춘천의 첫번째 Drive Thru 춘천석사DT점에서 커피한잔의 여유와 디지털 감동 서비스를 느껴보세요.', '1.주차가능 2.주차장 위치- 매장 전면 3.주차가능대수-(장애인 1대 포함) 6대 4.주차조건- 무료', '1) 자차 이용 시
- 춘천IC 에서 춘천교육대학교 방향 4km 전방, 퇴계사거리 무릉공원 옆.

2) 대중교통
- 춘천 시외버스터미널에서 버스 7, 20번 승차, 하이마트 정류장 하차(도보 2분).
', 'N', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1125, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@P90', 'WHCROAD', 'Drive Thru 춘천후평DT점에서 따뜻한 한 잔의 커피로 여유를 느껴보세요.', '1.주차가능 2.주차장위치 - 매장측면/후면 3.주차가능대수 - (장애인1대 포함) 13대 4.주차조건-무료', '포스코 더샵 아파트 정문 건너편, SK주유소 옆 위치', 'N', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1566, 'T03@T04@T05@T08@T09@T16@T17@T20@T26@T29@T30@T32@T34@T36@T40@P90', NULL, '춘천을 한눈에 담을 수 있는 강원도 첫 리저브바 매장 춘천구봉산R점 입니다.', '1.주차가능 2.주차장위치 - 매장 전면 3.주차가능대수 - (장애인1대포함) 28대 4.주차조건 - 매장 이용고객에 한해 무료', '1)자차 이용시: 만천분기점에서 창촌,구성포 방면 오른쪽 방향 1km 직진 후 구봉산편의점 앞 유턴 600m', 'N', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200', '1030-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (411, 'T04@T05@T09@T13@T15@T30@P30', 'WHCROAD', '뜨거운 태양아래 즐거운 여름을 스타벅스와 함께하세요.', '1.주차가능 2.주차장위치 - 오션월드 주차장이용 3.주차가능대수 - 100대이상 4.주차조건 - 무료', '오션월드 다이나믹존에 위치', 'N', '0900-1700', '0900-1700', '0900-1700', '0900-1700', '0900-1700', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (308, 'T04@T05@T09@T13@T15@T20@T30', 'WHCROAD', '이번 겨울 시즌도, 비발디파크점에서 따뜻하게 녹여보세요!', '1.주차가능 2.주차장위치 - 비발디파크 주차장이용 3.주차가능대수 - 30대이상 4.주차조건 - 무료', '비발디파크 스키 메인센터 2층 / 동계시즌매장으로 스키장 영업시에만 운영하는 매장입니다.', 'N', '0900-1700', '0900-1700', '0900-1700', '0900-1700', '0900-1700', '0900-1900', '0900-1700', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (92, 'T04@T05@T07@T08@T09@T16@T17@T20@T30', 'WHCROAD', '은은한 바다내음과 풍부한 커피향의 조화가 살아있는 거제도의 명소 입니다. 도심에는없는 풍요로움을 느낄 수 있습니다.', '1.주차가능 2.주차위치- 매장건물 지상2~6층 3.주차대수- 50대이상 4.주차조건-매장이용시 2시간무료5.주차요금정산방법-2시간 이용에 대해서 파트너에게 요청', '디큐브백화점 1층', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (292, 'T04@T05@T07@T08@T09@T16@T17@T20@T30', 'WHCROAD', '편안한 안식처 같은 공간', '1.주차불가능', '옥포1동 국민은행 맞은편 유라빌딩 1층입니다.', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (628, 'T04@T08@T09@T16@T17@T20@T30@P30', 'WHCROAD', '향긋한 커피와 함께 아름다운 바다의 경치를 감상할 수 있는 곳, 소노캄거제점입니다.', '1.주차가능 2.주차위치- 매장건물 지하2~3층 3.주차대수- 50대이상 4.주차조건-무료', '소노캄거제리조트 A동 1층위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (905, 'T04@T05@T08@T16@T17@T20@T21@T30', 'WHCROAD', '시원한 바다 바람과 향긋한 커피향이 함께하는 곳에서 일상을 쉬어가는 곳', '1.주차불가능', '거제고현 시외버스터미널에서 좌측 바닷길 따라 홈플러스 방향으로 도보 5분,
LG베스트 샵 맞은편', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1652, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35', 'WHCROAD', '입차/출차 시 보행자를 주의해주세요', '1.주차가능 2.주차위치- 매장전면 3.주차대수- 7대 4.주차조건-무료', '통영에서 거가대교방향 고현e-편한세상 아파트 건너편위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1685, 'T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', NULL, NULL, '1. 주차가능 2.주차장 위치- 매장 후면 3. 주차가능대수 - (장애인 1대 포함) 9대 4.주차조건 - 조건부 무료 (영수증 1만원이상 1시간 무료-파트너에게 등록요청, 초과시10분당 500원) 5. 주차요금 정산방법 - ipark 무인정산기이용 카드결재', '다이소 김해율하 2호점 옆 
CGV 김해율하점 인근 
율하 메디컬빌딩 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (437, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '제3의 공간에서 즐기는 커피 한잔의 여유, 김해내동점에서 그 경험을 만끽하세요.', '1. 주차가능 2. 주차장 위치-입점건물 1층 주차장, 금상주차장(야외) 3. 주차가능 대수 - 10대 이상 4. 주차 조건 - 조건부 무료 (구매시 1시간 무료) 5. 주차요금정산방법 - 주차권에 확인도장', '내외 중앙로 4거리 하나은행 맞은편 프라임 여성의원 1층 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (626, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '김해지역의 새로운 랜드마크, 건물전체 모두 스타벅스 인 꿈의 매장', '1, 주차가능 2. 주차장 위치 - 매장 후면 3. 주차가능대수 - 12대 4. 주차조건 - 조건부 무료 (2시간 이내)', '김해 삼계 하나로마트 맞은편 김해운동장과 10분거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (711, 'T03@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '김해율하 카페 거리의 랜드마크, 커피 한 잔의 깊은 감동을 경험해 보세요.', '1. 주차불가능', '율하 푸르지오 아파트 수변 공원 방면 카페거리', 'N', '0800-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (802, 'T01@T04@T05@T08@T09@T16@T17@T20@T30@T32@T36', 'WHCROAD', '천년가야문화의 중심지에서 향기로운 커피의 풍미와 휴식 같은 낭만을 누리세요', '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - 7대 4. 주차조건 - 조건부 무료 (2시간이내)', '- 경전철 이용 : 수로왕릉역1번 1번 출구 도보 900M 외동사거리 방향
- 버스이용 : 한국2차 아파트 정문 맞은 편 위치 2번, 2-1번, 7번, 8번, 12번', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (846, 'T01@T04@T05@T08@T09@T16@T17@T20@T30@T32@T35@T36@P80', 'WHCROAD', '디지털 Drive Thru 와 커피갤러리하우스가 함께 하는 문화 공간에서 커피의 낭만과 휴식으로 편안함을 즐기세요.', '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - 6대 4. 주차조건 - 무료', '* 김해 경전철 이용 : 인제대역2번 출구, 시청방향 400M
* 버스이용 : 성모병원 하차 후, 시청방향 150M', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (901, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80', 'WHCROAD', '젊음의 열정과 지성, 커피 한잔의 여유와 낭만이 함께 하는 김해인제대점입니다.', '1. 주차가능 2. 주차장 위치 - 입점건물 지하 1층 (기계식 주차, 17시까지 운영) 3. 주차가능대수 - 10대 이상 4. 주차조건 - 조건부 무료 (구매시 2시간 무료) 5. 주차요금정산방법 - 주차권에 확인도장', '김해인제대학교 정문에서 도보 5분 (대우 유토피아 정문 방향)', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1080, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑의 즐거움과 커피 한 잔의 여유로움을 스타벅스 김해이마트점과 함께 하세요~', '1. 주차가능 2. 주차장 위치 - 이마트 지하 1층 3. 주차가능대수 100대 이상 4. 주차조건 - 조건부 무료 (당일 1/3/5만원 구매시 2/3/4 시간 무료) 5. 주차요금정산방법 - (출차시)영수증 제시', '부산-김해 경전철 봉황역 1번출구 김해이마트 내 1층
', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1083, 'T03@T05@T07@T08@T09@T16@T17@T20@T26@T29@T30@T36@@P40', 'WHCROAD', '일상에 행복을 더하는 고품격 리저브 커피 바, 스타벅스 신세계김해R점 입니다.', '1. 주차가능 2. 주차장 위치 - 백화점 3-5층 3. 주차가능대수 100대 이상 4. 주차조건 - 조건부 무료 (당일 1/3/5만원 구매시 2/3/4 시간 무료) 5. 주차요금정산방법 - (출차시)영수증 제시', '부산-김해 경전철 봉황역 1번출구 신세계백화점 1층', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1647, 'T01@T08@T09@T16@T17@T20@T30@T32@T34@T35', 'WHCROAD', NULL, '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - (장애인 1대 포함) 16대 4. 주차조건 - 무료', '동창원 IC방향에서 진영방향으로 오시면 100M이내 건너편에 있습니다.
진영고등학교,진영여자중학교 200M (도보3분)
진영 다이소2호점 건물 옆 위치(도보1분)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1442, 'T01@T04@@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '금관가야의 역사가 숨쉬는 곳, 향기로운 커피한잔과 일상의 여유를 즐기세요.!!!', '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - 18대 4. 주차조건 - 무료', '- 경전철이용: 장신대역 2번 출구 도보 700M 김해삼계아이파크 방향
- 버스 이용 : 김해삼계구산 푸르지오 2차 하차 또는 노인복지회관앞 하차
(14-1,60,72,72A,72B,140번 이용)', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1598, 'T01@T08@T09@T16@T17@T20@T34@T36', 'WHCROAD', '밀양의 중심에서 편안한 휴식이 있는 공간! 밀양DT점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 후면 3. 주차가능대수 - (장애인 1대 포함) 20대 4. 주차조건 - 무료', '밀양병원 건너편 300M(도보 5분)
삼문동 주민센터 300M(도보 3분)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (795, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P90', 'WHCROAD', '넓고 여유로운 좌석을 갖춘 이국적 느낌을 가진 스타벅스 사천벌리점입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-4대 4.주차조건-무료', '도보 : 삼천포터미널 → 삼천포종합운동장(10분 소요)
자동차 : 남해고속도로 → 삼천포종합운동장 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1523, 'T01@T04@T08@T09@T16@T17@T20@T35@T36@P90', 'WHCROAD', '스타벅스만의 특별한 경험과 Drive Thru 의 편리함을 이용할 수 있는 스타벅스 경남사천DT 입니다.', '1.주차가능 2.주차장위치-매장측면 3.주차가능대수-(장애인1대포함)17대 4.주차조건-무료', '사천시내에서 사천공항, 사천IC방면 수석오리사거리 우측 도로변 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (387, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40@P80', 'WHCROAD', '쇼핑의 즐거움과 커피한잔의 여유로움을 활기가 넘치는 스타벅스 양산이마트점에서 느껴보세요^^', '1.주차가능 2. 주차장위치: 마트건물 지상주차장 3. 주차가능대수:1000대이상 4.주차조건: 구매영수증당 2시간무료 5.주차요금정산: 근무파트너에게 요청', '부산지하철 2호선 양산역 1번출구 양산이마트 1층', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (710, 'T04@@T08@T09@T16@T17@T20@T21@T30@T36@P20@P70@P80', 'WHCROAD', '양산신도시 범어지구에 위치한 양산범어점 에서 편안한 일상의 여유로움을 느껴보세요.', '1.주차가능 2.건물지히주차장 3.총40대 4. 구매금액당 조건부무료(만원이하1시간/만원이상2시간) 5.무료주차필요시 파트너에게 요청', '부산 지하철 2호선 남양산(범어)역 하차 후 1번 출구 방향 도보 7분 거리 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (906, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P60@P80', 'WHCROAD', '양산 도심 속 설렘과 따뜻함을 전해드리는 양산터미널점입니다.', '1.주차가능 2.건물2F옥상주차장 3.총 32대 4. 30분무료주차가능(초과분 30분당 1000원유료결제) 5.출차시 구매영수증에 입점업체 도장확인후 초과분유료결제', '부산 지하철 2호선 양산역 1번출구에서 도보 5분 거리, 양산시외버스터미널 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1227, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '동양산의 핫플레이스 , 여유로운 일상을 즐길수 있는 스타벅스 양산덕계DT점입니다.', '1.주차가능 2. 매장후면 전용주차장 3. 총 22대 4. 주차이용객 증가에 따른 주차면수부족으로 2시간이내 이용협조', '부산고속버스터미널(지하철1호선 노포역)에서 울산방향 시내/시외버스 승차/ 덕계다리 정류소에서 하차 후 웅상대로변으로 나오시면
횡단보도 맞은편 GS칼텍스 주유소 바로옆에 위치', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1329, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '안녕하세요, 양산물금신도시의 새로운 핫플레이스로 주목받고 있는 스타벅스 양산가촌점입니다.', '1.주차가능 2. 매장후면 전용주차장 3. 총 14대 4.무료주차 (주차장협소로 2시간이용가능하며 만차시 CGV 인근 공영주차장 이용가능)', '부산지하철 2호선 증산역에서 하차후 맞은편 우성스마트시티APT 쪽으로 이동, 양우내안에 APT 방향으로 1200 M 직진 
(도보 10분거리/ 양우내안에 1차 APT 정문 바로 맞은편에 위치)', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1471, 'T04@T05@T08@T09@T16@T17@T20@T30@T35@T36@P80@P90', 'WHCROAD', '양산신도시의 차별화된 서비스와 고품격 커피의 여유로움을 마음껏 즐겨보세요', '1.주차가능 2.건물 지하주차장 3. 주차가능대수:1000대이상 4. 무료이용가능 5. 현재 별도정산절차 없음 (추후변동가능성 있음)', '부산지하철2호선 증산역 1번 출구 횡단보도 건너편 라피에스타 1층
양산 시내버스 8번,17번,38번,16번,128번,132번,137번,1300번 증산역 하차 후 도보 10M이내


', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1519, 'T01@T04@T07@T08@T09@T16@T17@T20@T36@P90', NULL, NULL, '1.주차가능 2. 매장후면 전용주차장 3. 총 33대 4.무료주차 (2시간이용가능)', '- 대중교통 23,23-1,24-1,38,132 ,1100,1200번 버스 "석산마을" 하차 후 양산방면 도보 2분
', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2200', '0700-2300', '0700-2200', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (32, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P90', NULL, '특별한 스타벅스 경험을 고객 한 분, 한 분에게 한잔의 음료를 통해 전달하는 진주경상대점입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-5대 4.주차조건-무료', '국립 진주경상대학교 정문 앞', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (647, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36@P20@P90', 'WHCROAD', '쾌적한 공간, 편안한 서비스로 고객에게 최고의 감동을 전하는 진주신안점입니다.', '1.주차가능 2.주차장위치-매장후측면 3.주차가능대수-6대 4.주차조건-무료', '진주교육대학교에서 진양호 방향 60M거리, 복음병원 맞은편', 'N', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0800-2130', '0830-2130', '0830-2130', '0830-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (728, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '진주 시내의 중심이라 할 수 있는 진주중안점에서 커피 한 잔의 여유를 선사합니다.', '1.주차불가능', '진주 시내 중앙로터리에서 진양호 방면 대로 오른편 롯데시네마 뒤', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (801, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P60@P90', 'WHCROAD', '편안한 서비스와 쾌적한 공간으로 최고의 스타벅스 경험을 제공하는 경남과기대점입니다.', '1.주차불가능', '- 진주고속버스터미널에서 경남과기대방면 도보로 160m(2분)
- 진주시외버스너미널 시내버스 이용 시 고속버스터미널 정류장 하차 버스번호 : 340, 341, 342, 343', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1000, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '진주 최초의 Drive Thru 매장! 특별한 서비스를 경험할 수 있는 진주칠암DT점입니다 .', '1.주차가능 2.주차장위치-매장측면 3.주차가능대수-(장애인1대포함)6대 4.주차조건-무료', '(구)진주역에서 진주IC방면 세란병원 옆 
시내버스 이용시 가좌동 방면 세란병원 정거장 하차', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1029, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '모던한 인테리어로 편안하고 아늑한 분위기의 진주평거점 입니다.', '1.주차가능 2.주차장위치-입점건물 지하주차장 3.주차가능대수-(장애인 2대포함)30대이상 4.주차조건- 금액무관1시간무료 5.주차요금정산방법-파트너에게요청', '-서진주 IC톨게이트에서 진양호방면 10호광장 교차로 BYC빌딩 1층

-진주 시내버스 120,127,250,251,284,296번 탑승
한보하이타운 정류장 하차 맞은편 BYC빌딩 1층
', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0800-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1686, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', 'WHCROAD', '다채로운 커피와 함께 특별한 순간, 풍요로운 일상을 전해드리는 창원유니시티점 입니다.', '1.주차가능 2.주차장위치-입점건물 지하 3.주차가능대수-100대이상 4.주차조건-조건부무료(조건미정)', '중동 유니시티 어반브릭스 상가 1층', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (464, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '아름다운 호수를 품은 문화와 예술의 중심지! 창원용지호수점 입니다.', '1.주차가능 2.주차위치- 매장전면 3.주차대수- 9대 4.주차조건-무료', '성산아트홀 삼거리 성산아트홀 맞은편에 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (570, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36@P20@P60@P90', 'WHCROAD', '커피와 문화의 복합공간 스타벅스 경남대점입니다.', '1.주차가능 2.주차장위치-입점건물 지하1,2층 3.주차가능대수-(장애인1대포함)30대 4.주차조건-조건부무료(구입금액무관 영수증 제시시 1시간무료) 5.주차정산방법-주차확인도장 파트너에게 요청', '경남대학교 앞 월영광장에서 월영마을 방면 200M 지점, 도보 5분', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (131, 'T04@T05@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '창원의 중심에서 다양한 쇼핑과 편안한 휴식이 있는 공간! 창원시티세븐점입니다.', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 1,000대 4.주차조건-무료', '창원 시티세븐몰 지상 1층 안내 데스크 뒤편', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (69, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑의 즐거움이 배가 된다! 백화점 속 문화 공간 신세계 마산점!', '1.주차가능 2.주차장위치-백화점주차장 3.주차가능대수-100대이상 4.주차조건-무료', '신세계백화점 마산점 B1 에스컬레이터 입구', 'N', '1100-2000', '1100-2000', '1100-2000', '1100-2000', '1100-2030', '1100-2030', '1100-2030', '1100-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (95, 'T03@T04@T05@T08@T09@T16@T17@T20@T21@T26@T29@T30@T34@T36@T40', 'WHCROAD', '다양한 추출기구,고품질의 리저브커피, 싱그러운 티바나티를 함께 즐기수 있는 스타벅스 창원상남동R점입니다.', '1.주차가능 2.주차위치- 건물주차장 3.주차대수- 23대 4.주차조건- 30분 무료(도장확인), 초과 시 1시간 1500원', '창원롯데백화점 다음 블록 / 은아아파트 맞은 편 하나은행 뒤 빨간벽돌건물 1층', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (624, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '번화가의 중심 창원상남중앙점에서 생활의 활기를 느껴보세요.', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 36대 4.주차조건-1시간 무료(매장등록), 초과 시 1시간 1000원', '한마음병원에서 상남시장까지 230M 도보10분, 상남시장입구 맞은편 도보 3분', 'N', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (635, 'T04@T05@T08@T09@T16@T17@T20@T21@T22@T30@T32@T34@T36', 'WHCROAD', '경남권에서 유일하게 NITRO콜드브루 판매매장! 시원하고 청량감 넘치는 창원 리베라점입니다.', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 270대 4.주차조건-1시간 무료(주차권확인), 초과 시 30분 1000원', '창원롯데백화점 본관에서 공단방면으로 도보 3분 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (727, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P60', 'WHCROAD', '일상 속의 커피 한 잔을 선사하는 창원팔용점', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 35대 4.주차조건-1시간 무료(도장확인), 초과 시 30분 1000원', '팔용동 주민센터에서 창원대로 방향으로 110M 직진', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (738, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '벚꽃 내음 가득한 스타벅스 진해용원점입니다.', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 12대 4.주차조건-무료 (주차공간 협소)', '웅동 농협 하나로마트 옆', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (885, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '생활 속 작은 여유를 즐길 수 있는 곳, 창원상남사거리점입니다.', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 43대 4.주차조건-1시간 무료(주차권도장), 초과 시 30분 1000원', '상남분수광장에서 
고인돌 사거리방향으로 직진 후, 좌측 대동아파트 방면 70m 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (896, 'T04@T05@T07@T08@T16@T17@T20@T30@T36@P60', NULL, '젊음의 거리에서 만나는 한 잔의 커피, 마산터미널점입니다.', '1.주차불가', '마산시외버스터미널 입구에서 도보 100M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1074, 'T04@T05@T07@T08@T16@T17@T30@T36@P70', 'WHCROAD', '삼성창원병원 속의 쉼터! 작은 여유와 마음의 안식처가 되어드립니다.', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 820대 4.주차조건-유료/30분 700원, 15분 초과 시 400원 추가', '삼성창원병원 신축 1층', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0700-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1230, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@P50', 'WHCROAD', '마창대교와 시원한 바다의 풍경을 즐길 수 있는 창원마창대교점 입니다.', '1.주차불가 (매장전면 공영주차장 외 인근주차 가능)', '버스 이용시 216번, 257번 이용 후 용호 버스정류장 하차 
', 'N', '1000-2300', '1000-2300', '1000-2300', '1000-2300', '1000-2400', '1000-2400', '1000-2300', '1000-2400');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1238, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '가끔은 내리지 않고 즐기셔도 좋습니다. 차안 가득히 퍼지는 커피향과 여운을 창원호계DT점에서 함께 태워가세요', '1.주차가능 2.주차장위치-매장측면 3.주차가능대수-15대 4.주차조건-무료', '마산방면에서 매장 버스이용 : 호계농협 하차
함안방면에서 매장 버스이용 : 호계농협(가고파정비앞) 하차', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1312, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P60', 'WHCROAD', '새롭고 특별한 스타벅스만의 Drive Thru의 경험을 창원역DT점에서 전해드립니다.', '1.주차가능 2.주차위치- 매장주차장 3.주차대수- 16대 4.주차조건-무료', '창원역 맞은편 소반 음식점 바로 옆, 1-2층 도보 183m 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1310, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '안녕하세요. 바쁜 일상 속 편리한 서비스로 커피 한 잔의 여유와 감동을 전하는 스타벅스 진해자은DT점 입니다.', '1.주차가능 2.주차위치- 매장주차장 3.주차대수- 14대 4.주차조건-무료', '예인여성병원 옆 건물 (도보 1분, 85m)
', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1416, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피한잔의 여유와 빠르고 편리한 DT(Drive Thru)를 경험할 수 있는, 여기는 마산해안대로DT점 입니다.', '1.주차가능 2.주차장위치-매장후측면 3.주차가능대수-(장애인1대포함)45대 4.주차조건-무료', '- 어시장 복국거리 버스 정류장 하차
- 웨딩그랜덤, 탑마트 100M(도보 1분)
', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1454, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P60@P90', 'WHCROAD', '맛있는 커피와 함께 떠나는 여행의 설레이는 마음을 전하는 마산역DT점입니다.', '1.주차가능 2.주차위치- 주차타워 3.주차대수- 30대 4.주차조건-1만원이상 구매 시 2시간무료 (초과 시 30분당 1,000원)', '마산시외버스터미널에서 마산역 방향, 600m에 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1507, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', NULL, '고객님의 일상에 기분좋은 휴식을 선물할 스타벅스 창원상남로점 입니다', '1.주차가능 2.주차위치- 지하주차장 3.주차대수- 51대 4.주차조건-1시간무료', '상남동 국민은행 사거리, 다이소(5층) 창원상남본점 건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1536, 'T01@T04@T08@T09@T16@T17@T20@T34@T35@T36@P90', 'WHCROAD', '교통의 중심에서 느끼는 일상속 커피한잔의 여유와 편리한 DT를 경험 할 수 있는 스타벅스 마산회원DT점 입니다.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-6대 4.주차조건-무료', '창원방면 육호광장에서 무학여고 방면 3.15대로변 위치/버스 이용 시 ''무학여고''정류장 이용, 도보 5분 거리', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (461, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '고객님과 스타벅스의 달콤한 연결고리가 되고싶은 스타벅스 통영이마트점입니다.', '1.주차가능 2.주차위치- 매장건물 전면,옥상 3.주차대수- 50대이상 4.주차조건-매장이용시 2시간무료5.주차요금정산방법-2시간 이용에 대해서 파트너에게 요청', '죽림 통영 이마트 내 1층 후문 쪽 위치', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1670, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35@P80', 'WHCROAD', '오랜시간 기다려온 경산의 새로운 매장인 경산임당역DT에서 빠르고 편리한 서비스를 경험해 보세요.', '1,주차가능 2.주차위치: 매장 후면 스타벅스 전용주차장 3.주차가능대수: 37대(장애인 전용3대포함)4.주차조건: 매장이용시 무료 5.주차요금정산: 정산없이 출차', '대구 지하철 임당역 5번출구 도보 10분/
버스이용시 북부동주민센터 앞 하차', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (46, 'T02@T04@T05@T08@T09@T16@T17@T30@T36@P40@P80', 'WHCROAD', '편안함과 즐거움이 가득한 경산이마트점 입니다.', '1. 주차가능 2. 주차장위치:입점건물(이마트 전용주차장) 3. 주차가능대수:100대이상 4. 주차조건:조건부무료(1만원 이상 2시간,3만원 이상 3시간,5만원 이상 최대 4시간 이후 10분간 1천원) 5. 영수증 하단 주차권으로 출차시 무인정산', '경산 E-MART 1층, 여성전용주차장 방면 입구, 푸드코트 쪽', 'N', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230', '1000-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (652, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '대학가의 젊음과 패기를 느낄수 있는 편안한 안식처 대구가톨릭대점 입니다.', '1. 주차가능 2. 주차장위치:매장건물 후면(입점매장 공용주차장) 3. 주차가능대수:20대(장애인 주차1대포함) 4. 주차조건:조건부무료(매장 이용고객에 한해 3시간무료) 5. 주차요금정산방법:파트너에게 요청 후 주차권 발급', '대구가톨릭대 정문 앞 사거리에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (681, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P20@P80', 'WHCROAD', '젊음의 열기와 싱그러움을 듬뿍 느낄 수 있는 공간에서 최고의 서비스로 감동을 전하는 영남대점입니다.', '주차불가(주차장없음)', '지하철 2호선 영남대역 5번 출구 도보 1분', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (821, 'T04@T05@T08@T09@T16@T17@@@@T20@@@T21@T30@T36@P20@P40@P80', 'WHCROAD', '젊은감성과 함께하는 커피한잔의 여유, 영남대중앙도서관점입니다.', '1. 교내 주차가능 2.주차장위치:매장전면 3.주차대수:20대이상 4.주차조건:유료(10분당 300원/토일 및 공휴일 일2천원 ) 5. 주차요금정산방법:출차시 개별정산', '영남대학교 정문에서 약 600M직진 후 영남대학교중앙도서관 내 1층', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-1700', '0900-1700', '0900-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (822, 'T04@T05@T08@T09@T16@T17@@@T20@@@@T21@T30@T36@P20@P40@P80', 'WHCROAD', '젊음과 문화가 공존하는 공간, 영남대 아트센터점입니다.', '1.교내 주차가능 2.주차장위치:매장측면 3.주차대수:20대이상 4.주차조건:유료(10분당 300원/토일 및 공휴일 일2천원 ) 5.주차요금정산방법:출차시 개별정산', '영남대학교 정문에서 약 600m 직진 후 오른쪽에 있는 천마아트센터 그랜드홀(대공연장) 1층위치', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '1030-1700', '1030-1700', '1030-1700');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1216, 'T01@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '경산최초의 Drive Thru로 빠르고 편리한 서비스를 경험할 수 있는 여기는 경산중방DT점 입니다 .차별화된 디지털 감동 서비스로 찾아뵙겠습니다.', '1.주차가능 2.주차장위치: 건물 전면 스타벅스 전용주차장 3.주차가능대수: 14대 4.주차조건: 매장 이용시 무료 5.주차요금 정산방법: 정산없이 출차', '지하철 임당역 2번출구 도보15분
버스 이용시 경산시외버스터미널에서 하차 후 도보5분', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (550, 'T01@T04@T05@T07@T08@@T16@T17@T20@T36@P30', 'WHCROAD', '한국 최초의 DRIVE THRU매장, 경주보문로DT점입니다.', '1.주차가능 2.주차장 위치-매장 전면 3.주차가능대수- 12대 이상 4.주차조건-무료', '보문관광단지 순환도로 힐튼호텔 옆 단독 건물로 위치
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (588, 'T04@T05@T08@T16@T17@@T20@T30@T36@P90', NULL, '천년의 고도 경주에서 도시적이고 세련된 스타벅스를 만나보세요!', '주차 불가능', '경주대릉원 건너편 골목으로 약300m, 메가박스 영화관 맞은편', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (721, 'T01@T04@T05@T08@T09@T16@T17@T20@T30@T32@T36', 'WHCROAD', 'Drive Thru와 전통양식의 재해석으로 꾸며진 CAFE의 차별화된 서비스가 제공되는 곳, 경주보문호수DT점 입니다.', '1.주차가능 2. 주차장위치-매장 후면 3.주차가능대수- 6대 4.주차조건-무료 5.매장 외부 호수앞 공영주차장 무료주차가능', '보문관광단지 순환도로 동궁원과 한화리조트 사이 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (794, 'T04@T05@T08@T09@T16@T17@T20@T30@T32@T36@P90', 'WHCROAD', '천년고도 경주 중심, 아름다운 역사를 간직한 경주대릉원점입니다.', '1.주차가능 2.주차장위치-매장 전면 3.주차가능대수-15대 4.주차조건- 무료', '경주 대릉원 신라회관 버스정류장 바로 앞.', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (978, 'T04@T05@T08@T16@T17@T20@@T21@T30@T36', 'WHCROAD', '경주 최대의 주거단지와 공원이 인접해 있는 스타벅스 경주황성점에서 최고의 서비스와 커피를 즐겨보세요.', '주차불가능', '51번 버스 황성공원 하차 (황성공원 맞은편 도보3분)', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1068, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P60', 'WHCROAD', '경주여행의 시작과 끝을 경주터미널DT점과 함께 하세요.', '1.주차가능 2.주차장위치-매장전면 3.주차대수-8대 4.후면 유료주차장 이용시 구매시 최대2시간 무료/시간초과시 고객부담(1시간1,000원)', '경주시외버스 터미널 맞은편 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1351, 'T04@T05@T08@T09@T16@T17@T20@T30@T36', NULL, '환영합니다. 경주보문단지의 사계절을 느끼며 쉬어갈수 있는 공간. 경주보문점입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-15대(장애인1대포함) 4.주차조건-무료', '경상북도 경주시 보문로 537(천군동)1F~2F
경주월드 & 캘리포니아비치 맞은 편 위치', 'N', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '1000-2000', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1704, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35', NULL, '바쁜일상 속 편안한 휴식이 있는 구미확장단지점 입니다.', '1. 주차가능 2. 주차장 위치 - 매장입점 건물 지하 주차장 3. 주차가능대수 - 10대 이상 4. 주차조건 - 조건부 무료 (영수증 1만원 이상 1시간 30분 무료) 5. 주차요금 정산방법 - 정산없이 출차', '- 시내버스 ''물내음 공원입구건너'' 하차 도보 4분 (192번, 890번, 910번)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (467, 'T04@T05@T07@T08@T09@T16@T17@@T20@T21@T30@T36', 'WHCROAD', '바쁜일상 속 편안한 휴식이 있는, 구미공단점입니다.', '1. 주차가능 2. 주차장 위치 - 입점건물(한라시그마벨리) 지하주차장 3. 주차가능대수 - 50대 이상 4. 주차조건 - 조건부 무료 (매장 이용 시) 5. 주차요금 정산방법 - 정산없이 출차', '순천향병원에서 한화 구미사업장 (구 삼성제1공장) 쪽으로 500m지점 오른쪽 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '1000-2100', '1000-2100', '1000-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (98, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '인동 번화가 중심에 위치해 출,퇴근시 방문이 편리,매장내는 아늑한 멋이 있는 스타벅스 구미인동점 입니다.', '1. 주차불가능', '구미인동 메가박스 영화관 건너편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (123, 'T04@T05@T08@T16@T17@T20@T30@T36@P60', 'WHCROAD', '아름다운 미소,친근한 대화,편안한 공간을 만들어드리는 구미점 입니다.', '1. 주차불가능', '구미역에서 롯데시네마 방향으로 150m 대로변', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (708, 'T01@T04@T05@T08@T09@T16@T17@T20@T30@T32@T36', 'WHCROAD', '구미 최초 Drive Thru 매장인 스타벅스 구미금오산DT점에서 새로운 경험을 해보세요.', '1. 주차가능 2. 주차장 위치 - 매장 후면 공용주차장 3. 주차가능대수 - 30대 이상 4. 주차조건 - 조건부 무료(매장 이용시) 5. 주차요금 정산방법 - 정산없이 출차', '구미역에서 금오산 공영 주차장 방향으로 300m 지점', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (813, 'T04@T05@T08@T09@T16@T17@T20@@T21@T30@T36', 'WHCROAD', '통유리 전경에 따뜻한 햇살이 가득한 곳입니다. 일상의 휴식과 파트너의 친절함을 느낄수 있는 구미인의점입니다.', '1. 주차가능 2. 주차장 위치 - 매장입점 건물 지하 주차장(ABC마트 오른쪽에 출입구 위치) 3. 주차가능대수 - 30대 이상 4. 주차조건 - 조건부 무료 (영수증 1만원 이상 1시간 30분 무료) 5. 주차요금 정산방법 - 정산없이 출차', '삼성전자 후문 도보 10분, 인동우체국 옆 또는 인동파출소 정류장 맞은편
', 'N', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100', '0930-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (975, 'T01@T04@T05@T07@T08@T16@T17@T20@T36', 'WHCROAD', '구미의 중심인 시청이 위치한 송정동에서 Drive Thru가 가능한 구미시청DT점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 2대 4. 주차조건 - 조건부 무료 (매장이용 시 무료)', '[자차이용시]
구미IC 구미시청과 형곡네거리 사이 (5분소요)

[대중교통 이용시]
구미역 정류장 171번 승차후, 형곡네거리 정류장 하차 (구미시청방면 도보 1분)
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1044, 'T04@T05@T07@T08@T16@T17@T20@@T21@T30@T36@P90', 'WHCROAD', '산업과 주거의 중심 옥계! 스타벅스 구미옥계점에서 커피 한잔의 감동을 경험해 보세요.', '1. 주차불가능', '4공단입구 정류장에서 옥계북로 동아문구센터 방면으로 도보 3분 소요', 'N', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300', '0900-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1412, 'T01@T04@T05@T08@T09@T16@T17@T20@T35@T36@P70@P90', 'WHCROAD', '구미의 3번째 Drive Thru, 새로운 랜드마크로 거듭날 구미도량DT점이 여러분들을 기다립니다.', '1. 주차가능 2. 주차장 위치 - 매장우측 전용주차장 3. 주차가능대수 - (장애인 1대 포함) 6대 4. 주차조건 - 조건부 무료 (스타벅스 이용 시 1시간 무료)', '[대중교통 이용 시] 
버스 21, 53, 57, 이용 후 "주공5단지" 정류장 하차, 도보 5분
[자차 이용 시] 
구미IC 이용 ''한국도로공사구미지사'' 방면 오른쪽 방향, ''김천, 선산, 구미보, 도량동'' 방면 좌회전후 4km 직진
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1459, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피한잔의 여유와 빠르고 편리한 DT(Drive Thru)를 경험할 수 있는, 여기는 구미상모DT점 입니다.', '1. 주차가능 2. 주차장위치 - 매장후면 전용 주차장 3. 주차가능대수 - (장애인 2대 포함) 30대 4. 주차조건 : 조건부 무료 (1만원 이상 결제 시 1시간 무료)', '[대중교통 이용시]
160, 360 탑승 후 ''상모우방2단지 앞 정류장'' 하차 후 금오대로 방면 50m 후 우회전 147m

[자차 이용시]
임은삼거리에서 왜관방면으로 좌회전 후 금오대로 따라 645m 이동 시 우측에 매장 위치', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1039, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '커피한잔의 감동을 드리는 김천 첫번째 매장! Drive Thru가 가능한 김천시청DT점입니다.', '1. 주차가능 2. 주차장 위치 - 매장우측 전용 주차장 3. 주차가능대수 - (장애인 1대 포함) 10대 4. 주차조건 - 조건부 무료 (1만원 이상 구매 시 1시간 무료)', '이마트에서 강변조각공원방면 도보 5분,
신음 현대아파트 맞은 편', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1130, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P60', 'WHCROAD', 'KTX와 김천혁신도시의 만남! 스타벅스 김천구미역점이 여러분을 기다리겠습니다', '1. 주차가능 2. 주차장위치 - 입점건물 지하주차장 3. 주차가능대수 - 10대 4. 주차조건 - 조건부 무료 (1만원 이상 구매시 1시간 무료) 5. 주차요금 정산방법 - 정산없이 출차', '김천구미역 정문에서 직진 5분거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (771, 'T04@T05@T08@T16@T17@T20@T30@T36', 'WHCROAD', '문경새재 도립공원에서 산책 후 스타벅스 문경새재점에서 휴식을 즐기세요.', '1. 주차불가능 (특이사항 : 매장전면 문경새재도립공원 입구 주차장 이용시 일일주차비 2,000원)', '문경새재도립공원 주차장 앞', 'N', '0900-1900', '0900-1900', '0900-1800', '0900-1800', '0900-1800', '0900-1800', '0900-1800', '0900-1800');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (835, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '한국정신문화의 수도 안동, 안동옥동점에서 일상의 휴식과 편안함을 즐기세요.', '1. 주차가능 2. 주차장 위치-매장 뒷편 주차타워(경상북도 안동시 옥동 787-3번지) 3. 주차가능대수 -20대 4. 주차조건-조건부 무료(영수증 1만원이상 2시간 무료) 5. 주차요금정산방법-파트너에게 요청', '옥동사거리 옥동빌딩 맞은 편(구, 서창당 약국)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (924, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '젊음과 자유의 랜드마크 안동의 중심지에 위치한 안동시청점에서 쇼핑의 즐거움과 커피한잔의 여유로움을 즐겨보세요.', '1. 주차불가능', '안동보건소 옆, 목성교 사거리 대로변에 위치
안동역 (기차역) 도보 10분 거리 (623M)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1583, 'T04@T05@T08@T16@T17@T20@T30@P70', 'WHCROAD', '커피 한 잔의 여유와 따뜻함이 있는 스타벅스 안동병원점입니다.', '1. 주차가능 2. 주차장 위치 - 병원 지상1층, 지하1층 3. 주차가능대수-50대 이상 4. 주차조건 -무료', '안동병원 1층 정문 우측', 'N', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000', '0700-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1614, 'T04@T08@T16@T17@T20@T30@T32@P40', 'WHCROAD', '쇼핑중 한걸음 쉬어갈 수 있는, 향기로운 커피향이 가득한 곳, 특별한 스타벅스 경험을 제공하겠습니다.', '1. 주차가능 2. 주차장 위치-이마트2-4층 3. 주차가능대수-100대이상 4. 주차조건-무료', '이마트 안동점 1층 위치', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (960, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '도심의 그늘에서 한잔의 커피와 함께 여유를 즐겨보세요', '1.주차가능(입점건물주차장) 2. 주차장위치-입점건물전면 / 입점건물 후면 주차3. 주차가능대수-6대 4. 주차조건-조건부무료, 입점건물전면주차_매장이용 시 무료 / 매장후면주차시-30분무료,이후요금부과', '1. 아웃백 남포항점 맞은편
2. 102, 107번 버스 kt포항지사 하차 후 기독병원쪽 사거리에서 대도동방면 모서리 위치 (도보 1분)', 'N', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (556, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T32@T35@T36@P90', 'WHCROAD', '시원한 전망, 편리한 주차, 향긋한 커피를 즐길 수 있는 포항시청점입니다.', '1. 주차가능 2. 주차장위치-매장후면(코아이비인후과전용주차장이용가능) 3. 주차가능대수-10대 4. 주차조건-조건부무료(스타벅스이용시무료) 5. 주차요금정산방법-파트너에게요청(영수증에도장찍음)', '포항시청 앞 코아이비인후과 건물 1층
*버스 : 130, 108번 시청하차', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '1000-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (332, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P60', 'WHCROAD', '문화생활과 더불어 편안한 좌석, 행복한 경험을 선사해드리는 포항애비뉴점입니다.', '1.주차가능 2.주차장위치-입점건물지하1층~2층 3.주차가능대수 -10대이상 4.주차조건-무료', '포항시외버스터미널 옆 그랜드애비뉴 1층', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (620, 'T02@T04@T05@T08@T09@T16@T17@T30@T36@P40', 'WHCROAD', '쇼핑의 즐거움과 편안한 휴식공간! 포항이마트점 스타벅스에서 느껴보세요 ~', '1. 주차가능 2. 주차장위치 - 이마트 1층 주차장 , 건물 옥상 주차장 3. 주차가능대수 10대이상 4. 주차조건 - 무료', '포항 E-MART 1층, 입구쪽 푸드코트 방면', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (876, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '생활과 가치의 중심, 밝은 웃음과 진한 커피향이 넘치는 도심 속 휴식처 포항대이점입니다.', '1.주차불가능', '대구은행 옆 포스코대로 서쪽 도보 2분 명은빌딩 1층
(버스 : 108, 130, 131 이동온천스포렉스 하차)', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (988, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '포항의 떠오르는 젊은 주거상권에 위치한 포항오천점입니다.', '1.주차불가능', '문덕사거리에서 원동초등학교 방면 도보 150m
(준양참마을아파트 앞 도로변 위치)', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1316, 'T01@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '포항 젊음의 거리에서 빠르고 편한 Drive Thru를 포항쌍용DT점에서 경험해보세요.', '1. 주차가능 2. 주차장위치-매장전면 3. 주차가능대수-(장애인1대포함)10대 4. 주차조건-매장 이용 시 무료', '포항 시외버스 터미널에서 오광장 방면 대로변 우측에 위치.
교보생명 포항중앙지점 맞은 편.', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (360, 'T04@T05@T08@T09@T16@T17@T20@T30@T36@P50', NULL, '낮에는 영일대 바닷가의 전경, 밤에는 포스코의 야경을! 맛있고 향긋한 커피, 감동적인 서비스를 제공하는 포항영일대비치점입니다.', '1.주차가능 2.주차장위치-입점건물측면 3.주차가능대수-6대 4.주차조건-매장 이용 시 무료', '포항 영일대해수욕장 입구 세븐일레븐 편의점 옆', 'N', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (756, 'T04@T05@T08@T16@T17@T20@T30@T36', 'WHCROAD', '따뜻한 커피와 감동의 서비스 그리고 완벽한 제 3의 공간, 포항의 중심', '1. 주차불가능', '포항 북포항 우체국 바로 옆', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (918, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '포항의 떠오르는 신도시 포항양덕에서 오아시스같은 커피한잔을 선사하겠습니다.', '1.주차가능 2.주차장위치-매장후면 3. 주차가능대수-7대 4. 주차조건-매장 이용 시 무료', '농협 하나로마트 정문 맞은편 단독건물에 위치 (도보 2분)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1187, 'T01@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '빠르고 편한 포항 최초의 DRIVE THRU 매장인 포항장성DT점에서 특별한 서비스를 경험해 보세요', '1. 주차가능 2. 주차장위치-매장전면 3.주차가능대수-3대 4. 주차조건 - 매장 이용 시 무료', '108번 승차 후 두산위브정류장 하자,
맥도날드 방면으로 도보 2분', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1575, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@P70@P90', 'WHCROAD', '새롭고 특별한 스타벅스만의 Drive Thru의 경험을 포항죽도DT점에서 전해드립니다.', '1. 주차가능 2. 주차장위치-매장측면 3. 주차가능대수-(장애인1대포함)7대 4. 주차조건-매장이용 시 무료', '포항철길숲 맞은편 , 세명고등학교와 쌍용자동차전시장 사이 도로변 위치', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1127, 'T01@T05@T07@T08@T09@T16@T17@T20@T22@T36', NULL, '사계절이 행복한 도시,전남 광양의 첫 스타벅스를 Drive Thru로 만나보세요!', '1. 주차가능 2. 주차장 위치-매장 측면 3. 주차가능대수-13대 4. 주차조건-무료', '시청사거리에서 미래여성의원 방향 500m 전방 대로변 위치 
(미치과의원 옆)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1680, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '환영합니다. 한 잔의 음료, 한 분의 고객에게 정성을 다하는 스타벅스 나주혁신DT점입니다.', '1.주차가능 2.주차장위치-매장후면 3.주차가능대수-지상 1층 (장애인 2대 포함)48대, 지하 1층 90대. 4.주차조건-무료', '자차) 전라남도 나주시 빛가람로 838
나주부영CC 북쪽 800m - 송림리 방향 우회전 200m 상 위치
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1142, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36', 'WHCROAD', '따뜻한 커피 한잔의 여유를 드립니다.', '1.주차가능 2.주차장위치-입점건물지하 3.주차가능대수-(장애인 7대 포함)172대 4.주차조건-무료', '한국전력공사에서 빛가람 주민센터 방향 도보 5분 정도
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (646, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@P50', 'WHCROAD', '일출과 석양이 아름다운 오션뷰가 인상적인 목포평화광장점에서 아름답고 행복한 추억을 만들어보세요.', '1.주차가능 2.매장 전면 도로 주차 가능 구간 및 인근 공용주차장 이용 가능 3.30 대 이상 4. 무료', '목포 평화광장 샹그리아 호텔 맞은편 도보 5분 거리', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (796, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '목포의 핵심 번화가 중심에 위치한 목포옥암점 입니다.', '주차불가능', '포르모 아울렛 건너편 한화생명건물 1층', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1017, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@P50', 'WHCROAD', '언제나 즐거움이 가득한 여러분의 스타벅스 목포북항DT점 입니다.', '1. 주차가능 2.매장전면 3. 19대 (장애인1대) 4. 무료', '신안 비치 팔레스 아파트 사거리에서 서해안 고속도로 진입 방향으로 우회전 후 200m 직진 (60번, 600번 버스로 종합 사회 복지관 정류장에서 하차, 북항 방향으로 도보 3분거리)
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1173, 'T04@T05@T07@T08@T16@T17@T20@T30@P70', 'WHCROAD', '목포의 중심가에 위치한 목포하당점에서 멋스럽고 향기로운 커피를 즐겨보세요.', '주차불가능', '목포기독병원 옆', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1518, 'T01@T04@T08@T09@T16@T17@T20@T36@P60@P70', 'WHCROAD', '목포 여행의 설레임과 추억을 목포터미널DT점과 함께 하세요', '1.주차가능 2. 건물전면 3. 19대 (장애인1대) 4. 무료', '목포터미널과 목포 한국병원 사이', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (860, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '남악 신도시의 중심에 위치해 있는 목포남악점에서 편안한 분위기와 향기로운 커피를 즐겨보세요.', '1.주차가능 2. 건물후면 3. 20대 (장애인1대) 4. 무료', '전남도청 맞은편. 남악 국민은행에서 우회전하여 50m 거리. 버스이용시 전남도청 정류장에서 하차(버스노선 60번, 1-1번)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (402, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', NULL, '쇼핑의 즐거움과 호수공원의 여유로움을 만끽할 수 있는 편안한 휴식공간 순천조례점입니다.', '1. 주차가능 2. 주차장 위치-건물 후면 3. 주차가능대수-20대 4. 주차조건-무료', 'NC백화점 순천점 맞은편 1,2층', 'N', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0700-2030', '0900-2030', '0900-2030', '0900-2030');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1166, 'T04@T05@T07@T08@T16@T17@T20@T22@T30@T36', NULL, '아름다운 호수공원의 정경과 여유로움을 함께 즐길 수 있는 순천호수공원점입니다.', '주차불가능', '백강로 삼거리방면 호수공원 입구', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1183, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', NULL, '도심속 커피향 가득한 만남의 장소. 모두가 즐거운 이곳은 순천신대점 입니다.', '1. 주차가능 2. 주차장 위치-입점건물 지하 1층 3. 주차가능대수-10대 4. 주차조건-무료 5. 건물공용주차장', '순천 신대지구 신대연세병원 도보 1분거리 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1447, 'T04@T05@T08@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '바쁜 일상 속 커피 한잔의 여유를 느낄 수 있는 공간, 스타벅스 순천연향점 입니다.', '주차불가능', '국민은행 사거리에서 미르치과병원 방향', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (457, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', NULL, '도시적이고 세련된 인테리어와 주변 공원에 인접한 편안한 분위기, 탁 트인 전경이 안정감을 주는 매장, 여수여천점입니다.', '주차불가능', '여천 부영3단지 사거리 거북공원과 흥국체육관 방향', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (745, 'T04@T05@T08@T16@T17@T20@T30@T36', NULL, '여수시내의 중심, 초록의 산뜻한 스타벅스 여수여서점에서 커피 한 잔의 여유를 느껴보세요.', '주차불가능', '여서동 사거리 브린츠 호텔 건너편 1,2층', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1089, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', NULL, '아름다운 도시 여수에서 여수둔덕DT점과 새로운 Drive Thru를 경험해보세요.', '1. 주차가능 2. 주차장 위치-매장 측면/후면/지하 3. 주차가능대수-70대 4.주차조건-무료', '여수 미평 중앙하이츠사거리 쌍용자동차(혹은 유니클로)옆', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1271, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', NULL, '여수 바다의 아름다운 전경을 보며 커피를 즐기실 수 있는 여수웅천점입니다.', '1. 주차가능 2. 주차장 위치-입점건물 지하 1층 3. 주차가능대수-18대 4. 주차조건-무료 5. 건물공용주차장', '호남지방통계청에서 바닷가(마리나항만) 쪽 방향으로 약 500m 거리에 위치', 'N', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130', '0900-2130');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1646, 'T01@T04@T08@T16@T17@T20@T30@T32@T34@T35@P90', 'WHCROAD', '바쁜 일상 속 지친 몸과 마음이 리프레쉬되는 따뜻함과 편안함이 있는 여수학동DT점입니다.', '1. 주차가능 2. 주차장 위치-건물 후면 3. 주차가능대수-3대 4. 주차조건-무료', '여수 시청 맞은편 하이마트에서 약 50m거리에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1520, 'T04@T05@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '낭만의 도시 여수, 여수의 바다를 한눈에 담으며 커피한잔의 여유를 즐기세요.', '주차불가능', '여수낭만포차거리에서 여수해양공원 방향, 해양공원 바로 앞', 'N', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (557, 'T04@T08@T16@T17@T20@T21@T30@T32@P20@P90', 'WHCROAD', '젊음과 활기가 가득한 군산대점 입니다.', '주차 불가능', '군산대 정문 바로 앞', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (460, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P90', 'WHCROAD', '광활한 바다를 품에 안은 군산시, 그 곳에 스타벅스 군산수송점이 여러분을 기다리고 있습니다.', '1. 주차가능 2. 주차장위치 - 매장 후문 3.주차가능대수 4대 4. 주차조건 -없음', '군산시 롯데마트 국민은행 앞에서 좌측으로 300M거리에 위치해 있습니다.', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1570, 'T01@T04@T08@T09@T16@T17@T20@T34@P90', 'WHCROAD', '군산의 첫 Drive Thru 매장인 군산나운DT점에서 일상 속의 여유로움을 즐겨보세요.', '1.주차가능 2.주차장위치 - 매장 옆 주차장 3.주차가능대수 - 7대', '나운동 맥도날드 맞은 편 극동사거리 방면 도보로 2분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (489, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P40@P90', 'WHCROAD', '익산의 보석, 빛나는 영등동, 그 안의 스타벅스, 즐기러 오세요!', '1.주차가능 2.입점 건물 아오아빌딩 지하 1층 3.(장애인 4대 포함) 78대, 4.건물 입점 매장 구매영수증 지참 5.영수증 제시', '익산 롯데마트 맞은편, CGV익산 1층에 위치

* 버스노선(롯데마트앞 제일 1차아파트) 55번, 56번, 57번, 100번, 101번, 103번, 104번, 107번', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1148, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', 'Drive Thru의 편리함을 통해 스타벅스의 특별한 경험을 드립니다.', '1.주차가능 2.매장 전면 위치 3.총 11대 주차 4.무료 5.스타벅스 전용주차장', '영등동 CGV 에서 원광대학교 가는 방향으로 오른편, 나은병원 맞은편, 익산보건소 주변

버스 59번, 100번, 101번, 108번, 222-1번, 555번', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1469, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '넓고 쾌적한 주차공간을 제공하는 스타벅스 익산모현점에서 커피 한 잔의 여유를 만끽하세요.', '1.주차가능 2.매장 측/후면 위치 3.(장애인 2대 포함) 총 32대 4.무료 5.스타벅스 전용주차장', '모현공원 사거리에서 모현동 주민센터 방면 도보 5분', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (524, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T32@T36@P20@P90', 'WHCROAD', '안녕하세요. 생동하는 젊음, 지식 나눔, 제 3의공간을 느끼실 수 있는 전북대점입니다!', '주차불가능', '전북대학교 구정문 대학촌 APT옆 서주빌딩 1,2층 *버스노선 : 165, 3-2, 161, 350, 559, 684, 752번', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1298, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P20@P90', 'WHCROAD', 'Drive-Thru의 편리함과 최상의 서비스를 제공하는 전주덕진광장DT입니다.', '1.주차가능 2.매장 후면 위치 3.총 10대 주차 4.무료 5.스타벅스 전용주차장', '덕진광장 사거리 한나여성병원 바로 옆
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1358, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '쾌적한 제 3의 공간을 조성해 나가는 스타벅스 공기청정 매장, 전주혁신도시점입니다.', '1.주차가능 2.입점 건물 가온빌딩 지하 1층 3.(장애인 3대 포함) 31대 4.무료', 'NH농협 사거리. 전북은행 옆.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1563, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36@P20@P70@P90', 'WHCROAD', 'Drive Thru의 편리함을 통해 스타벅스의 특별한 경험을 드립니다.', '1.주차가능 2.매장 전면 바라보는 방향에서 우측에 위치 3.장애인 주차 1대 포함 총 12대 주차 4.무료 5.스타벅스 전용주차장', '전주덕진소방서 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1492, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피 한잔의 즐거움과 편리한 Drive-Thru를 경험할 수 있는 스타벅스 전주송천DT점 입니다.', '1.주차가능 2.매장 전면 위치 3.총 5대 주차 4.무료 5.스타벅스 전용주차장', '송천역 네거리방향 맥도날드 송천DT점 도보(3분), 우리의원 옆', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1717, 'T04@T08@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', '도심속 커피 한 잔의 여유를 느낄 수 있는 스타벅스 전주신시가지점 입니다.', '1.주차불가 2.주차장위치 - 매장 맞은편 유료주차장', '롯데마트 전주점 맞은편 효자5동 주민센터 옆에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (470, 'T04@T05@T08@T16@T17@T20@T30@T36', 'WHCROAD', '미래를 여는 천년 전주의 편안한 휴식처 전주경원점입니다.', '주차불가능', '전주 씨네 Q , 한성 관광호텔에서 100m 거리에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (764, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '새로운 전북의 중심 전북도청점에서 여유로운 커피 한 잔을 즐겨 보세요.', '1.주차가능 2.주차장위치 - 입점건물 지하 주차장 3. 주차가능대수 - 20대 (장애인1대 별도) 4. 주차조건 -당일영수증 지참시 최대 2시간 (단 입점업체가 많아 주차에는 매우 어려움 있음)', '전북도청사에서 직진으로 400m 앞 사거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2300', '0800-2300', '0800-2200', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (907, 'T03@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '전통 한옥의 아름다움을 커피 한 잔에 담아드립니다. 환영합니다. 전주한옥마을점 입니다.', '주차불가능', '팔달로 풍남문 교차로 사거리', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (916, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '향기로운 커피한잔의 여유를 만끽할수 있는 전주홍산로점입니다.', '1.주차가능 2.주차장위치 - 입점건물 지하 3. 주차가능대수 -15대(장애인주차 2대별도) 4. 주차조건 -무료 (단 입점업체가 많아 주차 어려우며, 매장 옆에 유료 공영주차장 있음)', '전주우체국 맞은편 서희스타힐스에서 전북도청 방향으로 도보 1분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (958, 'T04@T07@T08@T16@T17@T20@T30@T36', 'WHCROAD', '바쁜 일상의 휴식처, 커피향 가득한 스타벅스 전주 중화산점입니다.', '주차불가능', '중화산동 본병원에서 진북터널 방향으로 100m', 'N', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1018, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '지친 일상에서 벗어나 향긋한 커피 한잔의 여유를 느낄 수 있는 전주서신점 입니다.', '1.주차가능 2.매장 후면 리더스 주차장 3.약 10대 주차 가능(자동차키 주차장에서 보관함) 4.영수증당 30분 무료 5.주차장에서 제공하는 주차증에 ''30분 무료주차'' 매장도장 찍은 후 추가요금 발생시에는 주차관리인에게 정산 (30분 초과시 1000원 추가)', '전주 광진선수촌아파트 입구(구 맥도날드 자리)
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (992, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '맛과 멋이 공존하는 전북 최초의 Drive-Thru 전주효자DT점 입니다', '1. 주차가능 2.주차장 위치 - 매장 옆 주차장 3. 주차가능대수 - 17대 (장애인 1대) 4.주차조건 - 무료', '효자동 오펠리스(웨딩캐슬) 옆 위치
홈플러스 효자점 도보(5분), 차량(1분) 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1371, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '환영합니다. 백제대로에서 편리하게 Drive-Thru를 이용할 수 있는 전주백제대로DT점 입니다.', '1.주차가능 2.주차장위치 - 매장뒷편 전용주차장 3.주차가능대수 - 11대 4.주차조건-무료', '백제대로에 위치한 전주병원 앞 위치.
한마음병원.전주병원 버스정류장 도보(1분) 위치.
(구)LG베스트샵', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1374, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '커피한잔의 즐거움과 편리한 Drive Thru를 경험할 수 있는 전주평화DT점입니다.', '1. 주차가능, 2.주차장위치 - 매장 옆 전용 주차장 3. 주차가능대수 (6대), 4. 주차조건 - 무료', '자차 이용시 : 꽃밭정이 네거리에서 순창 방면 모악로 약 915m 이동 후 U턴하여 진입 
대중교통 이용시 : 평화삼성강남아파트 정류장 하차 

', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1225, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '차별화된 서비스로 고객에게 특별한 경험을 전달하는 스타벅스 전북정읍DT점입니다.', '1.주차가능 2. 주차위치 - 매장옆 전용주차장 3.주차가능대수 11대 (장애인 1대 포함) 4.주차조건 - 구매고객에 한해 무료 (매장뒷편 유료 공영주차장 있음)', '1. 버스 이용 시 171번, 122번, 순환 2번 탑승 후 동아철물, 중앙극장 정류서 하차 (정읍학생복지회관 맞은편) 
2. 자동차 이용시 정읍IC 진입 후 남북로 따라 샘골터널 지나기 전 좌측 100m 이내 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1269, 'T01@T04@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '카페에서의 편안함과, 빠르고 편리한 Drive Thru 를 경험 할 수 있는 계룡대로DT점 입니다.', '1.주차가능 2.주차장위치-건물앞 스타벅스 전용 주차장 3.주차가능대수-10대~20대 4.주차조건-스타벅스 이용시 무료', '엄사리 엄사근린공원 맞은편에 위치
버스이용 : 엄사네거리 정류장 하차 (대전에서 계룡방면 정류장)
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (749, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '백제의 도시 공주에서 고풍스러운 분위기의 스타벅스를 만나보세요.', '주차불가능', '신관 사거리 신관 초등학교 방면 코너에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1457, 'T01@T04@T08@T09@T16@T17@T20@T36@P90', NULL, '계룡산의 경관을 한 눈에 볼 수 있고 4계절이 아름다운 공주동학사DT점입니다.', '1. 주차가능 2. 주차장 위치-매장 전면 4대와 주차장입구 지나서 안쪽 별도 주차장 함께 가능 3. 주차가능대수-10대이상 4. 주차조건-조건부 무료(스타벅스 이용시 무료)', '공주 소방서 동학사 119 안전센터 옆', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2100', '0800-2000', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1726, 'T01@T04@T08@T09@T16@T17@T20@T30@T32@T34@T35', NULL, '진한 커피 한잔의 여유를 느끼고, 새로운 Drive Thru를 경험할 수 있는 스타벅스 논산내동DT점 입니다.', '1.주차가능 2.주차장위치-건물옆 스타벅스 전용 주차장 3.주차가능대수-10대~13대 4.주차조건-스타벅스 이용시 무료', '충청남도 논산시 시민로 165 (내동) 
홈플러스 논산점에서 논산고등학교 방향으로 도보 200m', 'Y', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (977, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '논산의 랜드마크로 떠오를 스타벅스 논산중앙점에서 새로운 경험을 함께하세요.', '1.주차가능 2.주차장위치-건물옆 스타벅스 전용 주차장 3.주차가능대수-10대~12대 4.주차조건-스타벅스 이용시 무료', '논산시외버스터미널 뒷편으로 공영주차장 지나 300m (도보 5분)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (694, 'T04@T05@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '소중한 분들의 커피 한잔 한잔마다 즐거움이 담길 당진문예의전당점입니다.', '1. 주차가능 2. 주차장 위치- 매장 후면 주차장 3.주차가능대수- 7대 4. 주차조건-무료', '당진 시청에서 문예의 전당 방향으로 600M (문예의 전당 맞은편 1층)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1501, 'T01@T04@T08@T09@T16@T17@T20@T36', NULL, '도심 속 휴식을 즐길 수 있는 당진지역의 첫 번째 Drive Thru 매장입니다.', '1. 주차가능 2. 주차장 위치- 매장 후면 스타벅스&대보마트 전용 주차장 3.주차가능대수- 10대 이상 4. 주차조건-무료', '당진산업단지사거리 서산 방면 우측에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1579, 'T01@T04@T08@T09@T16@T17@T20@T34@P60', 'WHCROAD', 'Drive Thru의 편리한 이용과 특별한 경험을 느낄 수 있는 충남보령DT점입니다.', '1.주차가능 2.매장후면 전용주차장 3.장애인주차장 2대포함 28 대 4.1시간무료 5.없음', '대천역사거리에서 보령종합터미널 우측방향에 위치하고 있습니다. (보령종합터미널 대각선 방향)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (692, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '편안한 공간, 향기로운 커피, 서산 호수공원의 아름다운 경치까지 감상할 수 있는 서산의 명소 서산호수점입니다.', '1. 주차가능 2. 주차장 위치- 매장 건물 우측 뒷편 공영주차장 3.주차가능대수- 20대 이상 4. 주차조건-무료', '서산 중앙호수공원 입구 주차장에서 호수길 따라 전방 30M', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1368, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '카페에서의 편안함과, 빠르고 편리한 Drive Thru 를 동시에 경험 할 수 있는 서산예천DT점 입니다.', '1. 주차가능 2. 주차장 위치- 매장 전면/측면 주차장 3.주차가능대수- 10대 이상 4. 주차조건-무료', '공림삼거리에서 예천사거리 방향으로 전방 300M (롯데마트 맞은편)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (979, 'T04@@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '바쁜 일상속에서 휴식같은 매장 아산터미널점 입니다.', '주차불가', '아산(온양)터미널 옆 롯데마트 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1169, 'T04@T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '아산의 새로운 휴식공간, 편안하고 기분좋은 여유를 즐길 수 있는 스타벅스 아산용화점', '주차불가', '아산 용화중학교 정문앞 사거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1250, 'T05@T07@T08@T16@T17@T20@T21@T30', 'WHCROAD', '아산지역의 따뜻하고 포근함을 느낄 수 있는 매장', '1. 주차불가', '아산 탕정 삼성트라팰리스 건너편 탕정 119 안전센터 옆에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1463, 'T05@T08@T09@T16@T17@T20@T21@T30@P70@P80@P90', 'WHCROAD', '향긋한 커피로 하루를 시작할 수 있는 아산배방점입니다.', '1.주차가능 2.반드시 건물지하주차장만 이용 (외부 주차장이용금지) 3. 10대이상 4.1시간무료 5.정산전 파트너에게 요청 (정산_출차시 차량인식 후 불가) / 건물 뒤편 공영주차장 무료 이용가능', '아산 배방역 1번 출구로 나와서 도보 6분 거리', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1621, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34@T35@P90', 'WHCROAD', 'Drive Thru의 편리한 이용과 특별한 경험을 느낄 수 있는 아산방축DT점입니다.', '1.주차가능 2.매장측면,후면 3.장애인주차장 2대 포함 30대 4.1시간무료 5.없음', '방축동사거리에서 온양고등학교 방면 500M 우측에 위치하고 있습니다.

▣ 자차 이용 시 : 네비게이션에 “온천대로1392" 검색
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (130, 'T04@@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '빠르게 흘러가는 도심속, 여유로움과 편안함을 한번에 느낄수 있는 이곳! 천안 신부동 스타벅스에서 고객님께 편안한 친구가 되어 드리겠습니다.', '1.주차가능 2.주차장위치-건물내 지하주차장 3.주차가능대수-40대이상4.주차조건-음료 구매 시 주차권(1시간) 1매 제공/기본회차 30분 +무료추차권 1시간', '신부동 포스코 더 샵 1층에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1107, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '천안의 시작을 천안 IC DT점에서 차를타고 편리하게 스타벅스를 경험해보세요 !!', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 4대 4. 주차조건 - 조건부 무료(영수증 1만원 이상 1시간 무료)', '터미널하차 톨케이트 방면으로 직진 도보 7분소요
터미널사거리를지나 직진 천안대로사거리전 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0700-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1202, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P20', 'WHCROAD', '열정과 낭만이 가득한 곳, 붉은 석양아래 스타벅스에서 한가로운 휴식을 즐기세요.', '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - 12대 4. 주차조건 - 조건부 무료(영수증 1만원 이상 1시간 무료)', '호서대학교 천안캠퍼스 정문에 위치', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1295, 'T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '마음을 따뜻하게 하는 스타벅스 커피를 맛볼 수 있는 천안청당점입니다.', '1.주차가능 2.건물지하주차장 3.50대이상 4.무료(변경가능) 5.파트너에게 주차권요청', '천안 동남경찰서 사거리에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1488, 'T03@T05@T08@T16@T17@T20@T21@T22@T26@T29@T30@T40', 'WHCROAD', '리저브 매장의 고품격 서비스를 즐기실 수 있는 천안신부R점입니다.', '1.주차가능2.주차장 위치-신세계충청점 지상 주차장3주차가능대수-100대이상4.주차조건-1시간 무료주차', '신세계충청점 본관3동 2층, 아라리오 갤러리 옆', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (385, 'T02@T04@T05@T07@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '쇼핑의 즐거움과 차한잔의 여유, 편안한 스타벅스 천안이마트점에서 멋진 추억을 만들어 드립니다.', '1.주차가능2.주차장 위치-이마트 주차장3.주차가능대수-100대이상 4.주차조건-영수증당 2시간(중복불가)', '천안시 서북구 쌍용동 이마트천안점 점내 1층에 위치', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (492, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '나만의 따뜻한 햇살을, 나만의 향긋한 커피가 가득한 나만의 제3의 공간 천안두정점입니다.', '1.주차가능 2.주차장 위치-건물 주차장3.주차가능대수-7대4.주차조건- 2시간무료( 구매영수증 차량 1대 적용)', '1호선 두정역 1번출구 (역 앞 2번 버스 노선 이용)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (902, 'T04@T05@T08@T09@T16@T17@T20@T21@T30', 'WHCROAD', '특별한 공간 천안불당점에서 최고의 커피와 파트너를 만나보세요.', '1. 주차가능 2.매장 측면 공터주차장 3. 10대이상 4.1만원이상 1시간 5.파트너에게요청 또는 영수증제출 / 영업시간 이후 출차 불가', '천안불당동 아이파크 아파트 건너편에 위치', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (875, 'T01@T04@T05@@T08@T09@T16@T17@T20@T21@@T30@T32@T36', 'WHCROAD', '천안에 첫 Drive Thru 매장인 천안성정DT매장에서 파트너들과 함께 기분 좋은 경험을 해보세요.', '1. 주차가능 2. 주차장 위치 - 매장 측면 3. 주차가능대수 - 10대 4. 주차조건 - 조건부 무료(영수증 1만원 이상 1시간 무료)', '동서대로 롯데마트, 성정동 고용지원센터 맞은편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1174, 'T05@T07@T08@T09@T16@T17@T20@T21@T30', 'WHCROAD', '한잔의 설렘을 담아 드리는 스타벅스 천안신불당', '1.주차가능 2. 건물지하주차장(후면진입) 3. 10대이상 4.1시간 무료 5.파트너에게 요청(차량번호입력 후 출차가능, 출차시 차량인식후 정산 불가)', '천안시 의회에서 천안아산역 방면으로 도보 5분 거리
', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1242, 'T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '커피향기를 느낄수있는 천안쌍용역점 매장입니다.', '1. 주차가능 2. 주차장 위치 - 매장 후면 지상1층 3. 주차가능대수 - 15대 4. 주차조건 - 조건부 무료(영수증 1만원 이상 1시간 무료)', '쌍용역1번출구,열린이비인후과 건물 1층.', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1343, 'T05@T08@T09@T16@T17@T20@T21@T30@T36@P90', 'WHCROAD', '사랑하는 가족, 연인, 친구들과 함께 스타벅스 천안시청점에서 커피 한 잔의 여유를', '1.주차가능 2.건물지하주차장 or 인근공영주차장 3.10대이상 4.무료 5.영수증제시 / 인근 공영주차장 무료이용가능 50대', '천안시청앞 사거리에서 직진 50m이내', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2100', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1541, 'T01@T04@T08@T09@T16@T17@T20@T21@T34@T36', NULL, '안녕하세요. 편안하고 쾌적한 스타벅스 천안두정역DT점 입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 4대 4. 주차조건 - 조건부 무료(영수증 1만원 이상 1시간 무료)', '지하철 1호선 두정역 맞은 편, 메가박스 옆', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1477, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', 'Drive Thru 의 편리한 이용과 따뜻한 제 3의 공간을 느낄 수 있는 천안서부대로DT점', '1.주차가능 2.매장전면 3.장애인주차장 포함 7대 4.1시간무료 5.파트너에게 요청', '천안시 서북구 서부대로 405.
천안 컨벤션센터옆,
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1499, 'T01@T04@T08@T09@T16@T17@T20@T36', 'WHCROAD', '가족과 함께 따뜻한 제 3의 공간인 천안불당DT점', '1.주차가능 2.매장전면 3.7대 4.1시간무료 5.파트너에게 요청', '갤러리아백화점 센터시티점에서 천안시청방향으로 600m이내, 불당호반써밋플레이스 센터시티아파트 옆', 'N', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0700-2300', '0800-2300', '0800-2300', '0800-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1602, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T34@T36', NULL, '부드러운 풍미의 에스프레소를 느낄 수 있는 천안백석점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 15대 4. 주차조건 - 조건부 무료(영수증 1만원 이상 1시간 무료)', '천안터미널에서 종합운동장 방향의 백석로에 위치함', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1516, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36', 'WHCROAD', '커피한잔과 함께 여유로움을 쇼핑하세요. 스타벅스 천안서북이마트점 입니다.', '1.주차가능 2.주차장위치-이마트 지상 주차장 3.주차가능대수-100대이상 4.이마트이용고객무료 5.없음', '삼성 SDI 공단 맞은 편 이마트 천안서북점 1층에 위치', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1721, 'T04@T08@T09@T16@T17@T20@T21@T30@T32@T34', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 충북혁신도시의 첫번째 매장입니다.', '1. 주차가능 2.주차장위치- 지하주차장 3. 주차가능대수- 26대 4. 주차조건- 스타벅스 이용고객님에 한해 무료(1시간이내)', '한국가스안전공사 본사라인 대로변에 위치(올리브영 옆)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1407, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 제천지역 첫 번째 Drive Thru매장입니다.', '1.주차가능 2.주차장위치-매장 후면 3.주차가능대수-19대 (장애인 2대 포함) 4.주차조건-무료', '중앙교차로에서 세명대학교, 의림지 방면으로 300m 거리 좌측(반대편) 건물', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1535, 'T04@T05@T08@T09@T16@T17@T20@T30@T34', 'WHCROAD', '편안한 공간, 향기로운 커피로 증평의 새로운 휴양지가 되어 줄 스타벅스 충북증평점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 13대 주차 가능(장애인 주차구역 1대 포함) 4. 주차조건 - 스타벅스 이용 고객님에 한해 무료 주차(3시간이내)', '증평 군립도서관 맞은편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (526, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '쇼핑과 문화생활이 만나는 곳! 거기에 향긋한 커피가 함께하는 청주서문점입니다.', '1.주차가능 2.주차장위치-입점건물 지하1층(주차타워형) 3.주차가능대수-41대 (장애인 1대 포함) 4.주차조건-조건부 무료 (영수증 지참시, 1시간 무료주차) 5.주차정산방법-출차시 영수증 제시', '홈플러스 청주성안점 후문 맞은편 1층', 'N', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1341, 'T01@T04@T05@T08@T09@T16@T17@T20@T36', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 청주지역 세 번째 Drive Thru매장입니다.', '1.주차가능 2.주차장위치-매장 측면 3.주차가능대수-8대 4.주차조건-무료', '명암저수지에서 금천동 방면 산성로 우측 (부영 5단지 건너편) 단독 건물에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1460, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 청주지역 다섯 번째 Drive Thru매장입니다.', '1.주차가능 2.주차장위치-매장 전면 3.주차가능대수-6대 (장애인 1대 포함) 4.주차조건-무료', '롯데시네마 청주용암점에서 용암농협 사거리 방면 100m거리에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (563, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@P20', 'WHCROAD', '젊음과 열정이 넘치는 다이나믹 충북대점 입니다.', '1. 주차불가능 (인근에 유료공영주차장 있음)', '충대중문 입구 삼거리에서 정문 방향으로 내려가는 길 50m 지점에 위치 (랄라블라/뚜레주르 맞은편)
', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (983, 'T04@T05@T07@T08@T09@T16@T17@@T20@T21@T30@T36', 'WHCROAD', '최고의 맛과 특별한 감동을 선사하는 도심 속의 힐링 공간', '1. 주차가능 2. 주차장 위치 - 건물옆 공터주차장에 주차 가능 3. 주차가능대수 - 15대 4. 주차조건 - 스타벅스 이용 고객님에 한해 무료(2시간이내)', '모태안 여성병원에서 KBS 방향으로 200m 직진(개신동 맥도날드 대각선 방향 위치)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1448, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 청주지역 네 번째 Drive Thru매장입니다.', '1.주차가능 2.주차장위치-매장 후면 3.주차가능대수-24대 (장애인 2대 포함) 4.주차조건-무료', '사직사거리에서 충청북도청 방면 200m 거리에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1608, 'T02@T04@T05@T08@T09@T20@T30@T32@T34@T36@P40@P90', 'WHCROAD', NULL, '1.주차가능 2.주차장위치-입점건물 2~4층 3.주차가능대수-500대 이상 4.주차조건- 무료', '이마트 청주점 1층 주출입문 앞', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (621, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '호수공원의 아름다운 풍경을 닮은 오창의 첫 번째 매장입니다.', '1. 주차가능 2. 주차장 위치 - 건물 뒷편 주차장에 주차가능 3. 주차가능대수 - 8대 한정 4. 주차조건 - 스타벅스 이용 고객님에 한해 무료(2시간이내)', '오창 호수공원 버스 정류장(오창 과학단지 종점방면) 맞은 편', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (995, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T36', 'WHCROAD', '충북지역 최초 Drive Thru ! 특별한 서비스를 경험할 수 있는 청주율량DT점입니다.', '1.주차가능 2.주차장위치-매장전면 3.주차가능대수-4대 4.주차조건-무료', '청주 그랜드플라자 호텔 (구.라마다호텔) 건너편', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2230', '0730-2230', '0730-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1134, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '호수공원의 아름다운 풍경을 닮은 오창의 두 번째 매장입니다.', '1. 주차가능 2. 주차장 위치 - 건물내 지하 주차장 3. 주차가능대수 - 50대이상 4. 주차조건 - 스타벅스 이용 고객님에 한해 파트너에게 주차증을 받아서 정산( 4시간)', '홈플러스 오창점 옆 LK트리플렉스Ⅱ 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (409, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@P60@P90', 'WHCROAD', '복합쇼핑몰에 위치하여 쇼핑과 휴식을 한번에 즐길 수 있는 제 3의 공간, 청주터미널점입니다.', '1. 주차가능 2. 주차장 위치 - 매장 건물내 지하주차장 3. 주차가능대수 - 100대이상 4. 주차조건 - 매장내 테블릿 PC에 차량 번호 등록(2시간)_금액 무관', '청주시외 버스 터미널 건너편에 위치한 롯데마트 청주점 내에 위치
(메가폴리스 1층)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (542, 'T04@T05@T07@T08@T09@T16@T17@T20@T30@T32@T36@P40', 'WHCROAD', '충북 청주의 랜드마크인 현대백화점내 위치한 스타벅스, 현대충청점입니다!', '1. 주차가능 2. 주차장 위치 - 건물내 지하주차장 3. 주차가능대수 - 100대이상 4. 주차조건 - 매장내 테블릿 PC에 챠량번호 등록 1시간 무료주차 가능(금액 무관)', '현대백화점 충청점 U-Plex 지하 1층 위치
# 휴점일: 현대백화점 충청점 휴점일과 동일합니다
', 'N', '1030-2030', '1030-2030', '1030-2030', '1030-2030', '1030-2100', '1030-2100', '1030-2100', '1030-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (356, 'T04@T05@T08@T09@T16@T17@T20@T30', 'WHCROAD', '보다 편안하고 아늑한 곳, 그리고 향기로운 커피와 귀를 즐겁게 해주는 음악이 함께하는 청주지웰시티점입니다.', '1. 주차가능 2. 주차장 위치 - 건물내 지하 주차장 3. 주차가능대수 - 100대이상 4. 주차조건 - 매장내 테블릿 PC에 차량 번호 등록(2시간)_금액 무관', '대농지구내 주상복합 지웰시티몰 상가 1층', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (755, 'T04@T05@T08@T16@T17@T20@@T21@T30@T36@P60', 'WHCROAD', '바쁜 일상 속에서 편안한 안식처가 되는 청주강서점입니다.', '1. 주차 불가능', '청주 고속 터미널 건너편(시외버스 터미널 대각선 방향) 
그랜드모터스 전시장 맞은편 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1059, 'T01@T04@T05@T07@T08@T09@T16@T17@T20@T36', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 청주지역 두 번째 Drive Thru매장입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능대수 - 5대 4. 주차조건 - 스타벅스 이용 고객님에 한해 무료(2시간이내)', '청주농수산물 시장방향 동명주유소 우측 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1332, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36@P60', 'WHCROAD', '설레이는 여행의 시작과 편안한 일상이 함께하는 오송의 첫번째 매장입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능 대수 - 15대(장애인 1대 포함) 4. 주차조건 - 스타벅스 이용 고객에 한해 무료(3시간이내)', '오송역에서 오송생명과학산업단지 방면 만수교차로에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1599, 'T01@T04@T08@T09@T16@T17@T20@T21@T30@T32@T34', NULL, '도심 속 휴식을 즐길 수 있는 Drive Thru 매장입니다.', '1. 주차가능 2. 주차장 위치 - 매장 전면 3. 주차가능 대수 - 8대 4. 주차조건 - 스타벅스 이용 고객님에 한해 무료 주차(2시간이내)', '서청주IC - 청주터미널 방면 대로변에 위치', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (603, 'T04@T05@T08@T16@T17@T20@T21@T30@T32@T36', 'WHCROAD', '커피 한 잔 한 잔에 즐거운 이야기가 담겨지는 충주연수점입니다.', '1.주차불가능', '충주실내체육관에서 금봉대로 방면 전방 100미터 사거리 왼쪽', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0900-2200', '0900-2200', '0900-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1314, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '충주의 관문에서 처음 만나는 스타벅스! 쇼핑, 여행, 그리고 한잔의 여유. 여러분의 일상과 함께 합니다~', '1.주차가능 2.주차장위치-매장 측면 3.주차가능대수-14대 (장애인 1대 포함) 4.주차조건-무료', '충주터미널(롯데마트) 맞은편 CU 편의점 옆 단독건물로 자리잡고 있습니다.', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1372, 'T01@T04@T05@T08@T09@T16@T17@T20@T36@P90', 'WHCROAD', '도심 속 휴식을 즐길 수 있는 충주지역 첫 번째 Drive Thru매장입니다.', '1.주차가능 2.주차장위치-매장 측면 3.주차가능대수-11대 (장애인 1대 포함) 4.주차조건-무료', '국원대로 두진 아파트 방면 충주시청 버스 정류장 바로 앞', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1597, 'T01@T04@T08@T09@T16@T17@T20@T36', 'WHCROAD', '충주 최고의 여유와 낭만을 즐길 수 있는 충주호암DT점 입니다.', '1.주차가능 2.주차장위치-매장 전면 3.주차가능대수-24대 (장애인 2대 포함) 4.주차조건-무료', '호암사거리에서 수안보/문경방면으로 300m 대로변에 있습니다. (충주MBC 맞은편)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (521, 'T03@T05@T07@T09@T16@T17@T20@T28@T30@T36@P90', 'WHCROAD', '한국에서 가장 재미있게 생긴 매장, 스타벅스 제주중문점입니다.', '1.주차가능2.주차장위치-믿거나말거나박물관옆3.주차가능대수-10대이상4.주차조건-조건부무료(1시간 무료,초과 시 10분당 1,000원)', '중문관광단지입구 하차 후 도보 8분 믿거나 말거나 박물관 1층', 'N', '0900-1900', '0900-1900', '0900-1900', '0900-1900', '0900-1900', '0900-1900', '0900-1900', '0900-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (547, 'T04@T05@T07@T09@T16@T17@T20@T28@T30@T34@T36@P50@P90', 'WHCROAD', '제주의 동쪽 아름다운 바다와 일출이 함께하는 곳, 성산일출봉점 입니다.', '1.주차가능, 2.주차장위치- 공용주차장 이용가능, 3.주차가능대수- 100대이상 4.주차조건-무료', '성산일출봉 입구에 위치', 'N', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900', '0800-1900');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (972, 'T01@T04@T07@T09@T16@T17@T20@T28@T30@T32@T36@P90', 'WHCROAD', '한라산과 바다가 아스라이 보이는 서귀포 혁신도시의 심장에 위치한 서귀포DT점입니다.', '1.주차가능 2 매장측면주차장 3.주차가능대수-(장애인 2대포함)10대 4.주차조건-무료', '제주월드컵경기장, 서귀포시외버스터미널, 이마트 서귀포점에서 도보 5분,
자차 이용시 중문입구에서 서귀포 방향으로 직진, 서귀포 이마트 300m이전

202-3, 282, 510, 640-1, 530-1, 530-2, 530-3번 버스 이용
''신시가지 정류장''에서 하차', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (748, 'T04@T05@T09@T16@T17@T20@T28@T30@T32@T36@P50@P90', 'WHCROAD', '멋진 조망을 가진 제주의 보물 송악산에서 맛있는 커피와 함께 하세요.', '1.주차가능2.주차장위치-매장앞송악산주차장3.주차가능대수-30대이상4.주차조건-무료', '송악산 입구 주차장 혹은 마라도 선착장을 찾아오시면 매장이 바로 보입니다.
752번 버스를 이용하여 산이수동 정류장에 하차 후 도보 3분 거리 입니다.', 'N', '0900-1730', '0900-1730', '0900-1730', '0900-1730', '0900-1730', '0900-1730', '0900-1730', '0900-1730');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (719, 'T04@T05@T07@T16@T17@T20@T28@T30@T36@P90', 'WHCROAD', '제주도를 모티브로 한 친환경적인 인테리어 속에서 최상의 서비스와 음료를 즐길 수 있는 제주 서귀포점으로 오세요.', '1. 주차불가능', '중앙로터리(일호광장) 한라산을 등지고 천지연(새연교) 방향으로 직진
구)중앙파출소 정류장에서 (510번 530-1번 버스) 천지동사무소 교차로 방향으로 직진
청화빌딩 정류장에서(520번 610-2번 630번 635번 버스) 천지동사무소 교차로 방향으로 직진
', 'N', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100', '0830-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (950, 'T01@T04@T07@T09@T16@T17@T20@T28@T30@T32@T36@P90', 'WHCROAD', '향기로운 커피한잔의 여유. 제주여행의 행복과 즐거움을 더해드리는 제주중문DT점 입니다.', '1.주차가능2.주차장위치-매장후면주차장3.주차가능대수-(장애인 1대 포함)8대 4.주차조건-무료', 'BUS
제주방면] 제주국제공항에서 서귀포 칼호텔 방향 600번 탑승/중문관광단지 정류장 하차 
제주버스터미널에서 서귀포터미널 방향 282번 탑승/천제연폭포 정류장 하차
서귀포방면] 서귀포시외버스터미널에서 고산리 방향 202-2번, 202-3번 탑승/천제연폭포 정류장 하차

네비게이션
천제연폭포 또는 중문관광단지입구 입력, 또는 주소입력(제주도 서귀포시 천제연로 95)', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1197, 'T01@T07@T09@T16@T17@T20@T28@T36@P50', 'WHCROAD', '성산일출봉과 광치기 해변이 보이는 2층에서 맛있는 커피를 즐겨보세요.', '1.주차가능, 2.주차장위치- 매장전면 3.주차가능대수- 10대, 4.주차조건-무료', '공항방면] 제주공항에서 서귀포 방향 급행노선 101, 101-2, 110-2번 탑승 후 성산환승정류장(고성리회전교차로) 하차
서귀포방면] 서귀포 시외버스 터미널에서 제주공항 방향 급행노선 101, 101-2, 110-2번 탑승 후 성산환승정류장(고성리회전교차로) 하차 
네비게이션] 광치기 해변 입력 또는 주소입력(제주도 서귀포시 성산읍 고성리 238)', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1229, 'T05@T07@T16@T17@T20@T28@T30@T36@P90', 'WHCROAD', '제주 영어도시에서 특별한 스타벅스 경험을 전파하는 스타벅스 제주에듀시티점입니다.', '1. 주차불가능', '자차 : 오설록을 지나 제주국제도시 진입 후 우회전
버스 : 제주버스터미널에서 150-1번, 255번을 타고 브랭섬홀아시아 하차', 'N', '0730-1830', '0730-1830', '0730-1830', '0730-1830', '0730-1830', '0730-1830', '0730-1830', '0730-1830');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1318, 'T03@T05@T09@T16@T17@T20@T26@T28@T29@T30@T36@T40@T42@P30@P90', 'WHCROAD', '제주도 최초의 특별한 공간인 리저브 에스프레소바를 경험할 수 있는 제주신화월드점입니다.', '1.주차가능2.주차장위치-제주신화월드 내 주차장3.주차가능대수-100대 이상 4. 주차조건-무료', '제주도 제주신화월드 내 랜딩호텔 지하1층 신화쇼핑스트리트 면세점 방향에 위치', 'N', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2000', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1708, 'T01@T09@T16@T17@T20@T21@T28@T30@T32@T34@T35', NULL, '편안하고 여유로운 분위기를 즐겨보세요', '1.주차가능, 2.주차장위치- 매장전면 3.주차가능대수- 6대, 4.주차조건-무료', '일반버스 231,201,211,221,300,311,332', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (664, 'T04@T05@T09@T16@T17@T20@T28@T30@T32@T36@P40', 'WHCROAD', '환상의 섬 제주에서 만나는 특별한 스타벅스 신제주이마트점 입니다.', '1.주차가능, 2.주차장위치- 3,4층 이마트주차장 이용가능, 3.주차가능대수- 50대이상 4.주차조건-조건부 무료(영수증당 2시간무료) 5.주차요금정산-파트너에게 요청', '이마트 신제주점 1층
간선버스 360,310,325,240
지선버스 415,465 
노형오거리(동) 하차', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (833, 'T01@T04@T09@T16@T17@T20@T28@T36@P50', 'WHCROAD', '곱닥한 바당 보멍 돌코롬허고 멘도롱한 커피 혼디 하고갑서예. 안녕하세요 스타벅스 제주용담DT점입니다.', '1.주차가능, 2.주차장위치- 매장전면,후면 주차가능, 3.주차가능대수- (장애인1대포함) 20대이상 4.주차조건-무료', '네비게이션에 ''제주 화이트하우스''로 검색하세요.', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2300', '0730-2300', '0730-2300');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (933, 'T04@T05@T07@T09@T16@T17@T20@T28@T30@T36@P90', NULL, '제주시내에 위치한 매장으로, 안락한 인테리어와 따뜻한 커피 한잔의 여유를 느끼실수 있는 제주노형점입니다.', '1.주차가능2.주차장위치-베스트웨스턴호텔지하주차장3.주차가능대수-30대이상4.주차조건-조건부무료(차량 등록 시 2시간 무료/초과30분 당 1,000원)5.주차요금정산방법-파트너에게요청', '제주 공항에서 노형오거리 방향, 베스트웨스턴 호텔 1층', 'N', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230', '0730-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (912, 'T04@T05@T07@T16@T17@T20@T28@T30@T36', 'WHCROAD', '다양한 쇼핑과 볼거리가 많은 칠성로에 위치한 제주칠성점입니다. 고객님의 편안한 휴식처가 되어드리겠습니다.', '1.주차불가능', '제주공항에서 제주동초등학교 방면 칠성통입구 (동문시장 맞은편, 금강제화 옆)', 'N', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0730-2100', '0900-2100', '0900-2100', '0900-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1138, 'T01@T04@T07@T09@T16@T17@T20@T28@T36@P50', 'WHCROAD', '제주 애월의 따스한 바다와 커피를 즐겨보세요. 스타벅스 제주애월DT점입니다.', '1.주차가능, 2.주차장위치- 매장전면 3.주차가능대수- 9대, 4.주차조건-무료', '고내포구에서 애월해안도로를 따라 1.5km 방향
제주시외버스터미널에서 202-1번, 고내리119 버스정류장에서 하차, 도보 15분', 'N', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2100', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1150, 'T04@T05@T07@T16@T17@T20@T21@T28@T30@T36@P90', 'WHCROAD', '노형동의 중심, 도민들과 관광객에게 편한 공간을 제공하는 제주노형공원점입니다.', '1.주차불가능', '버스) 제주시 롯데마트 정류장 하차(325번 제주공항-한라수목원/ 465-2 제주공항입구-축산마을)
자차) 제주시 노형오거리에서 이마트 방향 직진 좌회전 
', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1360, 'T04@T05@T16@T17@T20@T21@T28@T30@T36@P30@P50@P90', 'WHCROAD', '제주도 최고의 해변, 함덕 해수욕장을 눈 앞에 두고 커피한잔의 여유를 즐기세요.', '1.주차가능, 2.주차장위치- 공용주차장 이용가능, 3.주차가능대수- 50대이상 4.주차조건-무료', '자차 이용시 : 주소검색 및 함덕해수욕장
대중교통 이용 시 : 
- 버스 : 201, 300, 311, 325, 326, 341, 342, 348, 349, 101(급행) 함덕 환승정류장 하차
- 택시 : 함덕해수욕장
', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1363, 'T05@T09@T16@T17@T20@T28@T30@T36@P90', NULL, '제주의 중심, 스타벅스 제주시청점에서 향긋한 커피 한 잔과 함께 일상의 휴식을 즐겨보세요.', '1.주차가능, 2.주차장위치- 매장후면 3.주차가능대수- 9대, 4.주차조건-무료', '차량이용 : 
공항 → 용담로터리 → 중앙로 → 광양사거리 → 시청도착
공항 → 신제주경유 → 신제주로터리 → 제주종합버스터미널 → 광양사거리 → 시청도착
버스이용 : 
110-2, 120-2, 130-2, 181, 182, 210-2, 220-2, 230-2, 281, 310-1, 310-2, 330-1, 340-1,340-2, 340-3,340-4, 343-1, 350-1, 350-2, 355-1, 355-4, 360, 365-1, 410-1, 410-2, 430-1, 435-1, 435-2, 440,441-1, 441-2외 다수 버스 정차
', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0800-2230', '0800-2230', '0800-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1592, 'T01@T09@T16@T17@T20@T28@T34@T36', 'WHCROAD', '제주오름과 감귤나무 뷰가 보이는 안락한 휴식처 제주삼화DT점 입니다.', '1.주차가능, 2.주차장위치- 매장전면 3.주차가능대수- 20대, 4.주차조건-무료', '버스:345,421번 도련서마을(도련초등학교방면) 정류장에서 도보2분 이내 거리', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1567, 'T01@T04@T09@T16@T17@T20@T28@T34@T36@P90', NULL, '2층에서 제주도의 아름다운 바다가 한눈에 보이는 매장입니다.', '1.주차가능2.주차장위치-매장 앞 주차장, 매장 옆 공터 주차장 3.주차가능대수-매장앞 4대, 매장 옆 공터 10대 5.주차조건-무료', '시내버스 (202, 320, 791, 794-2, 795外) "연대마을 /수정동"정류장 하차', 'N', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200', '0730-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1578, 'T04@T05@T09@T16@T17@T20@T27@T28@T30@T34@T36@P50@P90', NULL, '협재해수욕장 바로 앞, 해변의 경치를 즐기실 수 있습니다.', '1.주차가능 2.주차장위치- 매장 앞 건물주차장 3.주차가능대수-6대 4.주차조건-무료 5.기타-인근 공영주차장 무료 이용 가능', '시내버스(202, 282, 531 外) "협재해수욕장" 정류장 하차 후 도보70m', 'N', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000', '0900-2000');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1581, 'T01@T09@T16@T17@T20@T28@T34@T36', 'WHCROAD', '한라산과 바다뷰를 보면서 커피 한 잔의 여유를 즐겨보세요.', '1.주차가능, 2.주차장위치- 매장후면 3.주차가능대수- 41대 (옆 부민장례식장 300대주차 이용가능), 4.주차조건-무료', '버스: 441,442,436번 정류장에서 도보 3분이내 거리', 'N', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230', '0700-2230');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (717, 'T04@T05@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '헤리티지 느낌의 인테리어와 편안함이 있는 세종청사점입니다.', '1. 주차가능 2. 주차장 위치- 입점 건물 지하 주차장 3.주차가능대수- 50대 이상 4. 주차조건- 1시간 30분 무료 5. 주차요금정산방법- 별도 주차권 없음 , 출차시 무인 정산 시스템 결제 진행(1시간 30분 초과시 초과 금액 개별 정산)', '세종정부청사 국무총리 비서실/ 공정거래위원회 건물 맞은편', 'N', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0700-2100', '0800-2100', '0800-2100', '0800-2100');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (894, 'T02@T04@T05@T08@T09@T16@T17@T20@T30@T36@P40', 'WHCROAD', '커피 한잔과 함께 여유로움을 쇼핑하세요. 세종이마트점입니다.', '1. 주차가능 2. 주차장 위치- 이마트 주차장 3.주차가능대수- 600대 이상 4. 주차조건- 무료', '이마트 세종점 1층에 위치 (옥외주차장 방향)
# 휴점일: 이마트세종점 휴무일과 동일합니다.', 'N', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200', '1000-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (858, 'T04@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '행복도시의 세종첫마을점에서 부드럽고, 여유로운 커피 한 잔을 즐겨보세요.', '1. 주차가능 2. 주차장 위치- 입점 건물 지하 주차장 3.주차가능대수- 50대 이상 4. 주차조건- 1시간 무료 5. 주차요금정산방법- 결제시 1시간 무료 주차권 증정 , 1시간 초과시 개별 결제 진행', '세종시 국세청에서 한누리대교 방향으로 1Km 직진 후 우회전. 
퍼스트프라임 3단지아파트에서 도보 3분.', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (917, 'T04@T05@T07@T08@T16@T17@T20@T21@T30@T36', 'WHCROAD', '아름다운 풍경과 커피 한 잔의 여유를 즐길 수 있는 세종의 랜드마크 세종종촌점입니다.', '11. 주차가능 2. 주차장 위치- 입점 건물 지하 3.주차가능대수- 10대 4. 주차조건-무료', '가재마을 7단지 맞은편 공공주차장 부지 앞 (성운프라자 1, 2층)', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1092, 'T03@T05@T07@T08@T09@T16@T17@T20@T21@T22@T26@T29@T30@T40@', 'WHCROAD', '한 단계 높은 수준의 스타벅스경험을 사이폰,POC,클로버 추출기구를 통해 제공해 드리는 세종어진 Coffee Forward Reserve 매장입니다.', '1. 주차가능 2. 주차장 위치- 입점 건물 지하1~3층 3.주차가능대수- 50대 이상 4. 주차조건- 2시간 무료 5. 주차요금정산방법- POS에서 주차권 문의 시 2시간 무료 주차권 별도 제공', '도램마을 6단지 사거리에 있는 "세종포스트"건물 1층 
("도램마을6,9단지" 버스정류장 앞/ "세종청사북측" BRT정류장에서 도램마을 6단지 방향)', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1257, 'T04@T05@T07@T08@T09@T16@T17@T20@T21@T30@T36', 'WHCROAD', '스타벅스 세종새롬점입니다. 신속하고 친절한 서비스와 커피 한 잔의 여유를 느껴보세요.', '1. 주차가능 2. 주차장 위치- 입점 건물 지하1~2층 3.주차가능대수- 50대 이상 4. 주차조건- 1시간 무료 5. 주차요금정산방법- 파트너에게 요청', '세종특별자치시 새롬중앙로 64 
새뜸 중학교 인근, 세종영광프라자 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0900-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1593, 'T05@T08@T09@T16@T17@T20@T21@T30@T34@T36', NULL, '행복한 도시 세종에서 만나는 스타벅스만의 특별한 매장 세종보람점입니다.', '1. 주차가능 2. 주차장 위치- 입점 건물(대방디엠시티 상가주차장) 지하1층 A동 3.주차가능대수- 100대 이상 4. 주차조건-무료 (현재 시간 제약 없이 무료 이용 가능하나 추후 변경 예정)', '세종특별자치시 교육청 건너편 세종대방 디엠시티 1층', 'N', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200', '0800-2200');

INSERT INTO STOREINFO (STORECODE, THEMESTATE, WHCROAD, STORENOTICE, PARKINFO, MAPDESC, NEWSTATE, MON, TUE, WED, THU, FRI, SAT, SUN, HOLI) 
VALUES (1505, 'T01@T04@T08@T09@T16@T17@T20@T36', NULL, '세종의 유일한 Drive Thru 매장, 색다른 경험을 제공할 세종다정DT점', '1. 주차가능 2. 주차장 위치- 매장 전면 주차장 3.주차가능대수- 4대 4. 주차조건-무료', 'BRT 다정동(성남고등학교)하차 - 도보로 3분
가온마을 12단지 후문 건너편에 위치 
', 'N', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200', '0700-2200');



commit;