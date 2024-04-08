<%@page import="com.Dao.Books.SearchBook"%>
<%@page import="com.entity.user.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Dao.Books.GetData"%>
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
	background: rgb(166, 37, 24);
	background: linear-gradient(90deg, rgba(166, 37, 24, 0.9822129535407913)
		0%, rgba(131, 120, 195, 1) 35%, rgba(181, 106, 151, 1) 46%,
		rgba(190, 36, 121, 1) 100%);
}
</style>
</head>
<body>
	<c:if test="${rol.roll ne 'local' }">
		<c:redirect url="LoginPage.jsp"></c:redirect>
	</c:if>
	<%@ include file="UserMenu.jsp"%>
	<section class="mt-5 container-flex  mx-auto row ">
		<div class="col-sm-auto  col-md-auto col-lg-3  mt-5 mx-auto">
			<div class="card bg-white ">
				<div class="card-body border border-light">
					<form class="fs-5 mt-3 " action="BookOper" method="post">
						<fieldset>
							<legend class="text-center mb-4 fs-3">
								Search <span class="text-warning">Books </span> Details
							</legend>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">book
									name</label> <input type="text" id="disabledTextInput"
									class="form-control" name="name">
							</div>



							<div class="container  mx-sm-auto mx-md-auto mx-lg-auto">

								<button type="submit" class="btn btn-warning " name="search">Search
									Book</button>
								<button type="submit" class="btn btn-warning  ms-5"
									name="AddCart">Add Cart</button>

							</div>

						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<div class="container col-sm-auto  col-md-auto col-lg-7 mx-auto mt-2 ">
			<div class="d-flex justify-content-center">
				<label class="form-label mt-3 fs-2">Boooks Details</label>
			</div>
			<table class="table border table-dark mx-auto">

				<thead>
					<tr>
						<th scope="col">UID</th>
						<th scope="col">BOOK NAME</th>
						<th scope="col">AUTHOR NAME</th>
						<th scope="col">BOOK TYPE</th>

					</tr>
				</thead>
				<tbody>
					<%
					String name = (String) request.getSession().getAttribute("name");
					SearchBook bk = new SearchBook();

					List<Book> book = new ArrayList<>();
					bk.SearchData(book, name);
					%>
					<%
					for (Book list1 : book) {
					%>
					<tr>
						<td scope="row"><%=list1.getUid()%></td>
						<td scope="row"><%=list1.getBname()%></td>
						<td scope="row"><%=list1.getAuname()%></td>
						<td scope="row"><%=list1.getBtype()%></td>



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