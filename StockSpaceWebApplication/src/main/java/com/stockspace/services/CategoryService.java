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
}
