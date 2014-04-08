<%@ include file="../includes/header.jsp"%>

<br>
<br>
<br>
<!-- <a href="new/" class="btn btn-primary">Add New</a> -->
<h3>Stock From Database</h3>
<table class="table table-hover table-bordered table-responsive">
	<tr>
		<th>ID</th>
		<th>Product</th>
		<th>Quantity</th>
		<th>Min Quantity</th>
		<th>&nbsp;</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach items="${stocks}" var="stock">
		<c:choose>
			<c:when test="${stock.isActive==true}">
				<c:choose>
					<c:when test="${stock.quantity<stock.minimumStockQuantity }">
						<tr style="background-color: #F78181;">
					</c:when>
					<c:otherwise>
						<tr>
					</c:otherwise>
				</c:choose>
				<td>${stock.stockId}</td>
				<td>${stock.productName}</td>
				<td>${stock.quantity}</td>
				<td>${stock.minimumStockQuantity}</td>
				<td><a href="deactivate/${stock.stockId}">deactivate</a></td>
				<td><a href="edit/${stock.stockId}">edit</a></td>
				</tr>
			</c:when>
			<c:when test="${stock.isActive==false}">
				<c:choose>
					<c:when test="${stock.quantity<stock.minimumStockQuantity }">
						<tr style="background-color: #F78181;">
					</c:when>
					<c:otherwise>
						<tr>
					</c:otherwise>
				</c:choose>
				<td>${stock.stockId}</td>
				<td>${stock.productName}</td>
				<td>${stock.quantity}</td>
				<td>${stock.minimumStockQuantity}</td>
				<td><a href="activate/${stock.stockId}">activate</a></td>
				<td></td>
				</tr>
			</c:when>
		</c:choose>
	</c:forEach>
</table>
<br />
<br />

<%@ include file="../includes/footer.jsp"%>