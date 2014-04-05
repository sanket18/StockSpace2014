package com.stockspace.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stockspace.models.Customer;
import com.stockspace.models.Product;
import com.stockspace.models.Repairs;
import com.stockspace.services.CustomerService;
import com.stockspace.services.ProductService;
import com.stockspace.services.RepairService;

@RequestMapping("/repair")
@Controller
@SessionAttributes("myCustomer")
public class RepairController {

	protected static final String JSON_CONTENT="application/json";
	
	@Autowired(required=true)
	private RepairService repairService;
	
	@Autowired(required=true)
	private CustomerService customerService;
	
	@Autowired(required=true)
	private ProductService productService;
	
	
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String viewRepairs(Model model){
	List<Repairs> repairs;
	List<Customer> customers;
	Customer customer= new Customer();
	repairs=repairService.getRepairs();
	customers= customerService.findAllCustomers();
		model.addAttribute("repairs", repairs);
		model.addAttribute("customers",customers);
		model.addAttribute("customer",customer);
		return "repair/viewrepairs";
	}
	
		
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String searchCustomer(HttpServletRequest request, @ModelAttribute("customer")Customer customer, Model model,final RedirectAttributes redirectAttrib){
		
		if(customer.getCustomerId()!=0){
		redirectAttrib.addFlashAttribute("cust",customer);
		//model.addAttribute("myCustomer", customer);
		return "redirect:new";
		}
		return "redirect:/repair/view";
	}
	
	@RequestMapping(value="/new",method=RequestMethod.GET)
	public String newRepair(@ModelAttribute("cust")Customer cust, Model model){
		//need to set session to get customer id if the employee refresh the page
		Customer customer;
		List<Repairs> repairs;
		List<Product> products;
		Repairs repair= new Repairs();
		int CustId=cust.getCustomerId();
		if(CustId!=0){
		repairs=repairService.getRepairsByCustomerId(CustId);		
		products= productService.getAllProducts();
		customer= customerService.findCustomersById(CustId);
		
		model.addAttribute("customer",customer);
		model.addAttribute("products",products);
		model.addAttribute("repairs",repairs);
		model.addAttribute("repair",repair);
		
		return "repair/newrepair";
		}
		else
		{
			return "redirect:/repair/view";
		}
	}
	

	@RequestMapping(value="/newProduct",method=RequestMethod.POST)
	public String newProduct(@ModelAttribute("repair") Repairs Repairs, Model model){
		int newproduct;
		Repairs.setEmployeeId(1);
		try {
			//newproduct= repairService.getRepairs();
			newproduct=repairService.addRepairs(Repairs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "repair/newrepair";
	}

	@RequestMapping(value="edit/{repairId}", method=RequestMethod.GET)
	public String changeStatus(@PathVariable("repairId") int repairId ,Model model){
	Repairs repair;
	Repairs statusUpdate= new Repairs();
	repair=repairService.getRepairById(repairId);
	model.addAttribute("repair",repair);
	model.addAttribute("changedStatus",statusUpdate);
		return "repair/editstatus";
	}
	
	@RequestMapping(value="updatestatus", method=RequestMethod.POST)
	public String updateStatus(@ModelAttribute("changedStatus")Repairs repair, Model model){
	int statusUpdate;
	statusUpdate=repairService.updateStatus(repair);
		
	return "redirect:/repair/view";
	}
}
