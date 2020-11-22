<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input[type='number']::-webkit-outer-spin-button,
	input[type='number']::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
</head>
<body>
	<span style="color: green; font-weight: bold;">입력한 이메일로 받은 인증번호를 입력하세요. (인증번호가 맞아야 다음 단계로 넘어가실 수 있습니다.)</span>
	<form action="./emailAuth" method="post">
		<div> 인증번호 입력 : <input type="number" id="authKey" name="authKey" placeholder="인증번호를 입력하세요." /> </div>                                        
		<button type="submit" name="submit">인증번호 확인</button>
	</form>
</body>
</html>