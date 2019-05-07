<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,com.vkr.model.Details"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% List<Details> details=(List<Details>)request.getAttribute("details"); %>
	<table border="1">
		<th>FirstName</th>
		<th>Age</th>
		<th colspan="2">Action</th>
		<% for(Details temp:details)
		{
			
		%>
		
		<tr>
			<td><%=temp.getFirstname() %></td>
			<td><%=temp.getAge() %></td>
			<td><a href="http://localhost:8089/springDB/editStudent?id=<%=temp.getId()%>"><button>Edit</button></a></td>
			<td><a href=" "><button>Delete</button></a></td>
		</tr>
		<%
		} %>
	</table>
</body>
</html>