package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.user.user;

public class GetData {
	static Connection conn = Connect.makeCon();
	static user usr =new user();
	public static user getdata(String name,String pass) {
		PreparedStatement stmt;
		ResultSet rs;
		try {
			String query = "select * from userdata where uname=? and password=?";
			stmt = conn.prepareStatement(query);
			stmt.setString(1,name );
			stmt.setString(2, pass);
			rs = stmt.executeQuery();
			if (rs.next()) {
				usr.setUname((String)rs.getString("uname"));
				usr.setPass((String)rs.getString("password"));

			}

		} catch (Exception e) {
			System.out.println(e);

		}
		return usr;

	}

}
