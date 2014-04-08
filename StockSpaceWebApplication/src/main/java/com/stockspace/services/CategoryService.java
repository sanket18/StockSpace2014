package com.stockspace.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.stockspace.mappers.CategoryMapper;
import com.stockspace.models.Category;

@Component
public class CategoryService {

	@Autowired(required = true)
    private CategoryMapper categoryMapper;
    
	public List<Category> findAllCategory(int cid) {
		
		return categoryMapper.findAllCategory(cid);
	}
	
	public List<Category> getCategoryByCompany(int companyId)
	{
		List<Category> categories = new ArrayList<Category>();
		categories= categoryMapper.getCategoryByCompany(companyId);
		return categories;
	}
	
	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		return categoryMapper.getAllCategory();
	}

	public int saveCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryMapper.saveCategory(category);
	}

	public Category edtCategory(int categoryId) {
		// TODO Auto-generated method stub
		return categoryMapper.edtCategory(categoryId);
	}

	public int updtCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryMapper.updtCategory(category);
	}

	public int actCategory(int categoryId) {
		// TODO Auto-generated method stub
		return categoryMapper.actCategory(categoryId);
	}

	public int deactCategory(int categoryId) {
		// TODO Auto-generated method stub
		return categoryMapper.deactCategory(categoryId);
	}
}
