<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>
<style type="text/css">
/* Reset margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Vertical Navbar */
ul {
    list-style-type: none;
    background-color: black;
    height: 100%; /* Full height of the screen */
    width: 200px; /* Fixed width for the navbar */
    position: fixed; /* Stick the navbar to the left */
    top: 0;
    left: 0;
    overflow: hidden; /* Hide overflow */
    display: flex;
    flex-direction: column; /* Stack items vertically */
    padding-top: 20px;
}

/* Navbar List Items */
li {
    text-align: left;
    padding: 10px;
}

/* Navbar Links */
li a {
    display: block;
    color: white;
    padding: 10px 15px; /* Adjust padding for better alignment */
    text-decoration: none; /* Remove underline */
    font-family: cursive;
    border: 1px solid white;
    border-radius: 5px;
    transition: background-color 0.3s ease; /* Smooth hover effect */
}

/* Hover Effect */
li a:hover {
    background-color: #111;
}

/* Logout Button */
.logout {
    background-color: red;
    text-align: center;
}

/* Main Content to Avoid Overlap */
body {
    margin-left: 220px; /* Add margin to the left for main content */
    padding: 10px;
}

fieldset table {
    margin: auto;
    text-align: left;
}

fieldset {
    margin: 15px auto;
    text-align: center;
}

legend {
    color: white;
    background-color: #143034;
}
</style>
</head>
<body>
<ul>
    <li><a href="./home">Home</a></li>
    <li><a href="./search">Search Student</a></li>
    <li><a href="./add">Add Student</a></li>
    <li><a href="./update">Update Student</a></li>
    <li><a href="./remove">Remove Student</a></li>
    <li><a class="logout" href="./logout">Logout</a></li>
</ul>

<!-- Main Content Area -->

</body>
</html>
