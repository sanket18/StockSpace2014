package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	
	private int productId;
	private String productName;
	private int subCategoryId;
	private String description;
	private String dateCreated;

}
