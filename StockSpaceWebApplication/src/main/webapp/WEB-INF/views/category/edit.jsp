<%@ include file="../includes/header.jsp"%>

<br><br><br>
<title>Edit Category</title>
<h3>Edit Category</h3>
<br>
<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/categories/update" modelAttribute="reccategory">
	<form:hidden path="categoryId" value="${category.categoryId }"/>
	<div class="form-group">
		<label for="inputCategoryName" class="col-sm-2 control-label">Category Name</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="categoryName" value="${category.categoryName}" required="required"></form:input>
		</div>
	</div>
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/categories/view" class="btn btn-danger">Cancel</a>
		 <input type="submit"  value="Update" class="btn btn-success" />
	</div>
</form:form>



<%@ include file="../includes/footer.jsp"%>