<%@page import="myproj.model.Player"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">

table {
background: #d8e3e7;
}

td{
text-align: center;
width: 120px;
}
.main 
{
    padding: 40px 0;
    position: relative;
    /* left:240px;
    right:auto; */
}
.btn
{
	display: block;
	margin: 0 auto;
}
.navbar
{
    background-color: #000000;
}
.container 
{
    width: 586px;
    background: #000000;
    border-radius: 10px;
}
.entry
{
	display: block;
    margin : 20px auto;
    border-radius: 10px;
    width: 80%;
  	padding: 12px 20px;
  	box-sizing: border-box;
}

h1{
    text-align: center;
	vertical-align: middle;
	font-family: 'Raleway Medium 500', sans-serif;
	color: #8acfe4;
}
body
{
    background-color: #8acfe4;
}
.navlinks
{
    list-style-type:none;
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
    font-size: x-large;
    color: rgb(0, 217, 255);
}
.nav-item
{
    float: right;
}
a:hover
{
    color: rgb(125, 229, 255);
    text-decoration: none;
}
.title
{
    position: relative;
    float: left;

}
.fourth{
    position: absolute;
    right: 30px;
    top:12px;
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
.tbt
{
    padding: 7.5px 30px; 
    font-size: 15px;
    text-align: center;
}
.tbtt
{
    padding: 15px 30px; 
    font-size: 15px;
    text-align: center;
}
.block
{
    display: block;
    width: 20%;
    border: none;
    background-color: #150e56;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <div class="na">
        <div class="row">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="collapse navbar-collapse" id="navbarNav">
                    
                    <ul class="navbar-nav navlinks">

                    <li class="nav-item title">
                        <p class=>Update Player</p>
                    </li>

                    <li class="nav-item first">
                        <a class="nav-link" href="enjoy.jsp">Save</a>
                    </li>

                    <li class="nav-item second">
                        <a class="nav-link" href="search.jsp">Search</a>
                    </li>

                    <li class="nav-item third">
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

<form action="updateServlet">
<h1>
Student Details
</h1>


<table border='2px' class="allp">

<%! Player player; %>
<%player=(Player)session.getAttribute("player"); %>
<tr> <td class="tbtt">Name :</td> <td class="tbt"> <% out.print(player.getName()); %> </td> </tr>
<tr> <td class="tbt">Role :</td> <td class="tbt"> <% out.print("<input type='text' class='input-lg' name='role' value='"+ player.getrole()+"'>"); %> </td> </tr>
<tr> <td class="tbt">Style :</td><td class="tbt"> <% out.print("<input type='text' class='input-lg' name='style' value='"+ player.getstyle()+"'>"); %> </td> </tr>
<tr> <td class="tbt">Team :</td> <td class="tbt"> <% out.print("<input type='text' class='input-lg' name='team' value='"+ player.getteam()+"'>"); %> </td> </tr>


</table>
<br><br>
<input type="submit" value="Update" class="btn btn-primary btn-lg block">
</form>
</body>
</html>