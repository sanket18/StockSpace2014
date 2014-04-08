<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<label>Category : </label>
<select name="categoryComboBox" class="abc" id="categoryCombo" onchange="combochanged()">
	<c:forEach items="${category}" var="category">
		<option value ="${category.categoryId}">${ category.categoryName }</option>
	</c:forEach>
</select>