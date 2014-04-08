package com.stockspace.models;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Company {

	private int companyId;
	private String companyName;
	private String datecreated;
	private Boolean isActive;
	private List<Category> category;
}
