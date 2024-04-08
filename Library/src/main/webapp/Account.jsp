<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
HttpSession session2 = request.getSession();
String name = (String) session2.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>
<style type="text/css">
body {
	background: rgb(166, 37, 24);
	background: linear-gradient(90deg, rgba(166, 37, 24, 0.9822129535407913)
		0%, rgba(120, 195, 180, 1) 35%, rgba(181, 106, 113, 1) 46%,
		rgba(83, 184, 85, 0.8477591720281863) 64%, rgba(170, 190, 36, 1) 100%);
}
</style>
</head>
<body>
	<c:if test="${rol.roll ne 'local' }">
		<c:redirect url="LoginPage.jsp"></c:redirect>
	</c:if>
	<%@ include file="UserMenu.jsp"%>

	<section class="mt-3 container-flex  mx-auto row  border-bottom">
		<p class="text-center mb-4 fs-3 text-info">Welcome ${name} Your
			Account</p>

		
		<div
			class="card col-sm-4 border-danger col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title text-center mb-4 fs-4">
					<i class="fa-solid fa-user"></i> Read Books
				</h5>
				<hr>
				<p class="card-text text-center fs-2">120</p>
			</div>
		</div>
		<div
			class="card col-sm-auto border-danger col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title text-center mb-4 fs-4">
					<i class="fa-brands fa-stack-overflow"></i> Cart
				</h5>
				<hr>
				<p class="card-text text-center fs-2">20</p>
			</div>
		</div>
		<div
			class="card col-sm-auto border-danger col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<div class="card-body">
				<h5 class="card-title text-center mb-4 fs-4">
					<i class="fa-solid fa-list"></i> Favourit Books
				</h5>
				<hr>
				<p class="card-text text-center fs-2">30</p>
			</div>
		</div>

	</section>
	<section class="mt-3 container-flex  mx-auto row  border-bottom">
		<p class="text-center mb-4 fs-3 text-success">CHART</p>
	</section>

</body>
</html>