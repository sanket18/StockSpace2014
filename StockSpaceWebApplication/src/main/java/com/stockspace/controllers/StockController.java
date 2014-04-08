package com.stockspace.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stockspace.models.Customer;
import com.stockspace.models.Product;
import com.stockspace.models.Stock;
import com.stockspace.services.ProductService;
import com.stockspace.services.StockService;

@Controller
@RequestMapping(value="/stock")
public class StockController {

	@Autowired(required=true)
	private StockService stockService;
	
	@Autowired(required=true)
	private ProductService productService;
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String viewStock(Model model){
		List<Stock> stocks;
		stocks=stockService.getAllStocks();
		for(int i=0;i<stocks.size();i++){
			Product tempProduct = productService.getProductNameById(stocks.get(i).getProductId());
			stocks.get(i).setProductName(tempProduct.getProductName());
		}
		model.addAttribute("stocks",stocks);
		return "stock/viewstock";
	}
	

	@RequestMapping(value="/new",method=RequestMethod.GET)
	public String newStock(Model model){
		Stock stock= new Stock();
		List<Product> products= productService.getAllProducts();
		model.addAttribute("stock",stock);
		model.addAttribute("products",products);
		return "stock/addstock";
	}

	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveStock(@ModelAttribute("stock") Stock stock, Model model){
		int saved;
	
		try {
			saved= stockService.saveStock(stock);
			
			model.addAttribute("savedStock", saved);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/stock/view";
	}
	
	@RequestMapping(value="/deactivate/{stockId}",method=RequestMethod.GET)
	public String deactivateStock(@PathVariable("stockId") int stockId,RedirectAttributes ra, Model model){
		int deactivated;
	
		try {
			deactivated= stockService.deactivateStock(stockId);
			
			model.addAttribute("deactivated", deactivated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/stock/view";
	}
	
	@RequestMapping(value="/activate/{stockId}",method=RequestMethod.GET)
	public String activateStock(@PathVariable("stockId") int stockId,RedirectAttributes ra, Model model){
		int activated;
	
		try {
			activated= stockService.activateStock(stockId);
			
			model.addAttribute("activated", activated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/stock/view";
	}
	
	@RequestMapping(value="/edit/{stockId}",method=RequestMethod.GET)
	public String editStock(@PathVariable("stockId") int stockId,RedirectAttributes ra, Model model){
		Stock edited;
		Product product;
		try {
			edited= stockService.editStock(stockId);
			product=productService.getProductNameById(edited.getProductId()); 
			edited.setProductName(product.getProductName());
			model.addAttribute("editStock", edited);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "stock/editstock";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateStock(@ModelAttribute("editStock") Stock stock, Model model){
		int updated;
	
		try {
			updated= stockService.updateStock(stock);
			
			model.addAttribute("updatedStock", updated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/stock/view";
	}
	
}
