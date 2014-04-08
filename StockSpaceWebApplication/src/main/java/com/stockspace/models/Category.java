package com.stockspace.models;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Category {

	private int categoryId;
	private String categoryName;
	private int companyId;
	private String dateCreated;
	
	private List<SubCategory> subcategory;
	
}
