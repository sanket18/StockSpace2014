package com.stockspace.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employer {

	private int employerId;
	private	String useName;
	private String password;
	private String fullName;
	private String address;
	private String email;
	private String phone;
	private String gcmMessageId;
	private String dateCreated;
}
