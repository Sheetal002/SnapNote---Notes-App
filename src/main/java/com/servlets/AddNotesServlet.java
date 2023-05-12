package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import com.entities.*;
import com.helper.FactoryProvider;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class AddNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddNotesServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			// title, content fetch

			AddNotes note = new AddNotes(title, content, new Date());
			// System.out.println(note.getContent()+" : "+note.getNoteId());
			// hibernate--save()

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();

			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 styles='text-align:center;'>Note is Added Successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View Notes</a></h1>");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
