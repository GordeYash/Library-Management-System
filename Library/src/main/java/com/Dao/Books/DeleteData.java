package com.Dao.Books;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Dao.Connect;

public class DeleteData {
	static Connection conn = Connect.makeCon();

	public static void deletebook(int uid, String bname) {
		PreparedStatement stmt;
		try {
			String query = "delete from Book where uid=?";
			stmt = conn.prepareStatement(query);
			stmt.setInt(1, uid);
			stmt.executeQuery();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
