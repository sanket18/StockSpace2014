package com.stockspace.models;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubCategory {

	private int subCategoryId;
	private String subCategoryName;
	private int categoryId;
	private String dateCreated;
	
	private List<Product> product;
}
