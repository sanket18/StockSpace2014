package com.stockspace.controllers;

import java.util.List;

import lombok.RequiredArgsConstructor;

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

import com.stockspace.models.Company;
import com.stockspace.services.CompanyService;

@RequestMapping("/company")
@Controller
public class CompanyController {

	protected static final String JSON_CONTENT = "application/json";

@Autowired(required=true)
private CompanyService companyService;


@RequestMapping(value="/view",method=RequestMethod.GET )
public String viewAllCompany(Model model)
{
	List<Company> companies;

	companies=companyService.getAllCompany();
	model.addAttribute("companies",companies);
	//System.out.println(companies);
	
	return "company/viewcompany";
}


@RequestMapping(value = "/addnew", method = RequestMethod.GET)
public String addCompany( Model model) {
	//System.out.println("I got a hit");
	Company company= new Company();
	model.addAttribute("company",company);
	
	return "company/addnew";
}

@RequestMapping(value = "/save", method = RequestMethod.POST)
public String saveCompany(@ModelAttribute("company") Company company, Model model){
	int i = companyService.saveCompany(company);
	return "redirect:/company/view";
}


@RequestMapping(value = "/edit/{companyId}", method = RequestMethod.GET)
public String editCompany(@PathVariable("companyId") int companyId ,Model model) {
	Company company= new Company();
	Company reccompany= new Company();
	company=companyService.edtCompany(companyId);
	model.addAttribute("company",company);
	model.addAttribute("recCompany", reccompany);
	
	return "company/edit";
}

@RequestMapping(value = "/activate/{companyId}", method = RequestMethod.GET)
public String acticvateCompany(@PathVariable("companyId") int companyId ,Model model) {
	int company=companyService.actCompany(companyId);
	return "redirect:/company/view/";
}

@RequestMapping(value = "/deactivate/{companyId}", method = RequestMethod.GET)
public String deacticvateCompany(@PathVariable("companyId") int companyId ,Model model) {
	int company=companyService.deactCompany(companyId);
	return "redirect:/company/view/";
}

@RequestMapping(value = "/update", method = RequestMethod.POST)
public String updateCompany(@ModelAttribute("recCompany") Company company, Model model) {
	int result = companyService.updtCompany(company);
	return "redirect:/company/view/";
}
}

