<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<style type="text/css">
body
{
background: url("Images/admin.jpeg");
background-size: 60%;
background-repeat: no-repeat;
background-position: top center;
background: drop-shadow(5px 5px green);
}
</style>
</head>
<body >
	<c:if test="${rol.roll ne 'admin' }">
		<c:redirect url="LoginPage.jsp"></c:redirect>
	</c:if>
	<%@ include file="Menu.jsp"%>
	<marquee><h3>Welcome to Admin Panel</h3></marquee>


</body>
</html>