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


}
