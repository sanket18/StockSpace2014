package com.stockspace.mappers;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.stockspace.models.Customer;

@Repository(value="customerMapper")
@Component
public interface CustomerMapper {
	
	List<Customer> findAllCustomers();

	int deactivateCustomer(int customerId);

	int activateCustomer(int customerId);

	Customer editCustomer(int customerId);

	int updateCustomer(Customer customer);

	int saveCustomer(Customer customer);

	Customer findCustomersById(int customerId);
}
