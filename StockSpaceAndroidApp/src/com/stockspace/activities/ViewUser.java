package com.stockspace.activities;

import java.util.List;

import android.app.Activity;
import android.app.ListActivity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.stockspace.R;
import com.stockspace.adapters.UserAdapter;
import com.stockspace.models.User;
import com.stockspace.tasks.GetUsers;

public class ViewUser extends Activity {

	private List<User> users;
	public StringBuilder builder = new StringBuilder();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.viewuserlist);
		getUsers();
	}

	public void getUsers() {
		GetUsers task = new GetUsers();
		try {
			users = task.execute().get();
			System.out.println(users);
			// getListView().setAdapter((UserAdapter) new UserAdapter(this,
			// users));
			// category_spinner.setAdapter(new CategoriesAdapter(this,
			// categories));
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (User u : users) {
			builder.append(u.getFirstname()).append(";")
					.append(u.getLastname()).append(":");
		}
		builder.toString();
		String st = new String(builder);
		String[] rows = st.split(":");
		LinearLayout linearLayout = (LinearLayout) findViewById(R.id.userview);

		for (int i = 0; i < rows.length; i++) {
			String row = rows[i];
			TableLayout tablelayout = new TableLayout(this);
			tablelayout.setBackgroundColor(Color.LTGRAY);
			TableLayout blankTablelayout = new TableLayout(this);
			blankTablelayout.setBackgroundColor(Color.WHITE);
			blankTablelayout.setPadding(0, 5, 0, 0);
			final String[] cols = row.split(";");
			for (int j = 0; j < cols.length; j++) {
				final String col = cols[j];
				TableRow tr = new TableRow(this);
				tr.setPadding(1, 2, 1, 2);
				String name = "";
				String val=col.toString();
				TextView label = new TextView(this);
				TextView value = new TextView(this);
				value.setText(val);
				switch (j) {
				case 0:
					name = "FirstName:- ";
					break;
				case 1:
					name = "LastName:- ";
					break;
				}
				label.setText(name);
				label.setTextColor(Color.rgb(0, 25, 90));
				label.setGravity(Gravity.RIGHT);
				label.setPadding(0, 0, 5, 0);
				value.setText(col);
				tr.addView(label);
				tr.addView(value);
				tablelayout.addView(tr);
			}
			linearLayout.addView(tablelayout);
			linearLayout.addView(blankTablelayout);
		}
	}
}
