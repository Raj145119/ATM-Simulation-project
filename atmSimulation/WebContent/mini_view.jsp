<%@page import="atm.com.Bo.MiniStatement"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MiniStatement</title>
</head>
<style>
body{
	background-image: url("image/6.jpg");
}
#exit{
margin-left:160px;
height:30px;
width:100px;
}
</style>
<body>
<% 
String cardNo=null;
cardNo=request.getParameter("cardno");
%>
<%
Object obj= request.getAttribute("mini");
List<MiniStatement> list = (List<MiniStatement>)obj;
//List<Employee> list = (List<Employee>)obj;
%>
how many miniStatement= <%=list.size() %>
<br>
<%
int size=list.size();
%>
<center>
<table>
<tr>
<td>Amount</td>
<td>Transaction</td>
<td>Date and time</td>
</tr>

<%for(MiniStatement min:list){ %>
<tr>
<% if(size<=5){%>
<td>
<%=min.getDamount() %>
</td>
<td>
<%=min.getTransaction() %>
</td>
<td>
<%=min.getDtime() %>

</td>
</tr>

<%}else{
	size--;
	continue;
}
%>

<br>
<%} %>
</table>
</center>
<br>
	<center><a href="transaction.jsp?cardNo=<%=cardNo%>"><input type="button" value="EXIT" id="exit"></a></center>
</body>
</html>