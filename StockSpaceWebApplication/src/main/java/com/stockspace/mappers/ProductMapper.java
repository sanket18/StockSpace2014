package com.stockspace.mappers;

import java.util.List;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.stockspace.models.Product;

@Repository(value="productMapper")
@Component
public interface ProductMapper {

	List<Product> getAllProducts();

	Product getProductNameById(int productId);

	public List<Product> findAllProducts(int subcatid);

	public int saveProduct(Product product);

	public int validateEntry(Product product);

	public Product getProductById(int productId);

	public int updateProduct(Product product);

	public int activateProduct(int productId);

	public int deactivateProduct(int productId);

}
