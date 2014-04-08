<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

<title>Signin to SchedulerApp</title>

<!-- Bootstrap core CSS -->
<link href="/StockSpaceWeb/resources/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1>Stock Space - Gadgets Plus</h1>
		<div class="row col-md-4">
			<br />
			<p>
			<h2>Please Sign In</h2>
			<form:form class="form-horizontal" role="form" method="POST"
				action="/StockSpaceWeb/logincheck" modelAttribute="login">
				<div class="form-group">
					<label for="userEmail">Email address</label> 
					<form:input type="email" class="form-control" path="userEmail" name="userEmail" placeholder="Enter email" required="required" />
				</div>
				<div class="form-group">
					<label for="userPassword">Password</label> 
					<form:input type="password" class="form-control" path="userPassword" placeholder="Password" required="required" />
				</div>
				<button type="submit" class="btn btn-primary">Sign In</button>

			</form:form>
		</div>
	</div>
	<!-- /container -->

</body>
</html>