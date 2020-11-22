<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이메일 발송</h1>
	<form action="./emailAuthSend" method="post">
		<div>
			이메일 : <input type="email" name="email" id="email" placeholder="이메일주소를 입력하세요.">
		</div> 
		<input type="hidden" name="authState" id="authState" value="0" />
		<button type="submit" name="submit">이메일 인증받기</button>
	</form>
</body>
</html>