<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<%@ include file="AllLinks.jsp"%>
<style type="text/css">
body {
	background: rgb(113, 24, 166);
	background: linear-gradient(90deg, rgba(113, 24, 166, 0.9822129535407913)
		0%, rgba(43, 194, 92, 0.9514006286108193) 64%, rgba(231, 200, 31, 1)
		100%);
}
</style>
</head>
<body>
	<section class="mt-5 container-flex  mx-auto row ">
		<div class="col-sm-auto  col-md-auto col-lg-3 mx-auto">
			<div class="card bg-white ">
				<div class="card-body border border-light">
					<form class="fs-5 mt-3 " action="CreateAccount" method="post">
						<fieldset>
							<legend class="text-center mb-4 fs-3">
								Create<span class="text-info"> Account</span>
							</legend>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label"> user
									Name</label> <input type="text" id="disabledTextInput"
									class="form-control" name="uname" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label"> Phone
									No</label> <input type="text" id="disabledTextInput"
									class="form-control" name="pno" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label"> Email</label>
								<input type="email" id="disabledTextInput" class="form-control"
									name="email" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">
									Password</label> <input type="text" id="disabledTextInput"
									class="form-control" name="pass" required="required">
							</div>




							<div class="d-flex  mx-auto">
								<p>
									have Account ? <a class="nav-links text-primary mx-auto"
										href="LoginPage.jsp">Login </a>
								</p>

								<button  class="btn btn-primary mx-auto"
									name="Cacount">Create Account</button>

							</div>

						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>