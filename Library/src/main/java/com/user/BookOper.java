package com.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Books.SearchBook;
import com.entity.user.Book;

@WebServlet("/BookOper")
public class BookOper extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String name = (String) req.getParameter("name");
		if (req.getParameter("search") != null) {
			req.getSession().setAttribute("name", name);
			res.sendRedirect("FindBook.jsp");
		} else if (req.getParameter("AddCart") != null) {

			res.sendRedirect("FindBook.jsp");
		}
	}

}
