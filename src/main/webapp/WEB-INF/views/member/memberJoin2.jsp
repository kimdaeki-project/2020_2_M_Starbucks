<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telphone=no">
	
	<title>Starbucks Coffee Korea</title>
	
	<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css?v=1" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/member/memberJoin.css?v=21" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>
</head>
<body>
<div id="wrap">
	<!-- Header -->
	<c:import url="../common/header.jsp"></c:import>
	<!-- Header End -->



	<!-- Container -->
	<div id="container">
		<!-- 내용 -->
		<div class="find_mem_wrap mem_wrap2">
			<div class="find_mem_inner">
				<form id="frmJoin" method="post">
					<input type="hidden" name="type" id="type" value="1" />
					<!-- <input type="hidden" name="adminNum" id="adminNum" value="" /> -->
					<input type="hidden" name="joinPath" id="joinPath" value="" />
					<input type="hidden" name="grade" id="grade" value="1" />
					<fieldset>
						<legend class="hid">회원가입 폼</legend>
						<strong class="find_mem_ttl">회원가입</strong>

						<section class="joinform authform">
							<div class="find_mem_sally"></div>
							<p class="find_form_txt">회원정보를 입력해주세요.</p>
							<div class="form_input_box id_chk">
								<label for="id" class="hid">아이디</label>
								<input type="text" name="id" id="id" class="empty_chk" placeholder="아이디" maxlength="13" />
								<p class="limit_txt id_chk_txt" id="id_chk_txt">영문(대소문자 구분 없음), 숫자로 4~13자리만 입력 가능합니다.</p>
							</div>
							<div class="form_input_box pw_chk">
								<label for="pw" class="hid">비밀번호</label> 
								<input type="password" id="pw" name="pw" placeholder="비밀번호" maxlength="20" autocomplete="off" />
								<p class="limit_txt pwd_txt" id="pw_txt">영문, 숫자 혼합하여 10~20자리 이내로 입력하세요.</p>
							</div>
							<div class="form_input_box pw_chk bd_none">
								<label for="pw_chk" class="hid">비밀번호확인</label>
								<input type="password" id="pw_chk" name="pw_chk" placeholder="비밀번호 확인" maxlength="20" autocomplete="off" />
								<p class="limit_txt pwd_chk_txt" id="pw_chk_txt">입력하신 패스워드를 다시 한 번 입력해주세요.</p>
							</div>
						</section>
						<section class="joinform">
							<div class="form_input_box gender_chk">
								<strong>이름<span class="type_green">(필수)</span></strong>
								<input type="text" id="name" name="name" class="nofix_name" placeholder="이름" required="required"/>
								<!-- <p class="nofix_name"></p>
								<input type="hidden" id="name" name="name" value="" /> -->
								<div class="user_gender">
									<a class="male " href="javascript:void(0);">남</a>
									<a class="female " href="javascript:void(0);">여</a>
									<input type="hidden" id="gender" name="gender" value="" />
								</div>
							</div>
							<div class="form_input_box birth">
								<strong>생년월일<span class="type_green">(필수)</span></strong>
								<div class="select_birth_box">
									<div class="birth_select year">
										<label for="birth_year" class="ally">년도</label>
										<select id="birth_year" name="birth_year" required="required"> </select>
									</div>
									<div class="birth_select month">
										<label for="birth_month" class="ally">월</label>
										<select id="birth_month" name="birth_month" required="required"> </select>
									</div>
									<div class="birth_select day">
										<label for="birth_day" class="ally">일</label>
										<select id="birth_day" name="birth_day" required="required"> </select>
									</div>
								</div>
								<p class="limit_txt input_warn_text birth_txt" id="birth_txt"></p>
								<p class="select_birth_txt">양력 생일을 기준으로 선택해주세요.</p>
								<input type="hidden" name="birth" id="birth" value=""/>
							</div>
							<div class="form_input_box phone_chk">
								<strong>
									휴대폰<span class="type_green">(필수)</span>
									<a href="#;" class="icon_mark_point" role="button">
										<span class="ally">안내문 보기</span>
									</a>
								</strong>
								<!-- 팝업 -->
								<div class="info_btn_inner">
									<div class="info_btn_box" role="dialog" aria-labelledby="info_box_phone" aria-describedby="info_box_phone_desc">
										<p class="btn_close">
											<a href="javascript:void(0);" role="button">
												<img src="${pageContext.request.contextPath}/resources/images/member/btn_close2.png" alt="닫기">
											</a>
										</p>
										<dl>
											<dt id="info_box_phone">휴대폰 번호 입력 안내</dt>
											<dd id="info_box_phone_desc">이벤트 및 주문정보가 담긴 <span class="en">SMS/MMS</span>를 수신하세요.</dd>
											<dd>주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 발송됩니다.</dd>
										</dl>
										<p class="btn_close02">
											<a href="javascript:void(0);" role="button">닫기</a>
										</p>
									</div>
								</div>
								<!-- 팝업 end -->
								<p class="nofix_num"></p>
								<label class="ally" for="phone">휴대폰번호<span class="type_green">(필수)</span></label>
								<input type="text" name="phone" id="phone" placeholder="휴대폰번호를 입력하세요. (예시: 010-1234-5678)" maxlength="13" />
								<p class="limit_txt phone_txt" id="phone_txt"></p>
							</div>
							
							<div class="form_input_box mail_chk">
								<strong>
									메일<span class="type_green">(필수)</span>
									<a href="javascript:void(0);" class="icon_mark_point" role="button">
										<span class="ally">이메일 입력안내 레이어 열기</span>
									</a>
								</strong>
								<!-- 팝업 -->
								<div class="info_btn_inner">
									<div class="info_btn_box" role="dialog" aria-labelledby="info_box_email" aria-describedby="info_box_email_desc">
										<p class="btn_close">
											<a href="javascript:void(0);" role="button">
												<img src="${pageContext.request.contextPath}/resources/images/member/btn_close2.png" alt="닫기">
											</a>
										</p>
										<dl>
											<dt id="info_box_email">
												<span class="en">E-Mail</span> 입력 안내
											</dt>
											<dd id="info_box_email_desc">
												스타벅스커피 코리아의 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보를 <span class="en">E-mail</span>로
												미리 받아 보실 수 있습니다.
											</dd>
											<dd>
												스타벅스 리워드 회원은 쿠폰과 혜택에 대한 내용이 <span class="en">E-mail</span>을 통해 받아 보실 수 있습니다.
											</dd>
											<dd>주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 발송됩니다.</dd>
										</dl>
										<p class="btn_close02">
											<a href="javascript:void(0);" role="button">닫기</a>
										</p>
									</div>
								</div>
								<!-- 팝업 end -->
								<div class="choice_cont_mail">
									<label for="email" class="hid">e-mail</label>
									<input type="email" name="email" id="email" class="empty" placeholder="E-mail을 입력하세요." value="${member.email}" />
									<p class="limit_txt mail_txt" id="mail_txt"></p>
								</div>
							</div>
						</section>

						<section class="joinform bdt_no">
							<figure class="icon_mem_sally">
								<img src="${pageContext.request.contextPath}/resources/images/member/icon_nick_sally.jpg" alt="닉네임 별부자 고객님, 주문하신 바닐라 라떼 나왔습니다!" />
							</figure>
							<p class="mem_nick_txt">
								주문하신 제품을 찾으실 때, <br /> 파트너가 등록하신 닉네임을 불러드립니다.
							</p>
							<div class="form_input_box user_nick_nm_chk bd_none">
								<strong>
									닉네임(선택) 
									<a href="javascript:void(0);" class="icon_mark_point" role="button">
										<span class="ally">닉네임 관련 설명 레이어 열기</span>
									</a>
								</strong>
								<!-- 팝업 -->
								<div class="info_btn_inner">
									<div class="info_btn_box" role="dialog"
										aria-labelledby="info_box_nick"
										aria-describedby="info_box_nick_desc">
										<p class="btn_close">
											<a href="javascript:void(0);" role="button">
											<img src="${pageContext.request.contextPath}/resources/images/member/btn_close2.png" alt="닫기"></a>
										</p>
										<dl>
											<dt id="info_box_nick">닉네임이란?</dt>
											<dd id="info_box_nick_desc">스타벅스 리워드 회원이 매장에서 스타벅스 카드로 결제 후, 주문하신 제품 / 상품을 찾으실 때 불러드리는 고유한 이름입니다.</dd>
										</dl>
										<p class="t1">[이용방법]</p>
										<ol>
											<li>1. 닉네임 등록</li>
											<li>2. 스타벅스 카드를 등록하여 "스타벅스 리워드" 회원 가입</li>
											<li>3. 매장 방문 후 제품/상품 주문</li>
										</ol>
										<p class="t2">주문하신 제품/상품을 찾으실 때, 파트너가 등록하신 닉네임을 불러 드립니다.</p>
										<p class="img">
											<img src="${pageContext.request.contextPath}/resources/images/member/nick_bn.jpg" alt="홍길동 고객님, 주문하신 바닐라 라떼 나왔습니다." />
										</p>
										<dl>
											<dt>[닉네임 등록 안내]</dt>
											<dd>
												명사로 이루어진 한글 6자리 이내로 등록해 주세요.<br>(형용사 및 동사는 입력이 안되거나 불러드릴 수 없음을 양해 바랍니다.)
											</dd>
											<dd>
												미풍양속 및 사회 통념에 어긋나는 욕설, 비속어나 회사의 정책 상 부적절한 단어의 경우<br>
												닉네임 등록이 제한되거나 관리자에 의해 삭제될 수 있으며, 등록이 되더라도<br>
												파트너가 불러드리지 못할 수 있습니다.
												<p class="t3">
													표시가 포함된 닉네임은 불러드리기 곤란한 닉네임이므로 변경해 주시기 바랍니다.
												</p>
												<p class="t4">
													(영수증 상에도 " &nbsp; &nbsp; &nbsp; "표시가 되오니 양해바랍니다.)
												</p>
											</dd>
											<dd>매장에서 공개적으로 불러드리는 명칭이오니, 신중하게 선택하여 주시기 바랍니다.</dd>
											<dd>스타벅스 리워드 회원이 스타벅스 카드로 결제하실 경우에만 활용됩니다.</dd>
											<dd>등록하신 닉네임은 영수증에 출력됩니다.</dd>
											<dd>등록하신 닉네임은 개인정보 확인 및 수정을 통해 언제든지 수정할 수 있으며 다른 사용자와 중복되어 사용 될 수 있습니다.</dd>
										</dl>
										<p class="btn_close02">
											<a href="javascript:void(0);" role="button" title="닉네임 설명 레이어 닫기">닫기</a>
										</p>
									</div>
								</div>
								<!-- 팝업 -->
								<section
									class="mem_agreement_wrap choice_agreement_wrap new_agr_choice">
									<h5>선택적 개인정보 수집동의 및 이용약관</h5>
									<span class="agree-check">
										<input type="checkbox" name="mem_choice" id="mem_choice_yes" class="mem" />
										<label for="mem_choice_yes">동의</label>
									</span>
									<div class="mem_agreement_area">
										<p class="refer_text" style="margin-left:10px;">
											※ 자세한 내용은 
											<b><a href="https://www.starbucks.co.kr/footer/etc/privacy.do" target="_blank">개인정보처리방침</a></b> 
											을 참조해주시기 바랍니다. ※
										</p>
									</div>
								</section>
								<label for="user_nick_nm" class="hid">닉네임</label>
								<%-- <input type="text" name="user_nick_nm" id="user_nick_nm" placeholder="닉네임 입력을 위해 약관에 동의해 주세요." maxlength="6" disabled="" /> --%>
								<input type="text" id="nickName" name="nickName" placeholder="한글 6자리 이내로 입력하세요." value="" />
								<p class="limit_txt input_warn_text user_nick_nm_txt" id="user_nick_nm_txt"></p>
							</div>
						</section>
						<p class="modify_txt2">
							<b> ＊ 선택항목은 입력하지 않거나 동의하지 않아도 회원 가입이 가능합니다. </b>
						</p>
						<p class="btn_mem_login">
							<button type="button" class="btn_join" id="join">가입하기</button>
						</p>
					</fieldset>
				</form>
			</div>
		</div>
		<!-- 내용 end -->
	</div>
	<!-- Container End -->



	<!-- Footer -->
	<c:import url="../common/footer.jsp"></c:import>
	<!-- Footer End -->
</div>

	<script src="${pageContext.request.contextPath}/resources/js/common/header.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common/footer.js?v=1"></script>
	<script src="${pageContext.request.contextPath}/resources/js/member/memberJoin.js?v=1"></script>
	<script type="text/javascript">
		var idCheck = false;
		var pwCheck = false;
		var emptyCheckResult = true;
		
		$("#join").click(function() {
			emptyCheck();
		});
		
		function emptyCheck() {
			emptyCheckResult = true;
			$(".empty").each(function(){
				console.log($(this).val());
			});
		}
	</script>
</body>
</html>