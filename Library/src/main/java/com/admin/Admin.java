package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.SetData;
import com.Dao.Update;
import com.Dao.UpdateStudent;
import com.entity.user.user;

@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String pno = (String) req.getParameter("phno");
		String sname = (String) req.getParameter("sname");
		String email = (String) req.getParameter("email");
		String pass = (String) req.getParameter("password");
		user u = new user(sname, pass, pno, email);
		u.setPno(id);
		if (req.getParameter("add") != null) {
			SetData.setdata(u);
			res.sendRedirect("AddStudent.jsp");
		} else if (req.getParameter("update") != null) {
			UpdateStudent.updateuser(u);
			res.sendRedirect("AddStudent.jsp");

		} else if (req.getParameter("search") != null) {
			res.sendRedirect("AddStudent.jsp");

		}

	}

}
