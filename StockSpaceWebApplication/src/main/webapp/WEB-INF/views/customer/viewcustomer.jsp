<%@ include file="../includes/header.jsp"%>

<br><br><br>
<a href="new/" class="btn btn-primary">Add New</a>
<h3>Customer From Database</h3>
<table class="table table-hover">
<tr>
    <th>ID</th>
    <th>FullName</th>
    <th>Address</th>
    <th>Email</th>
    <th>Phone</th>
    <th>Date Created</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${customer}" var="customer">
<c:choose>
<c:when test="${customer.isActive==true}">
    <tr>
        <td>${customer.customerId}</td>
        <td>${customer.fullName}</td>
        <td>${customer.address}</td>
        <td>${customer.email}</td>
        <td>${customer.phone}</td>
        <td>${customer.dateCreated}</td>
        <td><a href="deactivate/${customer.customerId}">deactivate</a></td>
        <td><a href="edit/${customer.customerId}">edit</a></td>
    </tr>
    </c:when>
<c:when test="${customer.isActive==false}">
    <tr>
        <td>${customer.customerId}</td>
        <td>${customer.fullName}</td>
        <td>${customer.address}</td>
        <td>${customer.email}</td>
        <td>${customer.phone}</td>
        <td>${customer.dateCreated}</td>
        <td><a href="activate/${customer.customerId}">activate</a></td>
        <td></td>
    </tr>
    </c:when>
    </c:choose>
</c:forEach>
</table>
<br/><br/>

<%@ include file="../includes/footer.jsp"%>