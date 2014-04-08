/**
 * 
 */
var categoryId;
$(document).ready(function() {
	$("#categoryCombo").change(function() {
		categoryId = $(this).val();
		var post_url = "/StockSpaceWeb/product/getProductCombo/" + categoryId;
		if (categoryId != null) {
			$.ajax({
				type : "GET",
				url : post_url,
				success : function(result) {
					$("#subcategoryComboDiv").html(result);
				},
				error : function(xhr, status, error) {
					$("#subcategoryComboDiv").html(status);
				}
			});
		}
		return false;
	});
	
});

function combochanged() {
	var categoryId = $("#categoryCombo").val();
	var post_url = "/StockSpaceWeb/product/getProductCombo/" + categoryId;
	if (categoryId != null) {
		$.ajax({
			type : "GET",
			url : post_url,
			success : function(result) {
				$("#subcategoryComboDiv").html(result);
			},
			error : function(xhr, status, error) {
				$("#subcategoryComboDiv").html(status);
			}
		});
	}
	
	return false;
}

$("#btnSavep").click(function() {
	if($('#productName').val() == "") {
		 alert("Please enter Product name");
		 return;
		}
	var obj = {};
	obj.productName = $('#productName').val();
	obj = JSON.stringify(obj);
	$.ajax({
		url : "/StockSpaceWeb/product/validate",
		type : "post",
		data : obj,
		dataType : "json",
		contentType : "application/json",
		success : function(data) {
			if (data == 1)
				alert("Product already exists!");
			else {
				callSave();
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("failure");
		}
	});
});

function callSave() {
	var obj = {};
	obj.productName = $('#productName').val();
	obj.subCategoryId=$('#subcategoryCombo').val();
	obj = JSON.stringify(obj);
	$.ajax({
        url: "/StockSpaceWeb/product/save",
        type: "post",
        data: obj,
        dataType : "json",
        contentType: "application/json",
        success: function(data){
        	window.location.replace("/StockSpaceWeb/product/view");
         },
      error:function(jqXHR, textStatus, errorThrown) {
    	  window.location.replace("/StockSpaceWeb/product/view");
         }   
   }); 	
};
