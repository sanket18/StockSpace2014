package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Stock {
	
	private int stockId;
	private int productId;
	private int quantity;
	private int minimumStockQuantity;
	private String dateCreated;
	private String productName;
	private Boolean isActive;
}
