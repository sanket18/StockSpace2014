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
import com.stockspace.models.Product;
import com.stockspace.models.SubCategory;
import com.stockspace.services.CategoryService;
import com.stockspace.services.CompanyService;
import com.stockspace.services.ProductService;
import com.stockspace.services.SubCategoryService;



@RequestMapping("/product")
@Controller
public class ProductController {

	protected static final String JSON_CONTENT = "application/json";

	@Autowired(required = true)
	private CompanyService companyService;
	
	@Autowired(required = true)
	private CategoryService categoryService;
	
	@Autowired(required = true)
	private SubCategoryService subcategoryService;
	
	@Autowired(required = true)
	private ProductService productService;
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewAllData(Model model) {

		List<Company> company;
		
		
		company = companyService.findAllCompany();
		
		
		for (Company companies : company) {
			List<Category> category;
			category = categoryService.findAllCategory(companies.getCompanyId());
			
			
					for(Category categories : category)
						{
							List<SubCategory> subcategory;
							subcategory = subcategoryService.findAllSubCategory(categories.getCategoryId());
							categories.setSubcategory(subcategory);
						
			
							for(SubCategory subcategories : subcategory)
							{
								List<Product> product;
								product = productService.findAllProducts(subcategories.getSubCategoryId());
								subcategories.setProduct(product);
								
							}
							
						}
					companies.setCategory(category);
		}
			model.addAttribute("companies", company);
		return "product/view";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST, produces = JSON_CONTENT)
	@ResponseBody 
	public String saveProduct(@RequestBody Product product, Model model )
	{
		System.out.println(product);
		int i = productService.saveProduct(product);
		return "redirect:../product/view";
	}
	
			//combobox for category
			@RequestMapping(value = "/getCategoryCombo/{companyId}", method = RequestMethod.GET)
			public String getCategoryByCompany(@PathVariable("companyId") int companyId,
					Model model) {
				List<Category> category = categoryService
						.getCategoryByCompany(companyId);
				model.addAttribute("category", category);
				return "subcategory/categorycombo";
			}
	
			//combobox for subcategory
			@RequestMapping(value = "/getProductCombo/{categoryId}", method = RequestMethod.GET)
			public String getSubCategoryByCategory(@PathVariable("categoryId") int categoryId,
					Model model) {
				List<SubCategory> subcategory = subcategoryService
						.getSubCategoryByCategory(categoryId);
				System.out.println(subcategory);
				model.addAttribute("subcategory", subcategory);
				return "product/subCategoryCombo";
			}
			
			@RequestMapping(value = "/validate", method = RequestMethod.POST, produces = JSON_CONTENT)
			@ResponseBody
			public int validateProduct(@RequestBody Product product) {
				int count = productService.validateEntry(product);
				//System.out.println(product);
				return count;
			}
			
			//edit
			@RequestMapping(value = "/edit/{productId}", method = RequestMethod.GET)
			public String editProduct(@PathVariable("productId") int productId, Model model) 
			{
				System.out.print(productId);
				Product product = productService.getProductById(productId);
				model.addAttribute("product", product);
				System.out.println(product);
				return "product/edit";
			}
			
			@RequestMapping(value = "/update" , method = RequestMethod.POST)
			public String updateProduct(@ModelAttribute("product") Product product,Model model)
			{			
				int i = productService.updateProduct(product);
				return "redirect:../product/view";
			}
			
				@RequestMapping(value="/deactivate/{productId}",method=RequestMethod.GET)
			 	public String deactivateProduct(@PathVariable("productId") int productId,RedirectAttributes ra, Model model){
					int deactivated;
			 	
			 		try {
			 			deactivated= productService.deactivateProduct(productId);
			 			
			 			model.addAttribute("deactivated", deactivated);
			 		} catch (Exception e) {
			 			// TODO Auto-generated catch block
			 			e.printStackTrace();
			 		}
			 		return "redirect:/product/view";
			 	}
			 	
			 	@RequestMapping(value="/activate/{productId}",method=RequestMethod.GET)
			 	public String activateProduct(@PathVariable("productId") int productId,RedirectAttributes ra, Model model){
			 		int activated;
			 	
			 		try {
			 			activated= productService.activateProduct(productId);
			 			
			 			model.addAttribute("activated", activated);
			 		} catch (Exception e) {
			 			// TODO Auto-generated catch block
			 			e.printStackTrace();
			 		}
			 		return "redirect:/product/view";
			 	}
}
