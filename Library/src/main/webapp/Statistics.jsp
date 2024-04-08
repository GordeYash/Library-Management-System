<%@page import="com.Dao.Books.GetData"%>
<%@page import="com.entity.user.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.user.user"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.StudentDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: rgb(24, 83, 166);
	background: linear-gradient(90deg, rgba(24, 83, 166, 0.9822129535407913)
		0%, rgba(179, 195, 120, 1) 35%, rgba(190, 83, 36, 1) 100%);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: 100%;
}
</style>
</head>
<body>
	<c:if test="${rol.roll ne 'admin' }">
		<c:redirect url="LoginPage.jsp"></c:redirect>
	</c:if>
	<%@ include file="Menu.jsp"%>
	<section class="mt-3 container-flex  mx-auto row  border-bottom">
		<p class="text-center mb-4 fs-3 text-danger">STATISTICS</p>

		<div
			class="card col-sm-auto border-danger col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title text-center mb-4 fs-4">
					<i class="fa-solid fa-layer-group"></i> TOTAl BOOKS
				</h5>
				<hr>
				<%
				List<Book> book = new ArrayList<>();

				GetData gt = new GetData();
				gt.getdata(book);
				%>
				<p class="card-text text-center fs-2"><%=gt.i%></p>
			</div>
		</div>
		<div
			class="card col-sm-4 border-danger col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title text-center mb-4 fs-4">
					<i class="fa-solid fa-user"></i> NUMBER OF STUDENT
				</h5>
				<hr>
				<%
				List<user> list = new ArrayList<>();
				StudentDetails s = new StudentDetails();
				int i=s.getdata(list);
				%>
				<p class="card-text text-center fs-2"><%=i%></p>
			</div>
		</div>
		

	</section>
	<section class="mt-3 container-flex  mx-auto row  border-bottom">
		<p class="text-center mb-4 fs-3 text-success">CHART</p>
	</section>

</body>
</html>