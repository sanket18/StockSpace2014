<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<title>New Company</title>
<h3>New Company</h3>
<br>
<form:form class="form-horizontal" role="form" method="POST"
	action="save" modelAttribute="company">
	<div class="form-group">
		<label for="inputCompanyName" class="col-sm-2 control-label">Company
			Name</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="companyName" required="required"></form:input>
		</div>
	</div>
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/company/view" class="btn btn-danger">Cancel</a>
		<input type="submit" value="Save" class="btn btn-success" />
	</div>
</form:form>
<%@ include file="../includes/footer.jsp"%>