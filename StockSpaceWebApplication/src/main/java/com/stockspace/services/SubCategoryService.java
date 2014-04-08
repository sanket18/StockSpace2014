package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.SubCategoryMapper;
import com.stockspace.models.SubCategory;


@Component
public class SubCategoryService {

	
	@Autowired(required = true)
    private SubCategoryMapper subcategoryMapper;
    
	public List<SubCategory> findAllSubCategory(int catid) {
		
		return subcategoryMapper.findAllSubCategory(catid);
	}
	
	public int saveSubCategory(SubCategory subcategory) {
		return subcategoryMapper.saveSubCategory(subcategory);
	}

	public SubCategory getSubCategoryById(int subCategoryId) {
		// TODO Auto-generated method stub
		return subcategoryMapper.getSubCategoryById(subCategoryId);
	}

	public int updateSubCategory(SubCategory subcategory) {
		// TODO Auto-generated method stub
		return subcategoryMapper.updateSubCategory(subcategory);
	}

	public int validateEntry(SubCategory subcategory) {
		// TODO Auto-generated method stub
		return subcategoryMapper.validateEntry(subcategory);
	}

	public List<SubCategory> getSubCategoryByCategory(int categoryId) {
		// TODO Auto-generated method stub
		return subcategoryMapper.getSubCategoryByCategory(categoryId);
	}

	public int activateSubCategory(int subCategoryId) {
		// TODO Auto-generated method stub
		return subcategoryMapper.activateSubCategory(subCategoryId);
	}

	public int deactivateSubCategory(int subCategoryId) {
		// TODO Auto-generated method stub
		return subcategoryMapper.deactivateSubCategory(subCategoryId);
	}

	
}
