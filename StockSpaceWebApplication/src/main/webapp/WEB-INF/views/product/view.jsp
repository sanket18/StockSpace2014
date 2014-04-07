<%@ include file="../includes/header.jsp"%>
<br><br><br>
<h3>View</h3>

<h3 class="pull-left silent">product</h3>
<button class="btn btn-default pull-right"
	data-toggle="modal" data-target="#myModal" id="productBtn">
	Add New Product
</button>
<br>



<c:if test="${!empty proudct}">
	<c:if test="${!empty result}">
  	${result }
</c:if>
<br><br>
</c:if>


<!-- View for company,category and subcategory and product -->
<table class="table table-hover">
<tr>
    <th>Company Name</th>
    <th>Category</th>
    <th>SubCategory</th>
    <th>Product</th>
    <th>Action</th>
</tr>
<c:forEach items="${companies}" var="companies">

    <c:forEach items="${companies.category}" var="category">
    
   			 <c:forEach items="${category.subcategory}" var="subcategory">
   			 		
   			 		<c:forEach items="${subcategory.product}" var="product">
   			 			
   					<c:choose>
   					  <c:when test="${product.isActive==false}">
 					   <tr>
    	        		<td>${companies.companyName}</td>
        				<td>${category.categoryName}</td>
        				<td>${subcategory.subCategoryName}</td>
        				<td>${product.productName}</td>
        				<td><a href="activate/${product.productId}">Active</a></td>
   					 </tr>
   					 </c:when>
   					 </c:choose>
   					 <c:choose>
   					  	<c:when test="${product.isActive==true}">
   				 			<tr>
    	        			<td>${companies.companyName}</td>
        					<td>${category.categoryName}</td>
        					<td>${subcategory.subCategoryName}</td>
        					<td>${product.productName}</td>
        					<td><a href="deactivate/${product.productId}">Deactivate</a></td>
        					<td><a href="edit/${product.productId}">edit</a></td>
   					 		</tr>
   					 	</c:when>
   					 	
   					</c:choose>
 					    
   					 </c:forEach>
       		</c:forEach>
     </c:forEach>		
</c:forEach>
</table>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Add Product</h4>
			</div>
			<div class="modal-body">

				<form class="form-horizontal" role="form" method="POST"
					action="StockSpaceWeb/product/save" modelAttribute="product">
					<div class="form-group">
						<label>Company : </label>
							<select name="Company" id="companyCombo">
							<c:forEach items="${companies}" var="company">
							<option value="${company.companyId}">${company.companyName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<div id="CategoryComboDiv">
							<!--  this is where the ajax category combobox is loaded  -->
						</div>
					</div>
					
					<div class="form-group">
						<div id="subcategoryComboDiv">
							<!--  this is where the ajax category combobox is loaded  -->
						</div>
					</div>
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">Product Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" path="productName"
								id="productName" name="productName" placeholder="Enter productName" required="required" />

						</div>
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<input type="button" class="btn btn-primary" id="btnSavep" value="Save" />
					</div>
				</form>
			</div>
		</div>


		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<br/><br/>


<%@ include file="../includes/footer.jsp"%>
<script src="/StockSpaceWeb/resources/js/AjaxProduct.js"></script>