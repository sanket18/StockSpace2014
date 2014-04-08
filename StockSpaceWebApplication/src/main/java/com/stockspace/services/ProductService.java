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

	 
	public List<Product> findAllProducts(int subcatid) {
		
		return productMapper.findAllProducts(subcatid);
	}

	public int saveProduct(Product product) {
		// TODO Auto-generated method stub
		return productMapper.saveProduct(product);
	}

	public int validateEntry(Product product) {
		// TODO Auto-generated method stub
		return productMapper.validateEntry(product);
	}

	public Product getProductById(int productId) {
		// TODO Auto-generated method stub
		return productMapper.getProductById(productId);
	}

	public int updateProduct(Product product) {
		// TODO Auto-generated method stub
		return productMapper.updateProduct(product);
	}

	public int activateProduct(int productId) {
		// TODO Auto-generated method stub
		return productMapper.activateProduct(productId);
	}

	public int deactivateProduct(int productId) {
		// TODO Auto-generated method stub
		return productMapper.deactivateProduct(productId);
	}

	

}
