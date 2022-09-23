<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entities.Note" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Notes: Note Taker</title>
    <%@include file="all_js_css.jsp" %>
</head>

<body>

<div class="container">
    <%@include file="navbar.jsp" %>
    <h1 class="text-uppercase">All Notes:</h1>

    <div class="row">
        <div class="col-12">

            <%
                Session s = FactoryProvider.getFactory().openSession();

                Query q = s.createQuery("from Note");
                List<Note> list = q.list();
                PrintWriter out1 = response.getWriter();
                for (Note note : list) {
            %>

            <div class="card p-3 m-5 shadow-sm">
                <img class="card-img-top mt-5 mx-auto" style="width: 100px" src="img/notes.png" alt="Card image cap">
                <div class="card-body" style="padding-left: 40px; padding-right: 40px">
                    <h5 class="card-title"><%= note.getTitle()%></h5>
                    <p class="card-text"><%= note.getContent()%></p>

                    <p class="text-primary" style="text-align: end"><%= new SimpleDateFormat().format(note.getAddedDate())  %></p>

                    <div class="container text-center m-2">
                    <a href="DeleteServlet?note_id=<%= note.getId()%>" class="btn btn-danger m-1">Delete</a>
                    <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary m-1">Update</a>
                    </div>
                </div>
            </div>
            <%
                }

                s.close();
            %>

        </div>


    </div>


</div>

</body>

</html>