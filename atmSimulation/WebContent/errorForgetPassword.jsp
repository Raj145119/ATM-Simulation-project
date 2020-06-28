<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>error</title>
</head>
<style>
body{
background-image:url("image/1.jpg");
}
h1{
color:yellow;

}
</style>
<body>
	<center><h1>Please check Your Email or CardNo carefully</h1></center>
	<% response.setHeader("refresh", "5 url=forgetPassword2.jsp");%>
</body>
</html>