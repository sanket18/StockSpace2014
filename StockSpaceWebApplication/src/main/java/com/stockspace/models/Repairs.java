package com.stockspace.models;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Repairs {

	private int repairId;
	private int subCategoryId;
	private String description;
	private String repairStatus;
	private String dateCreated;
	private int customerId;
	private int employeeId;
}
