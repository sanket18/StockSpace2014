<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<h3>New Stock</h3>
<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/stock/save" modelAttribute="stock">
	<div class="form-group">
		<label for="productId" class="col-sm-2 control-label">Products</label>
		<div class="col-sm-5">
			<form:select name="productId" id="productId" path="productId">
				<option>Select Product</option>
				<c:forEach items="${products}" var="products">
					<option value="${products.productId}">${products.productName}</option>
				</c:forEach>
			</form:select>
		</div>
	</div>
<div class="form-group">
		<label for="quantity" class="col-sm-2 control-label">Quantity</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="quantity"
				id="address" required="required"></form:input>
		</div>
	</div>


	<div class="form-group">
		<label for="minimumStockQuantity" class="col-sm-2 control-label">Min Quantity</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="minimumStockQuantity"
				id="minimumStockQuantity" required="required"></form:input>
		</div>
	</div>


	<div class="form-group">
		<label for="inputisActive" class="col-sm-2 control-label">IsActive</label>
		<div class="col-sm-1" style="text-align: left;">
		<form:checkbox path="isActive" id="isActive" class="form-control"/>
		</div>
	</div>
	

	<div style="text-align: center;">
		<a href="/StockSpaceWeb/stock/view" class="btn btn-default">Close</a>
		<input type="submit" class="btn btn-primary" value="Save" />
	</div>

	<br>
</form:form>
<br />
<br />

<%@ include file="../includes/footer.jsp"%>