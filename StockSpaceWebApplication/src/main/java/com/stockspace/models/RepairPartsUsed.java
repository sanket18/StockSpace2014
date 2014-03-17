package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RepairPartsUsed {

	private int repairPartsUsedId;
	private int repairId;
	private int productId;
	private String dateCreated;
}
