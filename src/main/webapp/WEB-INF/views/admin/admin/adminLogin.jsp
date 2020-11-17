<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Starbucks Coffee Korea :: 직원 로그인</title>
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
		
		<style type="text/css">
			body{
				width: 100%;
				max-height: 500px;
				background-image: url('/sw4/resources/admin/images/login/login_bg.jpg');
			}
			.wrapper{
				width: 40rem;
				margin: 12.5rem auto 25rem;
			}
			#login-wrapper{
				padding: 2rem 0px;
				background-color: white;
			}
			#login-wrapper-info{
				color: #565656;
				text-align: center;
			}
			#login-wrapper-info > span{
				font-size: 1.2rem;
				width: 100%;
			}
			#login-box{
				font-size: 0.9rem;
				margin: 2.5rem 3rem 0.8rem;
			}
			#login-area > div{
				display: inline-block;
			}
			#login-frm > input{
				display: block;
				width: 28rem; height: 30px;
				margin-bottom: 0.5rem;
				padding: 0.2rem 0.2rem;
			}
			.login-btn{
				float: right;
			}
			#sb-text{
				color: #006633;
			}
			.login-btn > form > input{
				font-size: 0.9rem;
				border-radius: 3px;
				border: none;
				color: white;
				background-color: #006633;
				width: 4.5rem; height: 4.2rem;
			}
			.remember-info{
				cursor: pointer;
				margin-top: 0.5rem;
				color: #686868;
				font-size: 0.8rem;
			}
			.remember-info > div > span{
				margin-left: 0.4rem;
			}
			#logo{
				margin-top: 1.5rem;
				margin-left: 2rem;
			}
			#logo > a > img{
				width: 3.5rem;
			}
			.find{
				float: right;
				display: inline-block;
			}
			.find > div{
				cursor: pointer;
			}
			#find-id{
				padding-right: 2rem;
			}	
		</style>
		
	</head>
	
	<body>
		<div id="logo">
			<a href="${pageContext.request.contextPath}/"><img alt="" src="/sw4/resources/images/common/favicon.ico"></a>
		</div>
		<div class="login-area">
			<div class="wrapper">
				<div id="login-wrapper">
					<div id="login-wrapper-info">
						<span><span id="sb-text">스타벅스</span> 직원전용 로그인 페이지입니다.</span>
					</div>
					<hr>
					<div id="login-box">
						<div id="login-area">
							<div>
								<form id="login-frm" action="">
									<input id="id-txt" type="text" name="id" placeholder="아이디를 입력하세요.">
									<input id="pw-txt" type="password" name="id" placeholder="비밀번호를 입력하세요.">
								</form>
							</div>
							<div class="login-btn">
								<form action="">
									<input type="submit" name="login-btn" id="login-btn" value="로그인">
								</form>
							</div>
							<div class="remember-info">
								<div id="rememberChkFun">
									<input type="checkbox" name="remember" id="remember">
									<span>아이디 기억하기</span>
								</div>
							</div>
							<div class="find">
								<div class="remember-info find" id="find-pw">
									<span>비밀번호 찾기</span>
								</div>
								<div class="remember-info find" id="find-id">
									<span>아이디 찾기</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	  
		<c:import url="../template/javascript.jsp"></c:import>
		<script type="text/javascript">
			var chk = false;
			$("#rememberChkFun").click(function(){
				if(chk == false){
					chk = true;
				} else {
					chk = false;
				}
				$("#remember").attr("checked",chk);
			})
			$("#find-id").click(function(){
				alert("아이디 찾기 준비 중입니다.")
			})
			$("#find-pw").click(function(){
				alert("비밀번호 찾기 준비 중입니다.")
			})
		</script>
		
	</body>

</html>
</html>