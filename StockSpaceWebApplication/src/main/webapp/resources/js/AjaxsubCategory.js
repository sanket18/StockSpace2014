/**
 * 
 */
$(document).ready(function() {
	$("#companyCombo").change(function() {
		var companyId = $(this).val();
		var post_url = "/StockSpaceWeb/subcategory/getCategoryCombo/" + companyId;
		if (companyId != null) {
			$.ajax({
				type : "GET",
				url : post_url,
				success : function(result) {
					$("#CategoryComboDiv").html(result);
				},
				error : function(xhr, status, error) {
					$("#CategoryComboDiv").html(status);
				}
			});
		}
		return false;
	});
	
});

$(document).ready(function() {
	var companyId = 100;
	var post_url = "/StockSpaceWeb/subcategory/getCategoryCombo/" + companyId;
	if (companyId != null) {
		$.ajax({
			type : "GET",
			url : post_url,
			success : function(result) {
				$("#CategoryComboDiv").html(result);
			},
			error : function(xhr, status, error) {
				$("#CategoryComboDiv").html(status);
			}
		});
	}
	return false;
});


$("#btnSave").click(function() {
	if($('#SubCategoryName').val() == "") {
		 alert("Please enter SubCategory name");
		 return;
		}
	var obj = {};
	obj.subCategoryName = $('#SubCategoryName').val();
	obj = JSON.stringify(obj);
	$.ajax({
		url : "/StockSpaceWeb/subcategory/validate",
		type : "post",
		data : obj,
		dataType : "json",
		contentType : "application/json",
		success : function(data) {
			if (data == 1)
				alert("SubCategory already exists!");
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
	obj.subCategoryName = $('#SubCategoryName').val();
	obj.categoryId=$('#categoryCombo').val();
	obj = JSON.stringify(obj);
	$.ajax({
        url: "/StockSpaceWeb/subcategory/save",
        type: "post",
        data: obj,
        dataType : "json",
        contentType: "application/json",
        success: function(data){
        	window.location.replace("/StockSpaceWeb/subcategory/view");
         },
      error:function(jqXHR, textStatus, errorThrown) {
    	  window.location.replace("/StockSpaceWeb/subcategory/view");
         }   
   }); 	
};
