package com.stockspace.models;

import org.json.JSONException;
import org.json.JSONObject;


public class User{
	
	private int userId;
	private String userFirstName;
	private String userLastName;
	private String userEmailId;
	
	public int getId() {
		return userId;
	}
	public void setId(int id) {
		this.userId = id;
	}
	public String getFirstname() {
		return userFirstName;
	}
	public void setFirstname(String firstname) {
		this.userFirstName = firstname;
	}
	public String getLastname() {
		return userLastName;
	}
	public void setLastname(String lastname) {
		this.userLastName = lastname;
	}
	public String getEmail() {
		return userEmailId;
	}
	public void setEmail(String email) {
		this.userEmailId = email;
	}
	
	public static User getUserFromJson(JSONObject obj) throws JSONException {
		User user = new User();
		user.setId(obj.getInt("userId"));
		user.setEmail(obj.getString("userEmailId"));
		user.setFirstname(obj.getString("userFirstName"));
		user.setLastname(obj.getString("userLastName"));
		return user;
	}


}
