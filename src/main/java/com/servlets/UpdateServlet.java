package com.servlets;

import com.entities.Note;
import com.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Date;

public class UpdateServlet extends HttpServlet {
    public UpdateServlet() {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try{
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            int noteId = Integer.parseInt(request.getParameter("noteId").trim());

            Session s = FactoryProvider.getFactory().openSession();
            Transaction tx = s.beginTransaction();

            Note note = s.get(Note.class, noteId);

            note.setTitle(title);
            note.setContent(content);
            note.setAddedDate(new Date());

            response.sendRedirect("all_notes.jsp");

            tx.commit();
            s.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }


}
