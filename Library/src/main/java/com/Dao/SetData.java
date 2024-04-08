package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.user.user;

public class SetData {
	static Connection conn = Connect.makeCon();

	public static void setdata(user u) {
		PreparedStatement stmt;
		ResultSet rs;
		try {
			String query = "insert into  userdata(uname,email,phno,password ) values(?,?,?,?)";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, u.getUname());
			stmt.setString(3, u.getUpno());
			stmt.setString(2, u.getEmail());
			stmt.setString(4, u.getPass());

			System.out.println(u.getUname());

			stmt.executeQuery();

		} catch (Exception e) {
			System.out.println(e);

		}

	}

}
