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
background-image: url("image/1.jpg");
}
#exit{
height:30px;
width:100px;
}
h1{
color:#f44336;
}
</style>
<% 
String cardNo=null;
cardNo=request.getParameter("cardno");
%>
<body>
	<center><h1><b>transaction Failed Try again due to low balance</b></h1></center>
	<br>
	<a href="transaction.jsp?cardno=<%=cardNo%>"><input type="button" value="BACK"></a>

</body>
</html>