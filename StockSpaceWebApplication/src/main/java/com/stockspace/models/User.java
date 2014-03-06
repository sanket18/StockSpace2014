package com.stockspace.models;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	
	private int userId;
	private String userFirstName;
	private String userLastName;
	private String userEmailId;

}
