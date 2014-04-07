<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<label>SubCategory : </label>
<select name="subcategoryCombo" class="abc" id="subcategoryCombo" path="subCategoryId" >
	<c:forEach items="${subcategory}" var="subcategory">
		<option value ="${subcategory.subCategoryId}">${ subcategory.subCategoryName }</option>
	</c:forEach>
</select>