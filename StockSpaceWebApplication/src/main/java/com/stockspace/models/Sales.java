package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Sales {
	
	private int salesId;
	private String salesDate;
	private int customerId;
	private String paymentMode;
	private double totalAmount;
	private double creditAmount;
	private double debitAmount;
	private double cashAmount;
	private double pendingAmount;
	private String dateCreated;

}
