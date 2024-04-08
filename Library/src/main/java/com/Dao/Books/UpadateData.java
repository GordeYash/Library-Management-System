package com.Dao.Books;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Dao.Connect;
import com.entity.user.Book;

public class UpadateData {
	static Connection conn = Connect.makeCon();

	public static void updatebook(Book b) {
		PreparedStatement stmt;
		try {
			String query = "update  Book set bname=?,auname=?,btype=?,bprice=? where uid=?";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, b.getBname());
			stmt.setString(2, b.getAuname());
			stmt.setString(3, b.getBtype());
			stmt.setString(4, b.getBprice());
			stmt.setInt(5, b.getUid());

			stmt.executeQuery();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
