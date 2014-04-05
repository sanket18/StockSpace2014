package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RepairProduct {
	
	private int repairproductId;
	private int customerId;
	private int employeeId;
	private String dateCreated;
}
