<%@page import="myproj.model.Player"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myproj.dao.PlayerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Player</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
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
    .tb
    {   
        margin: 30px 50px 10px;
        background-color: rgb(0, 0, 0);
        color: rgb(183, 244, 252);
        margin-bottom: 20px;
    }
    form{
        text-align: center;
    }
    body
    {
        background-color: rgb(159, 244, 255);
    }
    .table
    {
        width: 80%;
        margin-left: auto;
        margin-right: auto;
        background-color: rgb(0, 0, 0);
        color: rgb(255, 255, 255) ;
    }
    .tbt
    {
        font-size: 20px;
        padding:10px;
        text-align: center;
    }
    .tbtt
    {
        padding: 7.5px 30px; 
        font-size: 15px;
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
        margin-top: 50px;
    }
    .frm
    {
        margin-top: auto;
        margin-bottom: auto;
    }
    ::placeholder
    {
        color:rgb(91, 189, 202);
    }
    thead
    {
        background-color: rgb(83, 83, 83);
        color: white;
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
                        <p class=>Search Player/Update Player</p>
                    </li>

                    <li class="nav-item first">
                        <a class="nav-link" href="enjoy.jsp">Save</a>
                    </li>

                    <li class="nav-item active second">
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



<div class="en">
<form action="PlayerSearchName" class="frm">

<input type="text" name="Name" placeholder="Player Name" class="tb input-lg">
<br>

 <input type="submit" value="search" class="btn btn-primary">
</form>
</div>
<br><br>
<table class="table table-dark" border="2px">
<thead class="thead-dark">
<tr>

<th class="tbt"> Name </th>
<th class="tbt"> Role </th>
<th class="tbt"> Style </th>
<th class="tbt"> Team </th>

</tr>
</thead>
<tbody>
<%

PlayerDao dao=new PlayerDao();
ArrayList<Player> players= dao.getPlayers();


for(Player player:players)
{
out.print("<tr>");

out.print("<td class=tbtt> "+ player.getName()+" </td>");
out.print("<td class=tbtt> "+ player.getrole()+" </td>");
out.print("<td class=tbtt> "+ player.getstyle()+" </td>");
out.print("<td class=tbtt> "+ player.getteam()+" </td>");
out.print("</tr>");

}

%>
</tbody>
</table>



</body>
</html>