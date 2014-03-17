package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {

	private int customerId;
	private String fullName;
	private String address;
	private String email;
	private String phone;
	private String dateCreated;
}
