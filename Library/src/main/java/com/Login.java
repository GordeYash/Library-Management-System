package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.GetData;
import com.entity.user.user;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	user u = new user();

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = (String) req.getParameter("uname");
		String pass = (String) req.getParameter("pass");
		user userdata = GetData.getdata(name, pass);
		HttpSession session = req.getSession();

		if ((name.equals(userdata.getUname()) && pass.equals(userdata.getPass()))) {
			u.setRoll("local");
			session.setAttribute("rol", u);
			session.setAttribute("name", name);
			session.setAttribute("pass", pass);
			res.sendRedirect("Home.jsp");

		} else if ((name.equals("Admin@123") && pass.equals("Admin@123"))) {
			u.setRoll("admin");
			session.setAttribute("rol", u);
			session.setAttribute("name", name);
			session.setAttribute("pass", pass);
			res.sendRedirect("AdminPanel.jsp");
		} else {

			res.sendRedirect("LoginPage.jsp");

		}

	}

}
