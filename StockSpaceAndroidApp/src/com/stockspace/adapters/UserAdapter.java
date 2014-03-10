package com.stockspace.adapters;

import java.util.List;

import android.content.Context;
import com.stockspace.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.stockspace.models.User;

public class UserAdapter extends BaseAdapter {

	private final List<User> users;
	private LayoutInflater layoutInflater;
	
	public UserAdapter(Context context, List<User> users){
		this.users= users;
		layoutInflater= LayoutInflater.from(context);
	}
	
	@Override
	public int getCount() {
		return users.size();
	}

	@Override
	public Object getItem(int arg0) {
		return users.get(arg0);
	}

	@Override
	public long getItemId(int arg0) {
		return arg0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View rowView= layoutInflater.inflate(R.layout.list_user,parent,false);
		TextView tv= (TextView) rowView.findViewById(R.id.lbl_user);
		tv.setText(users.get(position).getFirstname());
		return rowView;
	}

	
	
}
