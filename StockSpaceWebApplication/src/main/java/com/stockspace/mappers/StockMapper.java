package com.stockspace.mappers;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.stockspace.models.Customer;
import com.stockspace.models.Stock;

@Repository(value="stockMapper")
@Component
public interface StockMapper {

	List<Stock> getAllStocks();

	int deactivateStock(int stockId);

	int activateStock(int stockId);

	Stock editStock(int stockId);

	int updateStock(Stock stock);

	int saveStock(Stock stock);

	
}
