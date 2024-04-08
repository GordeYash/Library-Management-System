package com.Dao.Books;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import com.Dao.Connect;
import com.entity.user.Book;

public class SearchBook {
	static Connection conn = Connect.makeCon();

	public void SearchData(List<Book> list, String bname) {
		PreparedStatement stmt;
		ResultSet rs;
		try {
			String query = "select * from Book where bname=?";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, bname);
			rs = stmt.executeQuery();

			while (rs.next()) {
				int uid = (int) rs.getInt("uid");
				String name = (String) rs.getString("bname");
				String auname = (String) rs.getString("auname");
				String btype = (String) rs.getString("btype");
				String bprice = (String) rs.getString("bprice");
				Book book = new Book(uid, name, auname, btype, bprice);
				list.add(book);

			}

		} catch (Exception e) {
			System.out.println(e);

		}

	}

}
