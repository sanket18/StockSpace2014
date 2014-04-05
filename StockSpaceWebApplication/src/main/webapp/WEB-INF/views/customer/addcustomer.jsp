<%@ include file="../includes/header.jsp"%>
<br><br><br>
<h3>New Customer</h3>
<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/customer/save" modelAttribute="Customer">
	
	<div class="form-group">
		<label for="fullName" class="col-sm-2 control-label">FullName</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="fullName" 
			placeholder="Enter FullName" required="required"></form:input>
		</div>
	</div>

	<div class="form-group">
		<label for="inputAddress" class="col-sm-2 control-label">Address</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="address"
			placeholder="Enter Address" required="required"></form:input>
		</div>
	</div>

	<div class="form-group">
		<label for="inputEmail" class="col-sm-2 control-label">Email</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="email"
			placeholder="Email Required" required="required"></form:input>
		</div>
	</div>

	<div class="form-group">
		<label for="inputPhone" class="col-sm-2 control-label">Phone</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="phone"
			placeholder="Phone.No Required" required="required"></form:input>
		</div>
	</div>

	<div class="form-group">
		<label for="inputisActive" class="col-sm-2 control-label">IsActive</label>
		<div class="col-sm-1" style="text-align: left;">
		<form:checkbox path="isActive" class="form-control"/>
		</div>
	</div>
	
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/customer/view" class="btn btn-default">Close</a> <input
			type="submit" class="btn btn-primary" value="Save" />
	</div>

<br>
</form:form>
<br/><br/>

<%@ include file="../includes/footer.jsp"%>