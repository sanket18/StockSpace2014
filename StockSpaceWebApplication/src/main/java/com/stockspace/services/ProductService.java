package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.ProductMapper;
import com.stockspace.models.Product;

@Component
public class ProductService {
	
	@Autowired(required=true)
	private ProductMapper productMapper;

	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productMapper.getAllProducts();
	}

	public Product getProductNameById(int productId) {
		// TODO Auto-generated method stub
		return productMapper.getProductNameById(productId);
	}
	
	

}
