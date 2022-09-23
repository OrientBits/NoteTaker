<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">

    <%@include file="all_js_css.jsp"%>

    <title>Note Taker: Home Page</title>
</head>
<body>


<div class="container">
    <%@include file="navbar.jsp"%>
    <br>
    
    <div class="card shadow-sm py-5">
        
        <img alt="Note Image" class="image-fluid mx-auto p-5" style=" max-width: 400px" src="img/notes.png">
        <h1 class="text-primary text-uppercase text-center mt-3">Start Taking your notes</h1>

        <div class="container text-center">
            <a href="add_notes.jsp" class="btn btn-outline-primary text-center" >Start Here</a>
        </div>
    </div>

</div>




</body>
</html>