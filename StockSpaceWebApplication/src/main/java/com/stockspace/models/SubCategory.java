package com.stockspace.models;

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
}
