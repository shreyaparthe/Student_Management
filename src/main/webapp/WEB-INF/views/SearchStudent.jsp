
<%@page import="com.jspiders.springmvc.pojo.StudentPojo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="NavBar.jsp"/>
    <%
    StudentPojo pojo=(StudentPojo) request.getAttribute("student");
    String msg=(String)request.getAttribute("msg");
    %>
    <style>

body {
	background-image:
		url('https://www.xmple.com/wallpaper/linear-blue-white-highlight-gradient-1920x1080-c2-ffffff-e0ffff-l-50-a-165-f-21.svg');
font-family: cursive;
	background-size: 100%;
}


</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form action="./search" method="post">
<fieldset>
<legend>Search Student Details</legend>
<table>
<tr>
<td>Enter ID </td>
<td> <input type="text" name="id"></td>
</tr>
</table>
</fieldset>
<input type="submit" value="SEARCH">

</form>
<%
if(msg!=null){
%>
<h4><%=msg %></h4>
<%
}
%>
<%
if(pojo != null){
%>
<table>
<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Mobile</th>
		<th>Address</th>

</tr>
<tr>
	<td><%=pojo.getId() %></td>
	<td><%=pojo.getName() %></td>
	<td><%=pojo.getEmail() %></td>
	<td><%=pojo.getMobile() %></td>
	<td><%=pojo.getAddress() %></td>
	</tr>
	
	
</table>
<%
}
%>
</div>

</body>
</html>