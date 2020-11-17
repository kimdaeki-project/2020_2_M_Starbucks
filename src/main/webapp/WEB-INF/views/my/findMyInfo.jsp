<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
   <meta name="format-detection" content="telphone=no">   

   <title>Starbucks Coffee Korea</title>

   <link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
   <link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/common/jquery.bxslider.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/css/myPage/findMyInfo.css" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/jquery.bxslider.min.js"></script>

</head>
<body>
 <!-- Header -->
   <c:import url="../common/header.jsp"></c:import>
   <!-- Header End -->


	 <div class="find_info_wrap">
        <div class="find_info_inner">
            <form id="findMemberInfo" method="post">
                <fieldset>
                    <legend></legend>
                    <strong class="find_info_title">개인정보 확인 및 수정</strong>
                    <section class="find_info">
                        <div class="find_input">
                            <strong>아이디</strong>
                            <div>
                                <input type="text" name="id" id="id" class="user_id">
                            </div>
                        </div>
                    </section>

                    <section class="find_info">
                        <div class="find_input">
                            <strong>이름(필수)</strong>
                            <div class="fix_name">
                                <input type="text" name="name" id="name" class="user_name">

                            </div>
                        </div>
                    </section>

                    <section class="find_info">
                        <div class="find_input">
                            <strong>생년월일(필수)</strong>
                            <div>
                                <select id="years"></select>
                                <select id="months"></select>
                                <select id="days"></select>
                                <select id="yinyang">
                                    <option value="yang">양</option>
                                    <option value="yin">음</option>
                                </select>
                            </div>
                            <p class="select_birth_txt">
                                생일 무료 음료 쿠폰은 1년에 1번만 발행되므로, 변경 후에도 해당 연도 내 발행 이력이 있는 경우 추가 발행되지 않습니다.
                            </p>
                        </div>

                    </section>

                    <section class="find_info">
                        <div class="find_input">
                            <strong>휴대폰(필수)
                                <i class="xi-info"></i>
                            </strong>
                            <div>
                                <input type="text" name="userPhone" id="userPhone" class="user_phone">
                            </div>
                        </div>
                    </section>

                    <section class="find_info">
                        <div class="find_input"> 
                            <strong>메일(필수)
                                <i class="xi-info"></i>
                            </strong>
                            <div>
                                <input type="text" name=usermail id="usermail" class="user_mail"> 
                            </div>
                        </div>
                    </section>

                    <img alt="sally" src="${pageContext.request.contextPath}/resources/images/myPage/icon_nick_sally.jpg" />
                    <p class="mem_nick_txt">
                        주문하신 제품을 찾으실 때, <br>
                        파트너가 등록하신 닉네임을 불러드립니다.
                    </p>

                    <p class="modify_txt2"><b>＊ 선택항목은 입력하지 않거나 동의하지 않아도 스타벅스 서비스를 이용하실 수 있습니다.</b></p>

                    <p class="btn_updateinfo">
                        <a href="#">정보수정</a>
                    </p>

 			</fieldset>
           </form>
          </div>
        </div>

















   <!-- Footer -->
   <c:import url="../common/footer.jsp"></c:import>
   <!-- Footer End -->

   
   <script src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/common/footer.js"></script>


</body>
</html>