<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.Books.GetData"%>
<%@page import="com.entity.user.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Book Operation</title>
<style type="text/css">
body {
	background: rgb(53, 162, 42);
	background: linear-gradient(90deg, rgba(53, 162, 42, 0.9822129535407913)
		0%, rgba(120, 191, 195, 1) 35%, rgba(27, 142, 84, 1) 100%);
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
					<form class="fs-5 mt-3 " action="BookOperation" method="post">
						<fieldset>
							<legend class="text-center mb-4 fs-3">
								Add <span class="text-warning">Books </span> Details
							</legend>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">book
									Uid</label> <input type="text" id="disabledTextInput"
									class="form-control" name="uid" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label"> book
									Name</label> <input type="text" id="disabledTextInput"
									class="form-control" name="bname">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">Author
									Name</label> <input type="text" id="disabledTextInput"
									class="form-control" name="auname">
							</div>
							<div class="mb-3">
								<label for="disabledSelect" class="form-label"> Book
									Type</label> <select id="disabledSelect" class="form-select"
									name="btype">
									<option value="story">Story Book</option>
									<option value="scientific">Scientific Book</option>
									<option value="biography">Biography</option>
									<option value="Geology">GeoLogy</option>
									<option value="mathmatics">Mathmatics</option>
									<option value="Electronic">Electrnoics</option>
									<option value="computer Language">Computer Language</option>
									<option value="language">Language</option>


								</select>
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">Book
									Price</label> <input type="text" id="disabledTextInput"
									class="form-control" name="bprice"">
							</div>

							<div class="d-flex  mx-auto">
								<button type="submit" class="btn btn-primary ms-0"
									name="addbook">Add Book</button>
								<button type="submit" class="btn btn-success ms-2" name="update">Update
									Details</button>
								<button type="submit" class="btn btn-warning ms-2" name="search">Search
									Book</button>
								<button type="submit" class="btn btn-danger ms-2" name="delete">delete
									Book</button>
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
						<th scope="col">BOOK Price</th>

					</tr>
				</thead>
				<tbody>
					<%
					List<Book> book = new ArrayList<>();

					GetData gt=new GetData();
					gt.getdata(book);
					%>
					<%
					for (Book book2 : book) {
					%>
					<tr>
						<td scope="row"><%=book2.getUid()%></td>
						<td scope="row"><%=book2.getBname()%></td>
						<td scope="row"><%=book2.getAuname()%></td>
						<td scope="row"><%=book2.getBtype()%></td>
						<td scope="row"><%=book2.getBprice()%> .rs</td>

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