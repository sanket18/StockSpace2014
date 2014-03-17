package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {

	private int employeeId;
	private String userName;
	private String password;
	private String fullName;
	private String address;
	private String email;
	private String phone;
	private String dateCreated;
}
