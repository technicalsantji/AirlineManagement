<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body style="background:url(image23/back1.jpg);background-size:cover;background-attachment:fixed">
    <div style="background-color:yellowgreen;margin: auto;width:500px;padding:10px;border: 4px solid aqua;border-radius:30px;text-align: center">
<a href=HomePage.jsp style="color:blue;font-size:35px;font-weight:bold;">Go To FlyAway Home page </a>
<h1>Insert New Flight Details</h1>
    </div><br><br><br>
<div style="border:3px solid pink;width:25%;border-radius:20px;padding:20px;background-color:yellowgreen;margin:auto">
<form action="InsertFlight" method="post">
	<label for=name>Name :-</label> <input type="text" name="name"  /><br><br>
	<label for=source>Source :-</label> <input type="text" name="source"  /><br><br>
	<label for=destination>Destination :-</label> <input type="text" name="destination" /><br><br>
	<label for=date>Departure :-</label> <input type="date" name="date" id=date /><br><br>
	<label for=time>Time :-</label> <input type="time" name="time" /><br><br>
	<label for=price>Price :-</label> <input type="text" name="price" /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
    <div style="text-align: center;color: blue">
<%
	String message=(String)session.getAttribute("message");
	if(message!=null){
%>
<p style="color:silver;"><%= message %></p>
<%
		session.setAttribute("message", null);
	}
%>
</div>
</body>
</html>