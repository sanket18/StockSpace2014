<%@ include file="../includes/header.jsp"%>
<br><br><br>
<h3>Edit Stock</h3>
<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/stock/update" modelAttribute="editStock">
	<form:hidden path="stockId" value="${editStock.stockId }" />
	<div class="form-group">
		<label for="productName" class="col-sm-2 control-label">Product</label>
		<div class="col-sm-5">
			<input class="form-control" id="productName" 	value="${editStock.productName }" disabled></input>
		</div>
	</div>

	<div class="form-group">
		<label for="quantity" class="col-sm-2 control-label">Quantity</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="quantity"
				id="address" value="${editStock.quantity}"  required="required"></form:input>
		</div>
	</div>


	<div class="form-group">
		<label for="minimumStockQuantity" class="col-sm-2 control-label">Min Quantity</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="minimumStockQuantity"
				id="minimumStockQuantity" value="${editStock.minimumStockQuantity}"  required="required"></form:input>
		</div>
	</div>


	<div class="form-group">
		<label for="inputisActive" class="col-sm-2 control-label">IsActive</label>
		<div class="col-sm-1" style="text-align: left;">
		<form:checkbox path="isActive" id="isActive" value="${editStock.isActive}" class="form-control"/>
		</div>
	</div>
	
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/stock/view" class="btn btn-default">Close</a> <input
			type="submit" class="btn btn-primary" value="Save" />
	</div>

<br>
</form:form>
<br/><br/>

<%@ include file="../includes/footer.jsp"%>