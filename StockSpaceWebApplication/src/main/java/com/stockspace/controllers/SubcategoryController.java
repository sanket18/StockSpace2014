package com.stockspace.controllers;

import java.util.List;

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

import com.stockspace.models.Category;
import com.stockspace.models.Company;
import com.stockspace.models.SubCategory;
import com.stockspace.services.CategoryService;
import com.stockspace.services.CompanyService;
import com.stockspace.services.SubCategoryService;

@RequestMapping("/subcategory")
@Controller
public class SubcategoryController {

	protected static final String JSON_CONTENT = "application/json";

	@Autowired(required = true)
	private CompanyService companyService;

	@Autowired(required = true)
	private CategoryService categoryService;

	@Autowired(required = true)
	private SubCategoryService subcategoryService;

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewAllData(Model model) {

		List<Company> company;

		company = companyService.findAllCompany();

		for (Company companies : company) {
			List<Category> category;
			category = categoryService
					.findAllCategory(companies.getCompanyId());

			for (Category categories : category) {
				List<SubCategory> subcategory;
				subcategory = subcategoryService.findAllSubCategory(categories
						.getCategoryId());
				categories.setSubcategory(subcategory);
			}
			companies.setCategory(category);

		}
		model.addAttribute("companies", company);
		return "subcategory/view";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST, produces = JSON_CONTENT)
	@ResponseBody
	public String saveSubCategory(@RequestBody SubCategory subcategory,
			Model model) {

		System.out.println(subcategory);
		subcategory.setIsActive(true);
		int i = subcategoryService.saveSubCategory(subcategory);
		
		return "redirect:../subcategory/view";
	}

	@RequestMapping(value = "/deactivate/{subCategoryId}", method = RequestMethod.GET)
	public String deactivateSubCategory(
			@PathVariable("subCategoryId") int subCategoryId,
			RedirectAttributes ra, Model model) {
		int deactivated;

		try {
			deactivated = subcategoryService
					.deactivateSubCategory(subCategoryId);

			model.addAttribute("deactivated", deactivated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/subcategory/view";
	}

	@RequestMapping(value = "/activate/{subCategoryId}", method = RequestMethod.GET)
	public String activateSubCategory(
			@PathVariable("subCategoryId") int subCategoryId,
			RedirectAttributes ra, Model model) {
		int activated;

		try {
			activated = subcategoryService.activateSubCategory(subCategoryId);

			model.addAttribute("activated", activated);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/subcategory/view";
	}

	@RequestMapping(value = "/edit/{subCategoryId}", method = RequestMethod.GET)
	public String editSubCategory(
			@PathVariable("subCategoryId") int subCategoryId, Model model) {
		SubCategory subcategory = subcategoryService
				.getSubCategoryById(subCategoryId);
		model.addAttribute("subcategory", subcategory);
		return "subcategory/edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateSubCategory(
			@ModelAttribute("subcategory") SubCategory subcategory, Model model) {

		@SuppressWarnings("unused")
		int i = subcategoryService.updateSubCategory(subcategory);
		return "redirect:../subcategory/view";
	}

	// combobox for category
	@RequestMapping(value = "/getCategoryCombo/{companyId}", method = RequestMethod.GET)
	public String getCategoryByCompany(
			@PathVariable("companyId") int companyId, Model model) {
		List<Category> category = categoryService
				.getCategoryByCompany(companyId);
		model.addAttribute("category", category);
		return "subcategory/categorycombo";
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST, produces = JSON_CONTENT)
	@ResponseBody
	public int validatesubCategory(@RequestBody SubCategory subcategory) {
		int count = subcategoryService.validateEntry(subcategory);
		return count;
	}
	}