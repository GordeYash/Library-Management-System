<%@page import="com.entity.user.user"%>
<%@page import="com.Dao.StudentDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Admission</title>
<style type="text/css">
body {
	background: rgb(93, 42, 162);
	background: linear-gradient(90deg, rgba(93, 42, 162, 0.9822129535407913)
		0%, rgba(195, 120, 175, 1) 35%, rgba(190, 36, 66, 1) 100%);
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
	<section class="mt-5 container-flex  mx-auto row ">
		<div class="col-sm-auto  col-md-auto col-lg-auto mx-auto">
			<div class="card bg-white ">
				<div class="card-body border border-light">
					<form class="fs-5 mt-3 " action="Admin" method="post">
						<fieldset>
							<legend class="text-center mb-4">
								Add <span class="text-info">Student</span> Details
							</legend>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">
									Student id</label> <input type="text" id="disabledTextInput"
									class="form-control" name="id">
							</div>

							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">
									Student Name</label> <input type="text" id="disabledTextInput"
									class="form-control" name="sname" required="required">
							</div>

							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">
									Student Email</label> <input type="email" id="disabledTextInput"
									class="form-control" name="email" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">
									Student Ph.No</label> <input type="text" id="disabledTextInput"
									class="form-control" name="phno" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">
									password</label> <input type="text" id="disabledTextInput"
									class="form-control" name="password" required="required">
							</div>

							<div class="d-flex mx-auto">
								<button type="submit" class="btn btn-primary ms-2" name="add">Add
									Student</button>
								<button type="submit" class="btn btn-success ms-2" name="update">Update
									Details</button>
								<button type="submit" class="btn btn-danger ms-2" name="search">Search
									Student</button>

							</div>

						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<div
			class="container col-sm-auto  col-md-auto col-lg-7  mx-auto mt-2 ">
			<div class="d-flex justify-content-center">
				<label class="form-label mt-3 fs-2">STUDENT DETAILS</label>
			</div>
			<table class="table border table-dark ">

				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">STUDENT NAME</th>
						<th scope="col">Ph.no</th>
						<th scope="col">Email</th>
						<th scope="col">password</th>

					</tr>
				</thead>
				<tbody>
					<%
					List<user> slist = new ArrayList<>();
					StudentDetails s=new StudentDetails();
					int i=s.getdata(slist);
					%>
					<%
					for (user list : slist) {
					%>
					<tr>
						<th scope="row"><%=list.getPno()%></th>
						<th scope="row"><%=list.getUname()%></th>
						<th scope="row"><%=list.getUpno()%></th>
						<td scope="row"><%=list.getEmail()%></td>
						<td scope="row"><%=list.getPass()%></td>

					</tr>
					<%
					}
					%>
				</tbody>
			</table>

		</div>
	</section>
</body>
</html>