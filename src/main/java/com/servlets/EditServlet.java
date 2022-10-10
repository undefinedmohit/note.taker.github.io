package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class EditServlet
 */
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		int noteId=Integer.parseInt(request.getParameter("id").trim());
		
		
		Session s=FactoryProvider.getFactory().openSession();
		Note n =s.get(Note.class, noteId);
		Transaction tx=s.beginTransaction();
		
		n.setTitle(title);
		n.setContent(content);
		s.save(n);
		
		
		tx.commit();
		s.close();
		
		response.sendRedirect("all_notes.jsp");
		
	}

}
