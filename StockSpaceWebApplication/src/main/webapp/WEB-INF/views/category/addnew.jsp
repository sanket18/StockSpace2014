<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<br>
<br>
<br>
<form:form class="form-horizontal" role="form" method="POST"
	action="save" modelAttribute="category">
	<div class="form-group">
		<label for="inputCategoryName" class="col-sm-2 control-label">Category
			Name</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="categoryName" required="required"></form:input>
		</div>
	</div>
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/category/view" class="btn btn-danger">Cancel</a>
		<input type="submit" value="Save" class="btn btn-success" />
	</div>
</form:form>
<%@ include file="../includes/footer.jsp"%>