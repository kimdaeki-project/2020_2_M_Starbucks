<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="${pageContext.request.contextPath}/resources/css/common/reset.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/myPage/faqList.css" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<style type="text/css">
	
	</style>
</head>
<body>
<c:import url="../common/header.jsp"></c:import>
	
	
	<!--subtitle-->
     <div class="ms_sb_tit_bg">
        <div class="ms_sub_tit_inner">
            <h4><img alt="My 음료/매장" src="../resources/images/myPage/msr_tit2.jpg"></h4>
            <ul class="smap">
                <li><a href="/"><i class="xi-home-o"></i></a></li>
                <li><a href="/"><i class="xi-angle-right-min"></a></i></li>
                <li><a href="/my/index.do">My Starbucks</a></li>


            </ul>
        </div>
    </div>
    <!-- subtitle end -->
    
     <div id="container">
        <!--자주하는 질문-->
        <section class="faq_section">
            <p class="msr_t1"><span class="subHeadMnu2">스타벅스 리워드</span>에 대한 궁금점이 많으신가요?고객님의 문의사항에 대한 답변을 빠르게 찾으실 수 있습니다.</p>
            <div class="faq_search">
                <div class="search_input">
                    <input type="text">
                    <a id="sch_btn" href="/">검색</a>
                </div>
            </div>

            <!--faq 게시글 부분-->
            <div>
            	<dl class="faq_wrap">
            		<c:forEach items="${list}" var="dto">
            	<dt class="ajaxFaqList on">
            			<ul>
            				<li class="li2">
            					<dl>
            						<dt class="en">Q</dt>
            						<dd>${dto.question}</dd>
            						
            					</dl>
            				</li>
            				
            			</ul>
            		
            	</dt>
            		<dd style="display: none">
            			<ul>
            				<li class="li2">
            					<dl>
            						<dt class="en">A</dt>
            						<dd><a href="#">${dto.answer}</a></dd>
            					</dl>
            				</li>
            			</ul>
            		</dd>
            		
              </c:forEach>
           
            		
           
            </dl>
             </div>
            
        </section>
    </div>
	
	<script src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/myPage/faq.js"></script>
</body>
</html>