package com.stockspace.mappers;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.stockspace.models.UserLogin;

@Repository(value="loginMapper")
@Component
public interface LoginMapper {

	int checkUser(UserLogin userLogin);

	
}
