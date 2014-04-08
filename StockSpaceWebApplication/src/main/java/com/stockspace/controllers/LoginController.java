package com.stockspace.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stockspace.models.User;
import com.stockspace.models.UserLogin;
import com.stockspace.services.LoginService;
import com.stockspace.services.UserService;

@RequestMapping("/")
@Controller
public class LoginController {

	protected static final String JSON_CONTENT = "application/json";

	@Autowired(required = true)
	private LoginService loginService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeRedirect(Model model) {
		return "user/index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginRedirect(Model model) {
		UserLogin userLogin = new UserLogin();
		model.addAttribute("login", userLogin);
		return "user/login";
	}
	
	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	public String loginRedirect(@ModelAttribute("login") UserLogin userLogin,
			Model model) {
		int auth;
		auth = loginService.checkUser(userLogin);
		if (auth == 1) {
			//For Employer
			model.addAttribute("user",userLogin);
			return"user/dashboard";
		} else if (auth == 2) {
			//For Employee
			model.addAttribute("user",userLogin);
			return"user/dashboard";
		} else {
			model.addAttribute("message","Invalid User");
			return"user/invaliduser";
		}
	}
}
