package com.stockspace.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stockspace.models.Category;
import com.stockspace.services.CategoryService;

@RequestMapping("/categories")
@Controller
public class CategoryController {

	protected static final String JSON_CONTENT = "application/json";

	@Autowired(required = true)
	private CategoryService categoryService;

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewAllCategory(Model model) {
		List<Category> categories;
		categories = categoryService.getAllCategory();
		model.addAttribute("categories", categories);
		return "category/viewcategory";
	}

	@RequestMapping(value = "/addnew", method = RequestMethod.GET)
	public String addCategory(Model model) {
		// System.out.println("I got a hit");
		Category category = new Category();
		model.addAttribute("category", category);

		return "category/addnew";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute("category") Category category,
			Model model) {
		category.setCompanyId(100);
		int i = categoryService.saveCategory(category);
		return "redirect:/categories/view";
	}

	@RequestMapping(value = "/edit/{categoryId}", method = RequestMethod.GET)
	public String editCategory(@PathVariable("categoryId") int categoryId,
			Model model) {
		Category category = new Category();
		Category reccategory = new Category();
		category = categoryService.edtCategory(categoryId);
		model.addAttribute("category", category);
		model.addAttribute("reccategory", reccategory);

		return "category/edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateCatgeory(
			@ModelAttribute("reccategory") Category category, Model model) {
		int result = categoryService.updtCategory(category);
		return "redirect:/categories/view/";
	}

	@RequestMapping(value = "/activate/{categoryId}", method = RequestMethod.GET)
	public String acticvateCategory(@PathVariable("categoryId") int categoryId,
			Model model) {
		int category = categoryService.actCategory(categoryId);
		return "redirect:/categories/view/";
	}

	@RequestMapping(value = "/deactivate/{categoryId}", method = RequestMethod.GET)
	public String deacticvateCategory(
			@PathVariable("categoryId") int categoryId, Model model) {
		int category = categoryService.deactCategory(categoryId);
		return "redirect:/categories/view/";
	}

}
