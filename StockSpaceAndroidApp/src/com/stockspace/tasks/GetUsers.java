package com.stockspace.tasks;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;

import android.os.AsyncTask;
import android.util.Log;

import com.stockspace.httprequests.HttpClient;
import com.stockspace.jsonparser.ResponseParser;
import com.stockspace.models.User;
import com.stockspace.utils.UrlUtils;

public class GetUsers extends AsyncTask<String, Void, List<User>>{

	@Override
	protected void onPostExecute(List<User> result) {
		// TODO Auto-generated method stub
		super.onPostExecute(result);
	}

	@Override
	protected List<User> doInBackground(String... arg0) {
		List<User> users= new ArrayList<User>();
		//String result = HttpClient.SendHttpGET(UrlUtils.BASE_URL+ UrlUtils.GET_USER);
		//String result = HttpClient.SendHttpGET("http://ip.jsontest.com/");
		String result="[{'userId':1,'userFirstName':'Sanket','userLastName':'Patel','userEmailId':'abc@123.com'},{'userId':2,'userFirstName':'Archana','userLastName':'Patel','userEmailId':'abc@123.com'}]";
		System.out .println(result);
		ResponseParser parser= new ResponseParser();
		try{
			users=parser.parseUser(result);
			System.out.println(users.get(0).getFirstname());
		}
		catch(NumberFormatException e){
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

}
