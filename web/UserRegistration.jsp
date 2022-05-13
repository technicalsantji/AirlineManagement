<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: url(image23/back1.jpg);background-size:cover;background-attachment:fixed;background-repeat:none">
<br>
<h1 style="text-align: center">New User Registration</h1>
<br><br>

<div style="border:3px solid pink;width:25%;border-radius:20px;padding:20px;margin: auto;background-color: yellow">
<form action=UserRegistration method=post>
	<label for=email>Email :-</label> <input type="text" name=email id=email /><br><br>
	<label for=pass>Password :-</label> <input type="password" name=password id=pass /><br><br>
	<label for=name>Name :-</label> <input type="text" name=name id=name /><br><br>
	<label for=phno>Phone No. :-</label> <input type="text" name=phno id=phno /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</body>
</html>