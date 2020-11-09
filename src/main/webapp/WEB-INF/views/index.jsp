<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
	<title>INDEX</title>
</head>
<body>
	<h1><spring:eval expression="@db['user']"></spring:eval> </h1>
</body>
</html>
