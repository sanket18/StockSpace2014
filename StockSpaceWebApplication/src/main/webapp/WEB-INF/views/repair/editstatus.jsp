<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<h3>Edit Customer</h3>
<form:form class="form-horizontal" role="form" method="POST"
	action="/StockSpaceWeb/repair/updatestatus"
	modelAttribute="changedStatus">
	<form:hidden path="repairId" value="${repair.repairId }"/>
	<div class="form-group">
		<label for="product" class="col-sm-2 control-label">Product</label>
		<div class="col-sm-5">
			<input id="product" value="${repair.subCategoryId}" disabled />
		</div>
	</div>
	<div class="form-group">
		<label for="description" class="col-sm-2 control-label">Description</label>
		<div class="col-sm-5">
			<form:input class="form-control" path="description" id="description" value="${repair.description}" required="required" />
		</div>
	</div>
	<div class="form-group">
		<label for="customerId" class="col-sm-2 control-label">CustomerId</label>
		<div class="col-sm-5">
			<input id="customerId" value="${repair.customerId}" disabled />
		</div>
	</div>
	<div class="form-group">
		<label for="dateCreated" class="col-sm-2 control-label">Date
			Created</label>
		<div class="col-sm-5">
			<input id="dateCreated" value="${repair.dateCreated}" disabled />
		</div>
	</div>
	<div class="form-group">
		<label for="repairStatus" class="col-sm-2 control-label">Repair
			Status</label>
		<form:select name="productStatus" id="repairStatus"
			path="repairStatus">
			<c:choose>
				<c:when test="${repair.repairStatus=='Received' }">
					<option value="Received">Received</option>
					<option value="InRepair">In Repair</option>
					<option value="Repaired">Repaired</option>
					<option value="RepairedDelivered">Repaired-Delivered</option>
					<option value="NotRepaired">Not Repaired</option>
					<option value="NotRepairedDelivered">Not
						Repaired-Delivered</option>
				</c:when>
				<c:when test="${repair.repairStatus=='InRepair' }">
					<option value="InRepaire">In Repair</option>
					<option value="Repaired">Repaired</option>
					<option value="RepairedDelivered">Repaired-Delivered</option>
					<option value="NotRepaired">Not Repaired</option>
					<option value="NotRepairedDelivered">Not
						Repaired-Delivered</option>
				</c:when>
				<c:when test="${repair.repairStatus=='Repaired' }">
					<option value="Repaired">Repaired</option>
					<option value="RepairedDelivered">Repaired-Delivered</option>
					<option value="NotRepaired">Not Repaired</option>
					<option value="NotRepairedDelivered">Not
						Repaired-Delivered</option>
				</c:when>
				<c:when test="${repair.repairStatus=='NotRepaired' }">
					<option value="NotRepaired">Not Repaired</option>
					<option value="NotRepairedDelivered">Not
						Repaired-Delivered</option>
				</c:when>
			</c:choose>
		</form:select>
	</div>
	<div style="text-align: center;">
		<a href="/StockSpaceWeb/repair/view" class="btn btn-default">Close</a>
		<input type="submit" class="btn btn-primary" value="Save" />
	</div>
	<br>
</form:form>
<br />
<br />

<%@ include file="../includes/footer.jsp"%>