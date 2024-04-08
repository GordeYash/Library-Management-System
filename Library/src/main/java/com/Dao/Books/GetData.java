package com.Dao.Books;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Dao.Connect;
import com.entity.user.Book;

public class GetData {
	static Connection conn = Connect.makeCon();
	public int i=0;
	public  void getdata(List<Book> book) {
		Statement stmt;
		ResultSet rs;
		try {
			String query = "select * from Book";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);

			while (rs.next()) {
				int uid = (int) rs.getInt("uid");
				String name = (String) rs.getString("bname");
				String auname = (String) rs.getString("auname");
				String btype = (String) rs.getString("btype");
				String bprice = (String) rs.getString("bprice");
				Book b1 = new Book(uid, name, auname, btype, bprice);
				book.add(b1);
				i++;
			}

		} catch (Exception e) {
			System.out.println(e);

		}

	}

}
