<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
body {
	background: rgb(113, 24, 166);
	background: linear-gradient(90deg, rgba(113, 24, 166, 0.9822129535407913)
		0%, rgba(43, 194, 92, 0.9514006286108193) 64%, rgba(231, 200, 31, 1)
		100%);
}
</style>
<%@ include file="AllLinks.jsp"%>
</head>
<body>
	<section class="mt-5 container-flex  mx-auto row ">
		<div class="col-sm-auto  col-md-auto col-lg-3 mx-auto">
			<div class="card bg-white ">
				<div class="card-body border border-light">
					<form class="fs-5 mt-3 " action="Login" method="post">
						<fieldset>
							<legend class="text-center mb-4 fs-3">
								Sign<span class="text-warning"> in</span>
							</legend>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">User
									Name</label> <input type="text" id="disabledTextInput"
									class="form-control" name="uname" required="required">
							</div>
							<div class="mb-3">
								<label for="disabledTextInput" class="form-label">Password</label>
								<input type="text" id="disabledTextInput" class="form-control"
									name="pass" required="required">
							</div>

							<div class="d-flex  mx-auto">
								<a class="btn btn-primary mx-auto" href="Forgot.jsp">Forgot</a>

								<button type="submit" class="btn btn-danger mx-auto" name="sub">Login</button>
							</div>
							<div class="d-flex  mx-auto mt-3">
								<p class="ms-5">Dont have Account ?
								<p>
									<a class="nav-links text-primary" href="CreateAcount.jsp">Create
										Account</a>
							</div>

						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>