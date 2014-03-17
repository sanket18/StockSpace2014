package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Repairs {

	private int repairId;
	private int repairproductId;
	private int subCategoryId;
	private String description;
	private String repairSatus;
	private String dateCreated;
}
