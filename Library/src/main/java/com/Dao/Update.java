package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.user.user;

public class Update {

	static Connection conn = Connect.makeCon();

	public static void updateData(user u) {
		PreparedStatement stmt;
		try {
			String query = "update userdata set password=? where uname=? ";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, u.getPass());
			stmt.setString(2, u.getUname());
			stmt.executeUpdate();

		} catch (Exception e) {

			System.out.println(e);

		}

	}

}
