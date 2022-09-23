<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="com.entities.Note" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp"%>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp"%>
    <br>

    <h1>Please edit your note detail</h1>
    <br>

    <!-- this is update form  -->


    <%
        int noteId = Integer.parseInt(request.getParameter("note_id").trim());
        Session s = FactoryProvider.getFactory().openSession();

        Note note = (Note) s.get(Note.class, noteId);

        response.setContentType("text/html");
        PrintWriter out1 = response.getWriter();
        out1.println("<h1 style='text-align:center;'>Note is added successfully...</h1>");
        out1.println();


    %>


    <form action="UpdateServlet" method="post">

        <input value="<%= note.getId()%>" name="noteId" type="hidden"/>

        <div class="form-group">
            <label for="title"><h5>Note title</h5></label>
            <input
                    name="title"
                    required
                    type="text"
                    class="form-control"
                    id="title"
                    aria-describedby="emailHelp"
                    placeholder="Enter here"
            value="<%= note.getTitle()  %>"/>
        </div>

        <br>
        <div class="form-group">
            <label for="content"><h5>Note Content</h5></label>
            <textarea
                    name="content"
                    required
                    id="content"
                    placeholder="Enter your content here"
                    class="form-control"
                    style="height: 300px;">

                <%= note.getContent() %>

            </textarea>


        </div>

        <br>
        <div class="container text-center">
            <button type="submit" class="btn btn-success">Update Note</button>
        </div>

    </form>

</div>


</body>
</html>