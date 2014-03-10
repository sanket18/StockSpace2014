package com.stockspace.jsonparser;
 
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.stockspace.models.User;
 
public class ResponseParser {
	
	public List<User> parseUser(String userJson) throws NumberFormatException, JSONException {
		List<User> users= new ArrayList<User>();
		JSONArray jObj = new JSONArray(userJson);
		for(int i=0;i<jObj.length();i++){
			JSONObject obj=jObj.getJSONObject(i);
			users.add(User.getUserFromJson(obj));
		}
		return users;
	}
}
