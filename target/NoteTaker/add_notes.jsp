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

    <h1>Please fill your note detail</h1>
    <br>

    <!-- this is add form  -->

    <form action="SaveNoteServlet" method="post">

        <div class="form-group">
            <label for="title"><h5>Note title</h5></label>
            <input
                    name="title"
                    required
                    type="text"
                    class="form-control"
                    id="title"
                    aria-describedby="emailHelp"
                    placeholder="Enter here" />

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
                    style="height: 300px;"
            ></textarea>


        </div>

        <br>
        <div class="container text-center">
            <button type="submit" class="btn btn-primary">Add Note</button>
        </div>

    </form>

</div>


</body>
</html>