package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
	public static Connection conn ;
	public static Connection makeCon() {
		try {
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/login", "postgres", "postgres");
			if (conn != null)
				System.out.println("done");
			else {
				System.out.println("error");

			}
		} catch (Exception e) {
			System.out.println(e);

		}

		return conn;
	}

}
