package com.stockspace.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stockspace.models.User;
import com.stockspace.services.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired(required = true)
	private UserService userService;
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewAllUsers(Model model) {

		List<User> users;
		users = userService.findAllUsers();
		model.addAttribute("users", users);
		return "user/viewusers";
	}

}
