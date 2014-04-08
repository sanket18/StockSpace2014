package com.stockspace.mappers;

import java.util.List;

import com.stockspace.models.Category;


public interface CategoryMapper {

	
	public List<Category> findAllCategory(int cid);
	
	public List<Category> getCategoryByCompany(int companyId);

	List<Category> getAllCategory();

	int saveCategory(Category category);

	Category edtCategory(int categoryId);

	int updtCategory(Category category);

	int deactCategory(int categoryId);

	int actCategory(int categoryId);
}
