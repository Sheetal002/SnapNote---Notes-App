package com.servlets;

import com.entities.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

public class ToDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ToDeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id"));
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			AddNotes note = (AddNotes) s.get(AddNotes.class, noteId);
			s.delete(note);
			tx.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
