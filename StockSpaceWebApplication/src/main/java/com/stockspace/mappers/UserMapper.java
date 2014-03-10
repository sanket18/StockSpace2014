package com.stockspace.mappers;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.stockspace.models.User;

@Repository(value="userMapper")
@Component
public interface UserMapper {
	
	List<User> findAllUsers();

	List<User> getAllUsers();
}
