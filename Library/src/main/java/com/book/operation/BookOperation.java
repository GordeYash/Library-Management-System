package com.book.operation;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Dao.Books.DeleteData;
import com.Dao.Books.GetData;
import com.Dao.Books.InsertData;
import com.Dao.Books.UpadateData;
import com.entity.user.Book;

@WebServlet("/BookOperation")
public class BookOperation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int uid = Integer.parseInt(req.getParameter("uid"));
		String name = (String) req.getParameter("bname");
		String aname = (String) req.getParameter("auname");
		String btype = (String) req.getParameter("btype");
		String bprice = (String) req.getParameter("bprice");
		Book bk = new Book(uid, name, aname, btype, bprice);
		HttpSession BookSession = req.getSession();
		req.setAttribute("book", bk);
		if (req.getParameter("addbook") != null) {
			InsertData.Insertdata(bk);
			res.sendRedirect("AddBook.jsp");
			
		} else if (req.getParameter("update") != null) {
			UpadateData.updatebook(bk);
			res.sendRedirect("AddBook.jsp");

		} else if (req.getParameter("search") != null) {

			res.sendRedirect("AddBook.jsp");

		} else if (req.getParameter("delete") != null) {
			DeleteData.deletebook(bk.getUid(), bk.getBname());

			res.sendRedirect("AddBook.jsp");

		}
	}

}
