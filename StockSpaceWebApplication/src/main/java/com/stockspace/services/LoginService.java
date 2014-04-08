package com.stockspace.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.LoginMapper;
import com.stockspace.models.UserLogin;

@Component
public class LoginService {

	@Autowired(required=true)
	private LoginMapper loginMapper;

	public int checkUser(UserLogin userLogin) {
		// TODO Auto-generated method stub
		return loginMapper.checkUser(userLogin);
	}
	
	
}
