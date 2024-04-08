package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.GetData;
import com.Dao.Update;
import com.entity.user.user;

@WebServlet("/forgot")
public class forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
	user u = new user();

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = (String) req.getParameter("uname");
		String pass = (String) req.getParameter("pass");
		String npass = (String) req.getParameter("npass");
		u.setUname(name);
		u.setPass(npass);
		user u1 = GetData.getdata(name, pass);

		if (name.equals(u1.getUname()) && pass.equals(u1.getPass())) {
			Update.updateData(u);
			res.sendRedirect("LoginPage.jsp");
		}else
		{
			res.sendRedirect("Forgot.jsp");
		}
	}

}
