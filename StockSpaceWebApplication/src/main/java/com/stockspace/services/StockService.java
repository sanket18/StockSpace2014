package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.StockMapper;
import com.stockspace.models.Customer;
import com.stockspace.models.Stock;

@Component
public class StockService {

	@Autowired(required=true)
	private StockMapper stockMapper;

	public List<Stock> getAllStocks() {
		// TODO Auto-generated method stub
		return stockMapper.getAllStocks();
	}

	public int deactivateStock(int stockId) {
		// TODO Auto-generated method stub
		return stockMapper.deactivateStock(stockId);
	}

	public int activateStock(int stockId) {
		// TODO Auto-generated method stub
		return stockMapper.activateStock(stockId);
	}

	public Stock editStock(int stockId) {
		// TODO Auto-generated method stub
		return stockMapper.editStock(stockId);
	}

	public int updateStock(Stock stock) {
		// TODO Auto-generated method stub
		return stockMapper.updateStock(stock);
	}

	public int saveStock(Stock stock) {
		// TODO Auto-generated method stub
		return stockMapper.saveStock(stock);
	}
}
