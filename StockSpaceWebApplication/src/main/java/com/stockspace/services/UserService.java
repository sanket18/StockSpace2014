package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.UserMapper;
import com.stockspace.models.User;

@Component
public class UserService {

    @Autowired(required = true)
    private UserMapper userMapper;
    
	public List<User> findAllUsers() {
		
		return userMapper.findAllUsers();
	}
	
	public List<User> getAllUsers() {
		
		return userMapper.getAllUsers();
	}
	
}
