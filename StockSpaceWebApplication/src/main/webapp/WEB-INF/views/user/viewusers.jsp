<%@ include file="../includes/header.jsp"%>
<br><br><br>
<h3>Users From Database</h3>
<table class="table table-hover">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${users}" var="user">
    <tr>
        <td>${user.userId}</td>
        <td>${user.userFirstName} ${ user.userLastName }</td>
        <td>${user.userEmailId}</td>
        <td><a href="delete/${user.userId}">delete</a></td>
    </tr>
</c:forEach>
</table>
<br/><br/>

<%@ include file="../includes/footer.jsp"%>