<%@ include file="../includes/header.jsp"%>

<br><br><br>
<br>
<form:form  class="form-horizontal" role="form" method="GET" action="/StockSpaceWeb/repair/search"  modelAttribute="customer">
		<label for="fullName" class="col-sm-2 control-label">Customer</label>
		<div class="col-sm-5">
			<form:select name="fullName" id="customerCombo" path="customerId">
				<option value="0">Select Customer</option>
				<c:forEach items="${customers}" var="customer">
					<option value="${customer.customerId}">${customer.fullName}</option>
				</c:forEach>
			</form:select>
			<input type="submit" value="Add New" class="btn btn-primary"/>
		</div>
		
		</form:form>
<!-- <a href="search/customerCombo.value" class="btn btn-primary">Add New</a> -->

<br><br>
<h3>Repairs From Database</h3>
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
	</tr>
<c:forEach items="${repairs}" var="repair">    
<tr>
        <td>${repair.repairId}</td>
        <td>${repair.customerId}</td>
        <td>${repair.subCategoryId}</td>
        <td>${repair.description}</td>
        <td>${repair.repairStatus}</td>
        <td>${repair.dateCreated}</td>
        <c:choose>
        <c:when test="${repair.repairStatus=='RepairedDelivered'|| repair.repairStatus=='NotRepairedDelivered'}">
        <td>&nbsp;</td>
        </c:when>
        <c:otherwise>
        <td><a href="edit/${repair.repairId }">edit</a></td>
        </c:otherwise>
        </c:choose>
    </tr>
</c:forEach>
</table>
<br/><br/>

<%@ include file="../includes/footer.jsp"%>