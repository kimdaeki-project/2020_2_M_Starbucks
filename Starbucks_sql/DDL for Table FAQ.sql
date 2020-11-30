--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "STARBUCKS"."FAQ" 
   (	"NUM" NUMBER CONSTRAINT FAQ_NUM_PK PRIMARY KEY, 
	"WRITER" VARCHAR2(200 BYTE), 
	"TYPE" VARCHAR2(400 BYTE), 
	"QUESTION" VARCHAR2(4000 BYTE), 
	"ANSWER" VARCHAR2(4000 BYTE)
   ) ;

--------------------------------------------------------
--  sequence for  FAQ
--------------------------------------------------------
create sequence faq_seq 
increment by 1 
start with 1 
maxvalue 99999999999999999 
minvalue 1 
NOCACHE  
NOORDER  
NOCYCLE;

--------------------------------------------------------
-- insert data
--------------------------------------------------------
SET DEFINE OFF;
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (2,'admin','rewards','[레벨혜택] 골드카드를 분실한 경우, 골드레벨 혜택을 받을 수 없나요?','아니오, 혜택은 계정 별로 제공이 되는 것이기 때문에 등록된 다른 카드를 사용하셔도 골드레벨의 혜택을 누리실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (3,'admin','rewards','[레벨혜택] 등록한 각각의 여러 장 스타벅스 카드에 모두 그린 레벨 혜택을 받으려면 각 카드에 별을 5개씩 모아야 하나요?','아니오, 고객 계정에 별 5개를 모으면 그린 레벨로 승급되며, 그린 레벨로 승급 시 혜택은 카드별이 아닌 고객 계정으로 제공됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (4,'admin','rewards','[레벨혜택] 여러 장의 카드를 등록한 경우 여러 개의 생일 쿠폰이 발급되나요?','아니오, 쿠폰은 카드 별이 아닌, 계정 별로 1개씩 적립됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (5,'admin','rewards','[골드레벨] 골드레벨의 유효기간 만료 후 유지 방법은 무엇인가요?','골드레벨 진입일로부터 1년 안에 별 30개를 적립하시면 유효기간이 1년 연장됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (6,'admin','rewards','[골드레벨] 골드레벨은 어떻게 진입할 수 있나요?','웰컴레벨에서 첫 번째 별 적립 일로부터 1년 안에 30개의 별을 적립해야 합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (7,'admin','rewards','[골드레벨] 골드레벨의 유효 기간이 있나요?','골드레벨 진입일로부터 1년입니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (8,'admin','rewards','[웰컴레벨] 웰컴레벨의 유효기간이 있나요?','아니오, 한 번 웰컴레벨에 진입하시면 지속적으로 유지할 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (9,'admin','rewards','[혜택] 생일 쿠폰은 언제 발행되나요?','생일 쿠폰은 그린, 골드 회원 대상 발행되며, 회원 가입 시 등록한 생일일자에 맞춰 발행됩니다.
유효기간은 생일 당일을 포함하여 전,후 14일씩 총 29일입니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (10,'admin','rewards','[레벨혜택] 그린, 골드 레벨의 혜택 중 원두 250g 또는 12개입 VIA 구매와 동시에 카페 아메리카노 음료 쿠폰을 받을 수 있나요?','네, 해당 쿠폰은 그린, 골드 계정에 등록된 스타벅스 카드로 원두(250g or 12개입 VIA) 구매 후 즉시 발행됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (11,'admin','rewards','[레벨혜택] 골드레벨인 경우 별을 12개 적립할 때마다 무료 음료가 제공되나요?','네, 골드레벨인 경우 12개의 별을 적립하실 때마다 그 익일에 무료 음료 쿠폰이 발급됩니다.
(별의 유효기간은 1년입니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (12,'admin','rewards','[레벨혜택] Personalized Offer 쿠폰이 무엇인가요?','스타벅스 리워드 회원 중 골드레벨 고객에게 비정기적으로 제공되는 쿠폰입니다. 골드 레벨만이 누리실 수 있는 특별한 혜택을 기대해 주시기 바랍니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (13,'admin','rewards','[쿠폰] 매장에서 받은 영수증 쿠폰도 e-쿠폰으로 등록할 수 있나요?','스타벅스 리워드 회원이라면, "e-쿠폰 등록코드"가 출력된 영수증 쿠폰에 대해 모바일 애플리케이션 "e-Coupon" 또는 웹사이트 "My Starbucks > e-쿠폰 등록" 메뉴에서 e-쿠폰으로 등록하여 사용하거나 등록 후 MMS로 타인에게 선물하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (14,'admin','rewards','[쿠폰] e-쿠폰 사용은 적립한 매장에서만 사용 가능한가요?','아니오, 사용조건이 특별히 명시된 쿠폰이 아니라면 스타벅스 카드 거래가 가능한 모든 매장에서 사용 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (15,'admin','rewards','[쿠폰] 스타벅스 리워드 혜택으로 발급된 BOGO e-쿠폰은 스타벅스 카드로만 결제 가능한가요?','아니오, 타 결제 수단으로 결제가 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (16,'admin','rewards','[레벨혜택] 레벨 별 조건에 따라 발행되는 쿠폰은 어떻게 수령 받나요?','레벨 혜택 조건에 따라 발행되는 쿠폰은 e-쿠폰의 형태로 고객님의 계정으로 발행됩니다.
해당 쿠폰의 유효기간 내 매장에 방문하시어 고객님의 계정에 등록 된 스타벅스 카드를 제시 하시면 파트너가 POS에서 확인 후 사용 가능하며, 사이렌 오더로 주문 시에도 사용 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (17,'admin','rewards','[별] 별 적립 기준은 무엇인가요?','방문에 감사 드리는 의미로, 스타벅스 리워드 회원이 본인 계정에 등록된 스타벅스 카드로 1,000원 이상 결제 시 영수증당 방문별 1개가 즉시 적립됩니다. (단, 영수증간 금액 합산 적용은 불가하며 스타벅스 카드 충전 및 Extra만 결제하는 경우는 별 적립 대상이 아닙니다.)

사이렌 오더를 통해 주문하신 경우, 별 적립 시점은 아래와 같습니다.
- 음료/푸드/원두 주문의 경우, 매장에서 해당 주문을 승인한 시점
- 홀케이크 선물/예약의 경우 홀케이크 수령 시점

스타벅스 카드로 결제 후 고객님께 최상의 서비스를 제공하는 시간은 약 3분이 소요됩니다. 따라서 이 시간 동안 추가 결제 시 방문당 별은 적립되지 않고, 이벤트가 있을 경우 이벤트 별만 적립됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (18,'admin','rewards','[별] 어느 매장에서 결제를 해도 별이 적립이 되나요?','네, 국내 스타벅스 카드로 결제가 가능한 모든 매장에서 결제를 하시는 경우 별이 적립됩니다.
(단, 미군 부대 및 일부 백화점 입점 매장 제외)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (19,'admin','rewards','[별] 적립된 별을 타 계정으로 이동 가능한가요?','아니오, 적립된 별을 다른 계정으로 이동하는 것은 불가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (20,'admin','rewards','[별] 카드를 여러 장 등록한 경우, 카드 별로 별이 적립되나요?','아니오, 한 계정에 등록된 여러 장의 스타벅스로 결제하더라도, 별은 카드가 아닌 계정으로 적립됩니다.
여러 계정에 등록된 스타벅스 카드로 결제한 경우, 첫 번째로 결제한 카드의 계정에 적립됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (21,'admin','rewards','[별] 결제취소 시 적립된 별은 어떻게 되나요?','적립된 별은 결제 취소 즉시 회수됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (22,'admin','rewards','[골드카드] APP에서도 골드 카드 신청이 가능한가요?','2020년 1월1일부터 실물 골드카드 발급이 중단됨에 따라 웹사이트 또는 APP에서 e-골드카드로만 신청이 가능합니다.

※e-골드카드 신청 방법
- 웹사이트 : 로그인 후 > my 스타벅스 > e-골드카드 신청
- APP : 로그인 상태에서 왼쪽 상단 [≡] > Rewards > e-골드카드 신청');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (23,'admin','rewards','[골드카드] 신청한 골드카드 수령을 위해 준비할 것이 있나요?','※2019년 12월 31일까지 신청된 골드카드에 한하며, 2020년 1월 1일부터는 e-골드카드만 신청 및 즉시 발급이 가능합니다.

본인확인 및 신청하신 사항을 확인하기 위해 기존에 등록된 다른 스타벅스 카드를 소지하고 방문하셔야 합니다.
등록된 스타벅스 카드가 없는 경우 본인 ID에 등록된 휴대폰 인증 및 생년월일 확인을 통해서도 수령 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (24,'admin','rewards','[골드카드] 신청한 골드카드의 매장도착 여부는 어떻게 알 수 있나요?','※2019년 12월 31일까지 신청된 골드카드에 한하며, 2020년 1월 1일부터는 e-골드카드만 신청 및 즉시 발급이 가능합니다.

매장에 골드카드가 도착할 경우, 홈페이지에 등록된 휴대폰 번호로 SMS가 전송됩니다.
단, SMS 수신 동의 시에만 전송되는 점 참고 바랍니다.
');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (80,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card 신청 취소하고 싶습니다.','결제기한 내 결제가 확인되지 않을 경우 자동 취소 됩니다.
결제한 후 발송희망일 -1일 내에 신청을 취소하고 싶다면 담당자에게 운영시간 이내에 구매번호 기재해서 메일 보내주시기 바랍니다.
단, 발송희망일 당일에는 취소가 불가합니다.

단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (81,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card의 최소 구매와 최대 구매는 몇 건인가요?','단체 및 기업구매 e-Gift card는 MMS와 대량의 주문번호 1건당 모두 최소 수량은 1건이고, MMS의 최대는 1만건, 대량은 4천건 입니다.

e-Gift 매뉴얼 : http://www.starbucks.co.kr/upload/b2b/co_manual.pdf 
단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (82,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card 대량은 어떻게 사용하나요?','단체 및 기업구매 e-Gift card 대량은 e-Gift card를 이미지 파일(JPG)로 미리 구매하고자 할 때 이용하시길 권유 드립니다. 스타벅스에서 발송 서비스를 제공하지 않는 품목이긴 하나, 미리 구매한 e-Gift card를 원할 때, 원하는 방식으로 선물하실 수 있습니다.

e-Gift card 대량을 다운로드 받으면 묵음 파일 내에 e-Gift card 가 이미지 파일(JPG)로 구매한 수량 만큼 압축되어 있습니다.

e-Gift 매뉴얼 : http://www.starbucks.co.kr/upload/b2b/co_manual.pdf 
단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (83,'admin','e-GiftCard','[단체 및 기업구매] 전송한 스타벅스 e-Gift 카드를 수신자가 받지 못했을 경우, 재전송할 수 있나요?','개인정보보호법에 따라 최초발송일로부터 3개월까지만 수신자의 휴대전화번호가 보관되고 그 이후에는 폐기 됩니다. 최초발송일로부터 3개월 이내라면 동일번호로의 재발송 1회 가능합니다.
자세한 사항은 구매번호를 기재하여 단체 및 기업구매 대표 메일로 문의해주시면 담당자가 확인, 조치 후 답변 드리겠습니다.

단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (84,'admin','e-GiftCard','[단체 및 기업구매] 스타벅스 e-Gift 카드 구매 관련하여 제출할 증빙 자료가 필요할 경우 어떻게 해야 하나요?','ARS 카드 결제할 경우, 이니시스에서 신청자정보 상의 이메일로 영수증을 발송합니다.
무통장입금으로 결제할 경우, 기타요청사항에 거래명세서 또는 입금확인증 기재하시면 신청자정보 상의 이메일로 송부 드립니다.
단, e-Gift card는 유가증권(비과세 품목)이므로, 구매 시 세금계산서, 계산서, 지출증빙과 현금영수증은 발행 대상이 아닙니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (85,'admin','e-GiftCard','[단체 및 기업구매] 기업 구매로 스타벅스 e-Gift 카드 전송 시, 언제부터 발송 가능한가요?','발송희망일은 영업일 11:59 이전에 구매신청한다면 차일부터, 12:00 이후에 구매신청한다면 차차 영업일부터 선택 가능합니다. 결제기한은 직전 영업일 15:00까지 이며 결제기한 초과하여 결제할 경우 발송일은 +1 영업일로 미루어지니 유의 바랍니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (86,'admin','e-GiftCard','[e-Gift Card_발신] 선물한 카드가 취소되었는지 어떻게 확인할 수 있을까요?','보낸 사람과 받는 사람께 선물한 내역이 취소 되었다는 내용의 알림이 전송되는데 이메일로 선물한 경우 이메일이, MMS로 선물한 경우 SMS가 발송됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (87,'admin','e-GiftCard','[e-Gift Card_수신] 선물 받은 카드는 어떻게 사용 하나요?','선물 받으신 스타벅스 카드 e-Gift Card는 다음의 4가지 방법으로 사용하실 수 있습니다.
(1) 휴대폰 MMS로 받은 스타벅스 카드 e-Gift Card 사용
(2) e-Mail로 받은 스타벅스 카드 e-Gift Card 사용
(3) 선물받은 스타벅스 카드 e-Gift Card를 실물 카드로 교환하여 사용
　 - 매장에 비치된 스타벅스 코어 카드 중 선택하여 교환가능하며, 시즌 한정 및 수량 제한 프로모션 카드로는 교환이 불가합니다.
　 - 선물받은 e-Gift Card는 디자인이 동일한 실물 카드가 없는 경우도 있습니다.
(4) 스타벅스 홈페이지 또는 애플리케이션에 카드 등록하여 사용');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (88,'admin','e-GiftCard','[e-Gift Card_수신] SR 회원인 경우, 선물 받은 카드를 계정에 등록할 수 있나요?','네, MMS 또는 e-mail 에서 바로 등록할 수 있는 URL 클릭 시, 기존 본인의 계정에 선물받은 카드를 등록 할 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (89,'admin','e-GiftCard','[e-Gift Card_발신] 최대 몇 명에게 전송할 수 있나요?','각 웹사이트와 애플리케이션에서 아래와 같이 최대 전송할 수 있습니다.
- 웹사이트 : 최대 10명 (휴대폰 대량 전송의 경우, 엑셀 업로드를 통해 최대 100명까지 가능)
- 애플리케이션 : 1명

');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (90,'admin','e-GiftCard','[e-Gift Card_발신] 예약 전송을 할 수 있나요?','네, 최대 30일까지 예약가능하며, 30분 시간 단위로 예약하실 수 있습니다.
(단, 당일 예약 전송은 불가하며, 익일 부터 예약 설정이 가능합니다.)
');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (91,'admin','e-GiftCard','[e-Gift Card_발신] 예약 전송 설정 후, 보낸 사람에게 선물이 전송되었는지, 선물을 받았는지에 대한 여부 확인이 가능한가요?','네, 예약 시간에 카드가 전송될 때 보낸 사람과 받는 사람에게 선물이 전송 되었다는 내용의 알림이 이메일로 선물한 경우 이메일이, MMS로 선물한 경우 SMS가 전송됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (92,'admin','e-GiftCard','[e-Gift Card_발신] 신용카드의 구매 한도는 얼마이며, 법인카드로 결제가 가능한가요?','아래와 같이 구매가 가능합니다.
- 개인 신용카드 : 1개월간 상품권 구매 한도 100만원
- 법인카드 : 사업자별로 구매한도 상이 (각 사업자에 문의 주시기 바랍니다.)
법인카드로 구매 가능하며, 청구서상 "상품권" 유형으로 표시됩니다.
(개인 신용카드 동일 / 별도 상품권 가맹)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (93,'admin','e-GiftCard','[e-Gift Card_발신] 선물은 어떤 경로로 보낼 수 있나요?','e-Mail 또는 MMS를 통해 전송할 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (94,'admin','e-GiftCard','[e-Gift Card_발신] 선물 보낸 카드를 재전송 할 수 있나요?','네, 재전송은 동일한 휴대폰 번호 또는 e-Mail 주소로 1회까지 재전송이 가능하며, 휴대폰 번호 또는 e-Mail 주소를 변경하시려면 주문 취소 후 다시 진행하셔야 합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (25,'admin','rewards','[레벨혜택] 스타벅스 e-골드카드 신청 자격이 어떻게 되나요?','골드 레벨 진입 후, 웹사이트 또는 APP에서 신청이 가능하며, 신청 즉시 계정에 온라인 카드(e-골드카드)가 발급됩니다.

① e-골드카드 신청은 30개의 별이 적립된 익일부터 신청이 가능합니다.
② 신청방법
- 웹사이트 : 로그인 후 > my 스타벅스 > e-골드카드 신청
- APP : 로그인 상태에서 왼쪽 상단 [≡] > Rewards > e-골드카드 신청하기');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (26,'admin','rewards','[골드카드] 골드카드 수령 후 필요한 절차가 있나요?','※ 2019년 12월 31일까지 신청된 골드카드에 한하며, 2020년 1월 1일부터는 e-골드카드만 신청 및 즉시 발급이 가능합니다.

스타벅스 골드카드 수령 시, 본인 인증을 통해 골드카드 사용 등록이 동시에 이루어지므로 별도의 추가 절차 없이 바로 사용이 가능합니다.
골드카드 수령 시에는 본인 인증 확인을 위해, 고객의 계정(아이디)에 등록된 스타벅스 카드를 소지하시고 매장 방문을 안내드립니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (27,'admin','rewards','[골드카드] e-골드카드는 무엇인가요?','골드레벨 진입 시, 바로 신청하여 사용 가능한 온라인 e-골드카드 입니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (28,'admin','rewards','[쿠폰] 영수증 쿠폰을 e-쿠폰으로 바로 받을 수 있나요?','네, 스타벅스 리워드 회원이라면 사이렌 오더로 주문 시 모든 쿠폰이 e-쿠폰으로 발행되며, 매장에서 등록된 스타벅스 카드로 결제 시에는 영수증 쿠폰, e-쿠폰 중 선택하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (29,'admin','rewards','[레벨혜택] 웰컴 레벨 혜택 중 웰컴 첫 구매 쿠폰은 무엇인가요?','웰컴 레벨 진입 후, 처음 구매를 하시는 경우 다음날 계정으로 발행되는 무료 음료 쿠폰입니다.
웰컴 레벨 회원에게만 1회 제공되는 혜택으로, 쿠폰을 사용하시고, 회원 탈퇴 후 재가입 하신 경우에는 쿠폰이 재 발행 되지 않습니다.
(e-Gift Item 선물은 구매에 해당하지 않습니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (30,'admin','rewards','[쿠폰] e-쿠폰은 어떻게 사용할 수 있나요?','쿠폰 사용기간 내 매장에 방문하셔서 계정에 등록된 스타벅스 카드 또는 e-쿠폰의 QR코드를 파트너에게 제시해주시면 됩니다.
사이렌 오더로 주문하시는 경우라면, 결제하기 화면에서 사용하실 쿠폰을 직접 선택하실 수 있어요. (일부 사이렌 오더 사용불가 쿠폰 제외)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (31,'admin','rewards','[쿠폰] e-쿠폰을 사용할 수 없습니다.','e-쿠폰함에서 사용하고자 하는 쿠폰을 선택하신 후 ‘e-쿠폰 상세보기’ 내용을 확인해주세요.
만약 쿠폰상세 화면이 열리지 않는다면 현재 내 계정에 충전 또는 사용 가능한 스타벅스 카드가 1장 이상 등록되어 있는지 확인해주세요.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (32,'admin','card','[잔액조회] 스타벅스 카드에 얼마가 남았는지 조회가 가능한가요?','매장에서 결제 및 충전을 하실 때 영수증에 잔액이 표시되고, 그 외에 잔액 확인을 원하실 경우 애플리케이션에 카드를 등록하여 조회하시거나 고객센터(1522-3232, 7:00~23:00)를 통해 잔액 조회를 하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (33,'admin','card','[잔액이전] 카드의 잔액을 다른 카드로 이전하려면 어떻게 해야 하나요?','스타벅스 카드의 잔액을 다른 카드로 이전하려면, 먼저 스타벅스 카드 분실 신고 후 본인인증 완료 후 가능합니다.
(단, 분실 신고되어 중지 처리된 스타벅스 카드는 다시 사용이 어려우므로 진행 시 참고하시기 바랍니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (34,'admin','card','[혜택] 스타벅스 카드 등록을 하지 않아도 Free Extra 혜택을 받을수 있나요?','Free Extra 서비스는 등록 여부와 상관없이 스타벅스 카드로 음료를 결제하시는 경우 음료 1잔당 1개를 받으실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (35,'admin','rewards','[쿠폰] e-쿠폰을 종이 형태의 쿠폰으로 변경할 수 있나요?','아니요, 한 번 e-쿠폰으로 발행되었거나 등록된 쿠폰은 종이 형태의 쿠폰 (예. 영수증 쿠폰)으로 변경할 수 없습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (36,'admin','rewards','[골드카드] 골드카드 발급 신청을 했는데 아직 수령하지 못했습니다. 제작 기간이 얼마나 소요되나요?','실물 골드카드 발급 서비스는 2020년 1월 1일부로 종료되었습니다.

서비스 종료 전에 발급 신청하셨던 건들은 2020년 7월 31일까지 매장에서 수령가능하시도록 최대한 수령기간을 길게 지정하였으며, 그 이후에는 모두 폐기처리되어 수령 불가함을 안내드립니다.

실물 골드카드는 종료되었으나, e-골드카드 발급은 지속 운영하오니
골드회원님들의 많은 이용 부탁드립니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (39,'admin','card','[카드분실] 등록된 스타벅스 카드의 분실신고는 대표번호를 통해서도 할 수 있나요?','아니요, 분실 신고는 본인 확인을 위해 고객 본인이 직접 웹사이트 또는 APP 로그인 시에만 하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (38,'admin','card','[카드환불] 스타벅스 카드의 환불 기준은 무엇인가요?','최종 충전 후 합계 잔액 기준 60%이상 소진한 경우, 나머지 금액에 대하여 매장 or 온라인 (웹사이트, APP)을 통해 환불 신청 가능합니다.

1) 매장 내 파트너에게 환불 신청 : 스타벅스 카드 반납 후 즉시 환급 가능 / 단, 일부 백화점, 몰 입점 매장 등 일부 매장에서는 환불처리 불가

2) 웹사이트, APP에서 신청하기 : 로그인 후, My Starbucks > My 스타벅스 카드 > 분실신고/잔액이전 (신청일로부터 영업일 기준 최대 7일 이내, 지정한 계좌로 환급됨 _ 단, 고객이 본인의 환급 계좌를 잘못 지정하는 경우 확인 절차 등으로 인해 환불이 다소 지연될 수 있습니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (40,'admin','card','[카드분실] 카드를 분실하거나 도난 당했을 경우 어떻게 해야 하나요?','계정에 등록된 스타벅스 카드일 경우 분실 신고를 하시면 신고 시점의 잔액이 보호됩니다.
*카드의 최종 충전 후 합계 잔액 기준 60% 이상 사용하신 경우, 등록된 타 카드로 잔액이전 또는 환불 신청이 가능합니다.
*카드의 최종 충전 후 합계 잔액 기준 60% 미만 사용하신 경우, 등록된 타 카드로 잔액이전만 가능합니다. (등록된 카드가 없는 경우 매장에서 구입 후 등록하여 잔액을 이전하여 사용하시면 됩니다.)

단, 미등록 카드의 경우 분실신고 및 잔액보호가 불가한 점 양해 바랍니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (41,'admin','card','[카드분실] 스타벅스 카드를 분실했습니다. 어떻게 해야 합니까?','미등록된 스타벅스 카드는 무기명 카드이기 때문에 분실 시 카드 재발급 및 잔액 보호가 되지 않습니다. 분실하지 않도록 각별히 주의해 주시기 바랍니다.

※ 스타벅스 리워드에 등록 된 스타벅스 카드일 경우 분실 신고 후 남은 잔액을 다른 카드로 이동 또는 환불을 신청하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (42,'admin','card','[카드분실] 분실 신고 후 카드를 찾은 경우 어떻게 하나요?','한번 분실신고가 이루어진 스타벅스 카드는 분실 해제 기능이 없으며, 재 사용이 불가 합니다. 이 점 유의하시어 분실 신고를 진행해 주시길 부탁 드립니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (43,'admin','card','[카드고장] 카드의 마그네틱이 손상되어 인식되지 않을 경우 어떻게 하나요?','카드의 마그네틱이 손상되어 인식되지 않을 경우에는 매장에서 고장카드를 신규카드로 잔액을 이전하여 받으실 수 있습니다.
골드카드 고장의 경우 실물 골드카드의 제작이 중단됨에 따라 e-골드카드로의 신청 및 이용을 부탁드립니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (44,'admin','card','[카드고장] 카드의 고장 또는 유효기간 만료로(추가) 인해 신규카드로 잔액을 이전 받았는데, 스타벅스 리워드 혜택을 동일하게 받을 수 있나요?','아니오, 반드시 고장 카드 교환 처리 및 유효기간 만료로 신규카드로 교체 받으신 후 신규로 받으신 카드를 스타벅스 리워드 계정에 다시 등록 해주셔야 동일한 레벨 혜택을 받으실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (45,'admin','card','[분실] 등록된 스타벅스 카드를 분실 시 잔액 보호를 받을 수 있나요?','분실 시에는 반드시 분실 신고를 하셔야 해당 시점의 잔액을 보호 받으실 수 있습니다. 다만, 카드 등록을 하지 않은 경우에는 무기명 카드이기 때문에 분실 시 잔액 보호를 받으실 수 없습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (46,'admin','card','[고장카드] 고장카드의 경우 신규카드 발급 외에 기존의 카드로 잔액이전이 불가한가요?','미등록 상태의 고장 카드일 경우 매장에서 신규 카드로만 교환이 가능합니다.
등록된 카드일 경우에는 분실신고 후 홈페이지나 APP에서 등록된 다른 카드로 잔액 이전이 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (47,'admin','card','[자동재충전] 월 정액 자동충전 기능을 설정 하였지만 스타벅스 카드를 사용하지 않는 경우에도 계속 충전이 되나요?','네, 계속 충전 됩니다. 다만, 카드의 최대 잔액이 55만원 이므로 55만원을 초과하는 경우 더 이상 충전되지 않습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (48,'admin','card','[자동재충전] 자동충전 기능을 해지 하려면 어떻게 해야 하나요?','웹사이트 로그인 후 My Starbucks > My 스타벅스 카드 > 보유 카드 메뉴에서 원하시는 카드를 선택 후 자동충전 해지를 하시거나, APP 로그인 후 카드 > 자동충전/해지 메뉴에서 자동충전 해지를 하시면 됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (49,'admin','card','[자동재충전] 월 정액 자동충전 기능을 설정 하였지만 스타벅스 카드를 사용하지 않는 경우에도 계속 충전이 되나요?','네, 계속 충전 됩니다. 다만, 카드의 최대 잔액이 55만원 이므로 55만원을 초과하는 경우 더 이상 충전되지 않습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (50,'admin','card','[자동재충전] 월 정액 자동충전으로 설정했는데, 신용카드가 한도 초과인 경우 어떻게 되나요?','자동충전에 실패하며, 고객님께 실패 안내 메일이 발송됩니다. (단, 2회 이상 자동 충전 실패 시, 자동충전 설정 기능이 자동으로 해제됩니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (51,'admin','card','[자동재충전] 5만원 이상 월 정액 자동충전으로 설정했을 경우에도 BOGO e-쿠폰을 발급받을 수 있나요?','네, 기준 하한 방식과 월 정액 방식 모두 5만원 이상 자동 충전을 설정 하시면 충전 시 마다 익일에 BOGO e-쿠폰을 발급 받으실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (52,'admin','card','[자동재충전] BOGO e-쿠폰은 5만원 이상 자동충전이 되면 바로 발급되나요?','아니오, 충전 후 익일 발급됩니다. ');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (53,'admin','card','[카드충전] 웹사이트에서도 스타벅스 카드 최초충전이 가능한가요?','실물 카드의 최초충전은 매장에서만 가능하지만, e-Gift 의 경우 웹사이트 또는 APP을 통해서도 구입이 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (54,'admin','card','[카드충전] 모든 모바일 기기에서 카드를 재충전 할 수도 있나요?','네, 모든 모바일 기기에서 카드 충전이 가능합니다. 단, 안드로이드의 경우 신용카드와 휴대폰 소액결제가 가능하고, IOS의 경우 신용카드와 실시간 계좌이체가 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (55,'admin','card','[카드충전] 충전 및 재충전 가능한 금액은 얼마인가요?','최초 충전일 경우 최소 5천원 이상 1만원 단위로 최대 50만원 까지 가능하며, 재 충전의 경우 최소 1만원이상, 1만원 단위로 충전이 가능하며 카드의 잔액이 55만원을 초과하지 않는 한도 내에서 충전하실 수 있습니다. (단, 스타벅스 카드별로 최초 충전 금액이 상이할 수 있습니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (56,'admin','card','[카드충전] 스타벅스 카드를 충전할 때 어떠한 결제 수단이 가능한가요?','현금 및 신용카드(개인/법인), 체크카드로 충전 가능하며 상품권, 각종 쿠폰, 스타벅스 카드, 직불카드로는 충전이 불가능 하오니 참고하여 주시기 바랍니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (57,'admin','card','[카드충전] 일부 백화점 매장에서 충전이 불가한 이유는 무엇인가요?','일부 백화점, 몰 등 일부 입점 매장의 경우 결제 시스템이 상이하므로 충전이 불가합니다.
이점 양해 부탁드립니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (58,'admin','card','[충전취소] 최초충전 한 후 카드를 등록했지만 사용하지 않았을 경우 최초충전 취소가 가능한가요?','네, 최초 충전 후 스타벅스 카드의 사용 내역이 없을 경우 14일 이내에 영수증과 결제 시 사용한 카드(신용/체크카드), 취소할 스타벅스 카드를 지참하시고 해당 매장에 방문하시면 충전 취소가 가능합니다. 이때 카드의 등록은 해지를 한 상태여야 하며 해당 스타벅스 카드는 매장에 반납하셔야 합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (59,'admin','card','[카드충전] 충전 시 현금영수증 발급이 가능한가요?','아니오. 결제시에만 현금영수증 발급이 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (60,'admin','card','[사용기준] 스타벅스 카드 번호만 알면 사용이 가능한가요?','아니오, 스타벅스 카드는 실물 또는 계정에 등록된 카드의 바코드로만 사용 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (61,'admin','card','[사용기준] 스타벅스 카드로 구매한 상품도 환불 받을 수 있나요?','구매일로부터 14일 이내에 영수증을 지참한 후 구입한 매장으로 방문 시 스타벅스 카드 결제 취소를 받을 수 있습니다.
다만 결제 했던 스타벅스 카드가 분실신고 또는 환불 신청이 접수된 상태일 경우 고객센터(1522-3232)를 통해 문의 바랍니다.
※ 구입한 상품은 미사용 상태로 한글 라벨이 부착되어 있어야 합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (62,'admin','card','[사용기준] 스타벅스 카드로 결제 시 제휴카드도 함께 사용할 수 있나요?','네, 결제 시 제휴카드와도 함께 사용하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (63,'admin','card','[사용기준] 스타벅스 카드로 결제 시 현금영수증 발급이 가능한가요?','충전 시에는 불가하지만, 결제 시에는 현금영수증 발급이 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (64,'admin','card','[결제방법] 모바일 웹에서도 스타벅스 카드 결제가 가능 한가요?','네, 가능합니다. 모바일 웹페이지 내 My Starbucks > My 스타벅스 카드 > 보유 카드를 클릭하시면 카드 이미지와 잔액, 결제 버튼이 보여집니다. 결제 버튼을 터치해 보시면 바코드 형태의 모바일 카드로 전환되어 매장에서 바로 결제하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (77,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card 전체 또는 부분 환불하고 싶습니다.','전체 또는 부분환불은 결제일로부터 14일까지 가능합니다.
단, 발송된 e-Gift card의 금액이 정상적으로 충전취소 된 내역에 대해서만 환불이 가능합니다.
구매번호와 환불하고자 하는 내역 기재해서 메일 보내주시면 담당자가 답변 드리겠습니다.

단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr
운영시간 : 월~금 09:00 ~ 16:00 
(11:30 ~ 12:30 제외, 토/일요일, 공휴일 휴무, 매월 둘째주 금요일)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (66,'admin','card','[사용기준] 모바일 카드의 바코드를 이미지로 저장해서 결제할 수 있나요?','아니요, 결제전 바로 웹페이지 또는 모바일 앱에 접속하신 상태에서만 결제가 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (67,'admin','card','[사용기준] 카드를 등록한 후, 모든 기기에서 리워드 확인 및 결제가 가능한가요?','네, 가능합니다. 모바일 사이트 및 앱으로 접속 가능한 모든 기기에서 로그인 시 리워드 확인 및 결제를 하실 수 있습니다. (Ex : 아이패드, 갤럭시 탭, 아이폰, 갤럭시 폰 등)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (68,'admin','card','[사용기준] 스타벅스 카드로 무엇을 구매 할 수 있나요?','매장 내에서 판매하는 모든 음료, 푸드 및 상품 등을 구매하실 수 있습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (69,'admin','card','[결제내역] 스타벅스 카드의 사용내역도 알 수 있나요?','등록된 스타벅스 카드인 경우 웹사이트 또는 APP에서 로그인 후에 확인 가능합니다. (단, 카드를 등록한 시점부터 사용하신 내역에 대해서만 확인하실 수 있습니다.)');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (70,'admin','card','[자동현금영수증] 자동현금영수증 기능은 온라인 상으로만 설정 가능한가요?','네, 웹사이트에 로그인 하신 후, 개인정보확인 및 수정 메뉴에서 현금영수증 발행에 동의하시면 됩니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (71,'admin','card','스타벅스 카드 사용 및 충전 영수증을 홈페이지나 모바일 APP에서도 확인할 수 있나요?','등록된 스타벅스 카드의 사용 및 충전 이력은 My Starbucks > My 스타벅스 카드 (모바일 APP : Card) 메뉴 “카드 관리”에서 각 카드 별로 확인하실 수 있으며, 통합 이력은 전자영수증 (모바일 APP : e-Receipt/History) 메뉴에서 확인 가능합니다. (단, 2016/12/03 거래 영수증부터 조회 가능)

조회되는 영수증은 매장에 방문하여 사용/충전한 거래에 한하며, 온라인 충전 영수증은 제공되지 않으니 이 경우에는 결제 시 입력하신 이메일 또는 해당 카드사 홈페이지를 통해 확인 부탁 드립니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (72,'admin','card','[사용기준] 외국 스타벅스 카드도 국내에서 등록 및 사용이 가능한가요?','아니오, 국내에서 구입한 카드만 등록 및 사용이 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (73,'admin','card','[사용기준] 스타벅스 카드 여러 장으로 결제가 가능한가요?','Free Extra 혜택을 받지 않으실 경우에는 여러 장으로 결제가 가능합니다.
단, Free Extra를 받으셨을 경우에는 한 카드의 금액이 모두 소진된 후 추가 결제용으로 여러 장의 스타벅스 카드 결제가 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (74,'admin','card','[사용기준] 외국 스타벅스 카드도 국내에서 등록 및 사용이 가능한가요?','아니오, 국내에서 구입한 카드만 등록 및 사용이 가능합니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (75,'admin','card','[카드등록] 스타벅스 카드 등록은 몇 장까지 가능한가요?','계정 별 스타벅스 카드 등록가능한 개수의 제한이 없습니다.');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (76,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card를 대량구매 하고 싶은데 어떻게 해야하나요?','단체 및 기업구매 e-Gift card는 개인 선물하기 e-Gift card 와 달리 운영됩니다.
e-Gift 매뉴얼을 확인하시면 구매조건과 유의사항, 구매방법 등이 상세히 안내되어 있습니다.
관련하여 추가 문의는 메일로 보내주시면 담당자가 확인 후 답변 드리겠습니다. 

e-Gift 매뉴얼 : http://www.starbucks.co.kr/upload/b2b/co_manual.pdf 
단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (78,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card를 이메일로 발송할 수 있나요?','단체 및 기업구매 e-Gift card는 MMS로만 발송이 가능합니다. 그에 따라 휴대전화 MMS 이외에 이메일이나 SNS 등으로 발송하는 서비스는 운영하지 않는 점 양지 바랍니다.

만약, e-Gift card 대량 으로 구매할 경우, 구매자께서 직접 별도의 시스템을 이용하여 JPG파일을 첨부할 수 있다면 이메일이나 SNS로도 선물하실 수 있는 점 참고해주세요.

e-Gift 매뉴얼 : http://www.starbucks.co.kr/upload/b2b/co_manual.pdf 
단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');
Insert into STARBUCKS.FAQ (NUM,WRITER,TYPE,QUESTION,ANSWER) values (79,'admin','e-GiftCard','[단체 및 기업구매] e-Gift card를 개인 정보가 아닌 회사명과 대표번호 등으로 변경해서 각 수신자에게 선물하고 싶은데 어떻게 해야하나요?','단체 및 기업구매 e-Gift card MMS로 구매신청하시면 발송처와 발신번호를 변경하여 e-Gift card를 선물하실 수 있습니다.
E-Gift 매뉴얼 중 MMS 부분 확인하시기 바랍니다.
단체 및 기업구매 e-Gift card MMS는 발송 시간 예약은 불가하고, 항상 발송희망일 오전 10시에 발송됩니다.

e-Gift 매뉴얼 : http://www.starbucks.co.kr/upload/b2b/co_manual.pdf 
단체 및 기업구매 담당자 : starbucksb2b@starbucks.co.kr');

