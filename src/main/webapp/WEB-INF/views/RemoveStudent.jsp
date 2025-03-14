<%@page import="com.jspiders.springmvc.pojo.StudentPojo" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="NavBar.jsp" />
    <%
    String msg=(String) request.getAttribute("msg");
    %>
    <%
    List<StudentPojo> students=(List<StudentPojo>)request.getAttribute("students");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
	  margin: 20px;
    display: flex;
    align-items: center;
    text-align: center;
    justify-content: center;
    font-family: cursive;
}

form table {
	margin: auto;
	width: 100%;
	   
	
}

tr {
	text-align: center;
}

fieldset table {
	margin: auto;
	text-align: left;
	padding: 10px;
	
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #333;
}

body {
	background-image:
		url('https://www.xmple.com/wallpaper/linear-blue-white-highlight-gradient-1920x1080-c2-ffffff-e0ffff-l-50-a-165-f-21.svg');
	background-size: 100%;
	 font-family: cursive;
}

#data {
	background-color: white;
	border: 1px solid black;
	width: 100%;
	border: 1px solid black;
}

#data td {
	border: 1px solid black;
	text-align: center;
}
</style>
</head>
<body>
	<div align="center" style="size: 500pc;">
		<form action="./remove" method="post">
			<fieldset>
				<legend>Remove Student Data</legend>
				<table>
					<tr>
						<td>Enter ID</td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
			</fieldset>
			<input type="submit" value="REMOVE">
		</form>
		<%
		if (msg != null) {
		%>
		<h4><%=msg%>
		</h4>
		<%
		}
		%>
		<%
		if (students != null) {
		%>
		<table id="data">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Address</th>
			</tr>
			<%
			for (StudentPojo pojo : students) {
			%>
			<tr>
				<td><%=pojo.getId()%></td>
				<td><%=pojo.getName()%></td>
				<td><%=pojo.getEmail()%></td>
				<td><%=pojo.getMobile()%></td>
				<td><%=pojo.getAddress()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
	</div>
</body>
</html>