package com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.SetData;
import com.entity.user.user;

@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	user user ;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name=(String) req.getParameter("uname");
		String email=(String) req.getParameter("email");
		String pno=(String)req.getParameter("pno");
		String pass=(String) req.getParameter("pass");
		user=new user(name, pass, pno, email);
		SetData.setdata(user);
		
		res.sendRedirect("CreateAcount.jsp");

	}

}