package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SalesTransaction {

	private int salestransactionId;
	private int productId;
	private int salesId;
	private int quantity;
	private String description;
	private String salesType;
	private double saleTransactionAmount;
	private String dateCreated;
	
}
