<%@ include file="../includes/header.jsp"%>

<br><br><br>
<title>Edit Company</title>
<h3>Edit Company</h3>
<br>
<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/company/update" modelAttribute="recCompany">
	<form:hidden path="companyId" value="${company.companyId }"/>
	<div class="form-group">
		<label for="inputCompanyName" class="col-sm-2 control-label">Company Name</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="companyName" value="${company.companyName}" required="required"></form:input>
		</div>
	</div>
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/company/view" class="btn btn-danger">Cancel</a>
		 <input type="submit"  value="Update" class="btn btn-success" />
	</div>
</form:form>



<%@ include file="../includes/footer.jsp"%>