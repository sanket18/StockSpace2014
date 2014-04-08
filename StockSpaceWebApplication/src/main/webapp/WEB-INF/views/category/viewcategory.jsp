<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<h3 class="pull-left silent">Category</h3>
<a href="/StockSpaceWeb/categories/addnew" class="btn btn-primary pull-right">Add Category</a>
<table class="table table-hover">
<tr>
<th>Category Id</th>
<th>Category Name</th>
<th>Company Id</th>
<th>Date Created</th>
<th>&nbsp</th>
<th>&nbsp</th>
</tr>
<c:forEach items="${categories }" var="category">
<tr>
<td>${category.categoryId}</td>
<td>${category.categoryName }</td>
<td>${category.companyId }</td>
<td>${category.dateCreated}</td>
<td><a href="/StockSpaceWeb/categories/edit/${category.categoryId}" >edit</a></td>
<c:choose>
<c:when test="${category.isActive}">
<td><a href="/StockSpaceWeb/categories/deactivate/${category.categoryId}">deactivate</a></td>
</c:when>
<c:otherwise>
<td><a href="/StockSpaceWeb/categories/activate/${category.categoryId}">activate</a></td>
</c:otherwise>
</c:choose>
</tr>

</c:forEach>

</table>
<%@ include file="../includes/footer.jsp"%>