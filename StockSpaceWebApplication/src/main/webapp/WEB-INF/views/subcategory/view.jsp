<%@ include file="../includes/header.jsp"%>
<br>
<br>
<br>
<h3 class="pull-left silent">SubCategory</h3>
<button class="btn btn-default pull-right" data-toggle="modal"
	data-target="#myModal" id="subCategoryBtn">Add New
	Sub-Category</button>
<br>
<c:if test="${!empty subcategory}">
	<c:if test="${!empty result}">
  	${result }
</c:if>
<br>
<br>
</c:if>

<!-- View for company,category and subcategory -->
<table class="table table-hover">
<tr>
    <th>Company Name</th>
    <th>Category</th>
    <th>SubCategory</th>
    <th>Action</th>
	<th>&nbsp;</th>
</tr>
<c:forEach items="${companies}" var="companies">

    <c:forEach items="${companies.category}" var="category">
    
   			 <c:forEach items="${category.subcategory}" var="subcategory">
   				 	 <c:choose>
   					  	<c:when test="${subcategory.isActive==true}">
    				 	<tr>
    	        		<td>${companies.companyName}</td>
        				<td>${category.categoryName}</td>
        				<td>${subcategory.subCategoryName}</td>
        				<td><a href="deactivate/${subcategory.subCategoryId}">Deactivate</a></td>
        				<td><a href="edit/${subcategory.subCategoryId}">edit</a></td>
   					 </tr> 
   					 </c:when>
 					<c:when test="${subcategory.isActive==false}">
 
   				 	<tr>
    	        		<td>${companies.companyName}</td>
        				<td>${category.categoryName}</td>
        				<td>${subcategory.subCategoryName}</td>
        				<td><a href="activate/${subcategory.subCategoryId}">Activate</a></td>
   					 </tr> 
   					 </c:when>
   					 </c:choose>
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
				<h4 class="modal-title" id="myModalLabel">Add Subcategory</h4>
			</div>
			<div class="modal-body">

				<form class="form-horizontal" role="form" method="POST"
					action="StockSpaceWeb/subcategory/save" modelAttribute="subcategory">
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
						<label for="inputName" class="col-sm-2 control-label">SubCategoryName</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" path="subCategoryName"
								id="SubCategoryName" name="SubCategoryName" placeholder="Enter SubCategoryName" required="required" />

						</div>
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<input type="button" class="btn btn-primary" id="btnSave" value="Save" />
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
<script src="/StockSpaceWeb/resources/js/AjaxsubCategory.js"></script>