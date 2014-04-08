<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="/StockSpaceWeb/resources/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<br />
<div class="container">
<div class="alert alert-danger">
<h1 id="banner">Invalid User!</h1>
<c:if test="${not empty message}">
<div style="color: red">
Invalid UserName or Password please enter valid Login Information<br />
</div>
</c:if>
<br />
<p><a href="/StockSpaceWeb/">Go back</a></p>
</div>
</div>
</body>
</html>