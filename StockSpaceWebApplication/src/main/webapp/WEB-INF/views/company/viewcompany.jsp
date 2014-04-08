<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<h3 class="pull-left silent">Company</h3>
<a href="/StockSpaceWeb/company/addnew" class="btn btn-primary pull-right">Add Company</a>
<table class="table table-hover">
<tr>
<th>Company Id</th>
<th>Company Name</th>
<th>Date Created</th>
<th>&nbsp</th>
<th>&nbsp</th>
</tr>

<c:forEach items="${companies }" var="company">
<tr>
<td>${company.companyId}</td>
<td>${company.companyName }</td>
<td>${company.datecreated }</td>
<td><a href="/StockSpaceWeb/company/edit/${company.companyId }" >edit</a></td>
<c:choose>
<c:when test="${company.isActive}">
<td><a href="/StockSpaceWeb/company/deactivate/${company.companyId}">DeActivate</a></td>
</c:when>
<c:otherwise>
<td><a href="/StockSpaceWeb/company/activate/${company.companyId}">Activate</a></td>
</c:otherwise>
</c:choose>
</tr>
</c:forEach>
</table>
<%@ include file="../includes/footer.jsp"%>