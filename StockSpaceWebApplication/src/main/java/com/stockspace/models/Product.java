package com.stockspace.models;

import java.util.List;

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
	private boolean isActive;

	private List<Stock> stock;
	private Boolean isActive;
	
	
}
