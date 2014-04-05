<%@ include file="../includes/header.jsp"%>
<a href="new/" class="btn btn-primary">Add New</a>
<br>
<br>
<br>
<h3>New Repair</h3>

<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/repair/newProduct" modelAttribute="repair">

	<div class="form-group">
		<label for="fullName" class="col-sm-2 control-label">Customer</label>
		<div class="col-sm-5">
			<form:hidden path="customerId" value="${customer.customerId}" />
		<input type="text" value="${customer.fullName}" disabled />
		</div>
	</div>
	<div class="form-group">
		<label for="subCategoryId" class="col-sm-2 control-label">Products</label>
		<div class="col-sm-5">
			<form:select name="fullName" id="subCategoryId" path="subCategoryId">
				<option>Select Product</option>
				<c:forEach items="${products}" var="products">
					<option value="${products.subCategoryId}">${products.productName}</option>
				</c:forEach>
			</form:select>
		
		</div>
	</div>

	 <div class="form-group">
		<label for="description" class="col-sm-2 control-label">Description</label>
		<div class="col-sm-5">                  
			<form:input class="form-control" path="description"
				placeholder="Enter Description" required="required"></form:input>
		</div>
	</div>

	<div class="form-group">
		<label for="repairStatus" class="col-sm-2 control-label">Status</label>
		<div class="col-sm-5">
			<form:select name="productStatus" id="repairStatus" path="repairStatus">
				<option>Select Status</option>
					<option value="Received">Received</option>
					<option value="InRepair">In Repair</option>
			</form:select>
		</div>
	</div>
	<div>
	<a href="/StockSpaceWeb/repair/view" class="btn btn-primary">Back</a>
	<input type="submit" class="btn btn-primary" value="Add Product"/>
	<%-- <a href="newProduct/${repairs}" class="btn btn-primary">Add Product</a> --%>
	</div>
</form:form>
<br><br>
<table class="table table-hover">
	<tr>
		<th>ID</th>
		<th>Customer</th>
		<th>Repair Product</th>
		<th>Description</th>
		<th>Repair Status</th>
		<th>Date Received</th>
		<th>&nbsp;</th>
		<th>&nbsp;</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach items="${repairs}" var="repair">    
	<tr>
        <td>${repair.repairId}</td>
        <td>${repair.customerId}</td>
        <td>${repair.subCategoryId}</td>
        <td>${repair.description}</td>
        <td>${repair.repairStatus}</td>
        <td>${repair.dateCreated}</td>
        <td>${customer.isActive}</td>
        <td><a href="" class="glyphicon glyphicon-plus"></a></td>
		<td><a href="">Remove</a></td>
    </tr>
</c:forEach>

</table>
<br />
<br />
<%@ include file="../includes/footer.jsp"%>