<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:rgb(255,252,211)">
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>

<div style="border:3px solid pink;width:25%;border-radius:20px;padding:20px ;margin: auto">
    <%
        HttpSession sc1=request.getSession();
        String sc=(String)session.getAttribute("message");
        if(sc!=null){
    %>
    
  <h1 style="text-align: center;color:green"> Welcome <%=   sc %>;</h1>
    <% 
        } 
else{
                 HttpSession scr=request.getSession();
String sc2=(String)session.getAttribute("message1");
                
    %>
    <h1 style="text-align: center;color:red""><%= sc2%></h1>
    <% 
        }
    %>
<form action=ForgotPassword method=post>
	<label for=email>Email :-</label> <input type="text" name=email id=email /><br><br>
	<label for=pass>New Password :-</label> <input type="password" name=password id=pass /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
	
</body>
</html>