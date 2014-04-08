package com.stockspace.mappers;

import java.util.List;


import com.stockspace.models.SubCategory;

public interface SubCategoryMapper {

	public List<SubCategory> findAllSubCategory(int catid);
	
	public int saveSubCategory(SubCategory subcategory);

	public int deleteSubCategory(int subCategoryId);

	public int updateSubCategory(SubCategory subcategory);

	public SubCategory getSubCategoryById(int subCategoryId);

	public int validateEntry(SubCategory subcategory);

	public int deleteVerify(int subCategoryId);

	public List<SubCategory> getSubCategoryByCategory(int categoryId);

	public int activateSubCategory(int subCategoryId);

	public int deactivateSubCategory(int subCategoryId);
					  
}
