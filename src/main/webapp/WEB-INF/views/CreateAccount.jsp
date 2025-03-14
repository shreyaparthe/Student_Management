<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
	margin-top: 10px;
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
</style>
</head>
<body>
<div align="center">
<h2>Register Admin</h2>
<form action="./createAdmin" method="post">
<fieldset>
<legend> Create Admin Credentials</legend>
<table>
<tr>
	<td>Username</td>
	<td><input type="text" name="username"></td>
</tr>
<tr>
	<td>Password</td>
	<td><input type="text" name="password"></td>
	</tr>
	

</table>

</fieldset>
<input type="submit" value="REGISTER">

</form>
<%
if(msg != null){
%>
<h4> <%=msg %></h4>
<%
}
%>
</div>

</body>
</html>