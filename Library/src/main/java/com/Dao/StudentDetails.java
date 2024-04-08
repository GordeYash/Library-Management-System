package com.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import com.entity.user.user;

public class StudentDetails {
	static Connection conn = Connect.makeCon();
	public static int i=0;
	public int getdata(List<user> list) {
		Statement stmt;
		ResultSet rs;
		int j=0;
		try {
			String query = "select * from userdata";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				int sno = rs.getInt("pno");
				String sname = rs.getString("uname");
				String email = rs.getString("email");
				String pno = rs.getString("phno");
				String password = rs.getString("password");
				user s = new user(sname, password, pno, email);
				s.setPno(sno);
				list.add(s);
				i++;
				j++;

			}

		} catch (Exception e) {
			System.out.println(e);

		}
		return j;

	}

}
