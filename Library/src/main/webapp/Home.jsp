<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home Page</title>
<style type="text/css">
body {
	background: rgb(35, 98, 87);
	background: linear-gradient(90deg, rgba(35, 98, 87, 0.9822129535407913)
		0%, rgba(120, 126, 195, 1) 35%, rgba(27, 94, 142, 1) 100%);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: 100%;
}
</style>


</head>
<body>
<c:if test="${rol.roll ne 'local' }">
	<c:redirect url="LoginPage.jsp"></c:redirect>	
	</c:if>

	<%@ include file="UserMenu.jsp"%>
	<section>
		<marquee class="text-warning ">
			<p class="text-center fs-1 text-danger">One glance at a book and
				you hear the voice of another person, perhaps someone dead for 1,000
				years. To read is to voyage through time." – Carl Sagan</p>
		</marquee>
	</section>
	<section class="mt-3 container-flex  mx-auto row  border-top-3">
		<div
			class="card col-sm-auto border-white col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<img src="Images/img.jpeg" class="card-img-top " alt="cant find">
			<div class="card-body">
				<h5 class="card-title fs-3">Digital Library</h5>
				<p class="card-text">In Digital Library You Can Find all your
					favourt books Free Of Couse for you</p>

			</div>
		</div>
		<div
			class="card col-sm-auto border-white col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<img src="Images/img1.jpeg" class="card-img-top" alt="cant find">
			<div class="card-body">
				<h5 class="card-title fs-3">Consitency</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>

			</div>
		</div>
		<div
			class="card col-sm-auto border-white col-md-auto col-lg-auto mx-auto mb-3"
			style="width: 25rem;">
			<img src="Images/img2.jpeg" class="card-img-top img-fluid mx-auto"
				alt="cant find">
			<div class="card-body">
				<h5 class="card-title fs-3">All Books</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>

			</div>
		</div>
	</section>

</body>
</html>