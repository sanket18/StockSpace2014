package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.CustomerMapper;
import com.stockspace.models.Customer;

@Component
public class CustomerService {

	@Autowired(required=true)
	private CustomerMapper customerMapper;

	
public List<Customer> findAllCustomers() {
		
		return customerMapper.findAllCustomers();
	}


public int deactivateCustomer(int customerId) {
	// TODO Auto-generated method stub
	return customerMapper.deactivateCustomer(customerId);
}


public int activateCustomer(int customerId) {
	// TODO Auto-generated method stub
	return customerMapper.activateCustomer(customerId);
}


public Customer editCustomer(int customerId) {
	// TODO Auto-generated method stub
	return customerMapper.editCustomer(customerId);
}


public int updateCustomer(Customer customer) {
	// TODO Auto-generated method stub
	return customerMapper.updateCustomer(customer);
}


public int saveCustomer(Customer customer) {
	// TODO Auto-generated method stub
	return customerMapper.saveCustomer(customer);
}


public Customer findCustomersById(int customerId) {
	// TODO Auto-generated method stub
	return customerMapper.findCustomersById(customerId);
}
}
