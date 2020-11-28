<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Starbucks Coffee Korea</title>
<link href="${pageContext.request.contextPath}/resources/images/common/favicon.ico" rel="shortcut icon" type="image/ico">
</head>
<body>
	<script type="text/javascript">
		var result='${message}'
		var path = '${path}'
		alert(result);
		location.href = path;
	</script>
</body>
</html>