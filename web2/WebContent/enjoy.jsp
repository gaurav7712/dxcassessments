<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Player</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200&display=swap" rel="stylesheet">
<!-- <link rel="stylesheet" href="styles.css"> -->

<style>
    .main 
	{
    	position: relative;
	}
  .navbar
  {
      background-color: #a4eaff;
  }
  .container 
  {
    	width: 586px;
    	background: #a4eaff;
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
	.btn
	{
		display: block;
		margin: 0 auto;
	}
    h1{
        text-align: center;
		font-family: 'Raleway Medium 500', sans-serif;
		color: #8acfe4;
    }
    body
    {
        background: url("https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2020/05/shutterstock_514474840.jpg?w=750");

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
        color: rgb(21, 3, 126);
    }
    .nav-item
    {
        float: right;
    }
    a:hover{
        color: rgb(0, 0, 0);
        text-decoration: none;
    }
    .title
    {
        position: relative;
        top: 6px;
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
</style>
</head>
<body>
    <div class="na">
        <div class="row">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="collapse navbar-collapse" id="navbarNav">
                    
                    <ul class="navbar-nav navlinks">

                    <li class="nav-item title">
                        <p class=>Add Player</p>
                    </li>

                    <li class="nav-item active first">
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



<div class="main">
<h1>Input Player details</h1><br>
<form action="MyFirstServlet">

    <div class="container hover-shadow">
    	<br>
        <input type="text" name="Name" class="entry" placeholder="Player Name">
        <br>
        <input type="text" name="role" class="entry" placeholder="Role">
        <br>
        <input type="text" name="style" class="entry" placeholder="Style">
        <br>
        <input type="text" name="team" class="entry" placeholder="Team">
        <br>
        <input type="submit" value="save" class="btn btn-primary">
        <br>
    </div>
   

</form>
</div>
</body>
</html>
