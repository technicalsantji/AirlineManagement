<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:rgb(255,252,211)">
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>
<%
      HttpSession sc=request.getSession();
            String sc1 = (String)session.getAttribute("a");
            String sc2 = (String)session.getAttribute("b");
            String sc3 = (String)session.getAttribute("c");
            String sc4 = (String)session.getAttribute("d");
            String sc5 = (String)session.getAttribute("e");
            String sc6 = (String)session.getAttribute("f");
            
            
	if(sc1!=null){
%>
<h1>Available Flights</h1>
<div style="border:5px solid red;width:50%;border-radius:20px;padding:20px">
<pre style="font-size:20px">
Name    Source  Destination Date    Time    Price  
</pre>
<pre style="font-size:17px">
<%= sc1 %>&nbsp;&nbsp;<%= sc2 %>&nbsp;&nbsp;<%= sc3 %>&nbsp;<%= sc4 %>&nbsp;&nbsp;<%= sc5 %>&nbsp;&nbsp;<%= sc6 %>;
<a href=AdminHome.jsp>Book Now</a>
</pre>

</div>
<%
	}
	else{
%>
<h1>There are no available flights</h1>
<%
	}
%>
</body>
</html>