<%@page import="java.util.List"%>
<%@page import="com.jspiders.springmvc.pojo.StudentPojo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
StudentPojo student = (StudentPojo) request.getAttribute("student");
List<StudentPojo> students = (List<StudentPojo>) request.getAttribute("students");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

body{
font-family: cursive;
}


form {
	    margin-top: 10px;
    display: flex;
    align-items: center;
    text-align: center;
    justify-content: center;
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
	<div align="center">
		<%
		if (student == null) {
		%>
		<form action="./update" method="post">
			<fieldset>
				<legend>Select Student</legend>
				<table>
					<tr>
						<td>Enter ID</td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
			</fieldset>
			<input type="submit" value="SELECT">
		</form>
		<%
		if (msg != null) {
		%>
		<h4><%=msg%></h4>
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
			}
			%>
		</table>
		<%
		} else if (student != null) {
		%>
		<form action="./updateData" method="post">
			<fieldset>
				<legend>Update Student Details</legend>
				<table>
					<tr hidden="true">
						<td>ID</td>
						<td><input type="text" name="id" 
							value="<%=student.getId()%>"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"
							value="<%=student.getName()%>"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email"
							value="<%=student.getEmail()%>"></td>
					</tr>
					<tr>
						<td>Mobile</td>
						<td><input type="text" name="mobile"
							value="<%=student.getMobile()%>"></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address"
							value="<%=student.getAddress()%>"></td>
					</tr>
				</table>
			</fieldset>
			<input type="submit" value="UPDATE">
		</form>
		<%
		}
		%>

	</div>
</body>
</html>