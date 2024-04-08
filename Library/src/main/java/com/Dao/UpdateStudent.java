package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.user.Book;
import com.entity.user.user;

public class UpdateStudent {
	static Connection conn = Connect.makeCon();

	public static void updateuser(user b) {
		PreparedStatement stmt;
		try {
			String query = "update  userdata set uname=?,email=?,phno=?,password=? where id=?";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, b.getUname());
			stmt.setString(2, b.getEmail());
			stmt.setString(3, b.getUpno());
			stmt.setString(4, b.getPass());
			stmt.setInt(5, b.getPno());

			stmt.executeQuery();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
