package com.Dao.Books;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Dao.Connect;
import com.entity.user.Book;

public class InsertData {
	static Connection conn = Connect.makeCon();

	public static void Insertdata(Book b) {
		PreparedStatement stmt;
		ResultSet rs;
		try {
			String query = "insert into  Book values(?,?,?,?,?)";
			stmt = conn.prepareStatement(query);
			stmt.setInt(1, b.getUid());
			stmt.setString(2, b.getBname());
			stmt.setString(3, b.getAuname());
			stmt.setString(4, b.getBtype());
			stmt.setString(5, b.getBprice());

			stmt.executeQuery();

		} catch (Exception e) {
			System.out.println(e);

		}

	}

}
