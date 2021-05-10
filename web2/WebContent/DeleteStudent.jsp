<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Player</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    .navlinks
    {
        list-style-type:none;
    }
    h1
    {
        margin-top: 60px;
        text-align: center;
    }
    .nav-item
    {
        margin-right: 10px;
    }
    .na
    {
        height: 60px;
        background-color: black;
    }
    a,p{
        color: aliceblue;
        font-size: x-large;
    }
    .nav-item
    {
        float: right;
    }
    a:hover{
        color: aqua;
        text-decoration: none;
    }
    .btn
    {
        margin-bottom: 30px;
    }
    .title
    {
        position: relative;
        top: 12px;
        /* left: 0px; */
    }
    .fourth{
        position: absolute;
        right: 30px;
        top:12px;
    }
    .tb
    {   
        margin: 50px 50px 10px;
        background-color: rgb(0, 0, 0);
        color: rgb(183, 244, 252);
        margin-bottom: 20px;
    }
    .frm
    {
        margin-top: auto;
        margin-bottom: auto;
        text-align: center;
    }
    .en
    {
        border-style: outset;
        border-color:rgb(91, 189, 202);
        width: 500px;
        margin-left: auto;
        margin-right: auto;
        border-radius: 25px;
        margin-top: 30px;
        height: 240px;
    }
    body
    {
        background-color: rgb(159, 244, 255);
    }
    ::placeholder
    {
        color:rgb(91, 189, 202);
    }
    .third
    {
        position: absolute;
        right: 130px;
        top:12px;
    }
    .second
    {
        position: absolute;
        right: 230px;
        top:12px;
    }
    .first
    {
        position: absolute;
        right: 330px;
        top:12px;
    }
    .allp
    {
        
        margin-left: auto;
        margin-right: auto;
    }
    .btn
    {
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <div class="na">
        <div class="row">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="collapse navbar-collapse" id="navbarNav">
                    
                    <ul class="navbar-nav navlinks">

                    <li class="nav-item title">
                        <p class=>Delete Player Info</p>
                    </li>

                    <li class="nav-item first">
                        <a class="nav-link" href="enjoy.jsp">Save</a>
                    </li>

                    <li class="nav-item second">
                        <a class="nav-link" href="search.jsp">Search</a>
                    </li>

                    <li class="nav-item active third">
                        <a class="nav-link" href="DeleteStudent.jsp">Delete</a>
                    </li>

                    <li class="nav-item fourth">
                        <a class="nav-link" href="search.jsp">Update</a>
                    </li>
                    
                  </ul>
                </div>
              </nav>
        </div>
    </div>

<h1>Enter Name of player to be deleted</h1>
<div class="en">
<form action="DeletePlayerServlet" class="frm">

<input type="text" name="Name" placeholder="Name" class="tb input-lg">
<br><br>

 <input type="submit" value="Delete" class="btn btn-primary">
</form>
</div>

</body>
</html>
