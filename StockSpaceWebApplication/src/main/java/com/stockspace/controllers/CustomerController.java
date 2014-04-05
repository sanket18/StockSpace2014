package com.stockspace.controllers;

import java.util.List;

import org.apache.commons.httpclient.log.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stockspace.models.Customer;
import com.stockspace.models.MyMessage;
import com.stockspace.services.CustomerService;

@RequestMapping("/customer")
@Controller
public class CustomerController {

	protected static final String JSON_CONTENT="application/json";
	
	@Autowired(required=true)
	private CustomerService customerService;

	
	
	@RequestMapping(value="/new",method=RequestMethod.GET)
	public String newCustomer(Model model){
		Customer customer= new Customer();
		model.addAttribute("Customer",customer);
		return "customer/addcustomer";
	}

	@RequestMapping(value="/view",method=RequestMethod.GET)
	public String viewAllCustomer(Model model){
		
		List<Customer> customer;
		customer= customerService.findAllCustomers();
		model.addAttribute("customer", customer);
		return "customer/viewcustomer";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("Customer") Customer customer, Model model){
		int saved;
	
		try {
			saved= customerService.saveCustomer(customer);
			
			model.addAttribute("savedCustomer", saved);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/customer/view";
	}
	
	@RequestMapping(value="/viewdata",method=RequestMethod.GET,produces=JSON_CONTENT)
	@ResponseBody
	public List<Customer> viewdataAllCustomer(Model model){
		
		
		List<Customer> customer;
		customer= customerService.findAllCustomers();
		model.addAttribute("customer", customer);
		
		return customer;
	}
	
	@RequestMapping(value="/deactivate/{customerId}",method=RequestMethod.GET)
	public String deactivateCustomer(@PathVariable("customerId") int customerId,RedirectAttributes ra, Model model){
		int deactivated;
	
		try {
			deactivated= customerService.deactivateCustomer(customerId);
			
			model.addAttribute("deactivated", deactivated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/customer/view";
	}
	
	@RequestMapping(value="/activate/{customerId}",method=RequestMethod.GET)
	public String activateCustomer(@PathVariable("customerId") int customerId,RedirectAttributes ra, Model model){
		int activated;
	
		try {
			activated= customerService.activateCustomer(customerId);
			
			model.addAttribute("activated", activated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/customer/view";
	}
	
	@RequestMapping(value="/edit/{customerId}",method=RequestMethod.GET)
	public String editCustomer(@PathVariable("customerId") int customerId,RedirectAttributes ra, Model model){
		Customer edited;
	
		try {
			edited= customerService.editCustomer(customerId);
			
			model.addAttribute("editCustomer", edited);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "customer/editcustomer";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateCustomer(@ModelAttribute("editCustomer") Customer customer, Model model){
		int updated;
	
		try {
			updated= customerService.updateCustomer(customer);
			
			model.addAttribute("updatedCustomer", updated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/customer/view";
	}
	
	//**************************************************************************************************************************
	
	
	@RequestMapping(value="/savedata", method=RequestMethod.POST, produces=JSON_CONTENT)
	@ResponseBody 
	public MyMessage saveData(@RequestBody MyMessage hello){
		System.out.println(hello.getMessage());
		System.out.println(hello.getMessageBy());
		return hello;
	}
	
	@RequestMapping(value="/getdata", method=RequestMethod.GET, produces=JSON_CONTENT)
	@ResponseBody 
	public MyMessage getData(){
		MyMessage hello = new MyMessage();
		hello.setMessage("ASDASD");
		hello.setMessageBy("asdsada");
		return hello;
	}
	
}
