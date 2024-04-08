
<%@ include file="AllLinks.jsp" %>
<style>
<%@ include file="Menu.css" %>
</style>
<nav class="navbar navbar-expand-lg navbar-expand-sm navbar-expand-md navbar-dark bg-custome px-4 border-bottom ">
	<div class="container-fluid">
		<a class="navbar-brand fs-3"><i class="fa-solid fa-landmark"></i> Library <span class="text-warning">Managmnet</span> System</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0 fs-5 text-center">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="AdminPanel.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="AddBook.jsp"><i class="fa-solid fa-book-open"></i> Add Books</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="AddStudent.jsp"><i class="fa-solid fa-book-open-reader"></i> Add Student</a></li>
				
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="Statistics.jsp"><i class="fa-solid fa-chart-simple"></i> Statistics</a></li>
					
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="LoginPage.jsp"><i class="fa-solid fa-right-from-bracket"></i> LogOut</a></li>

			</ul>
		</div>
	</div>
</nav>