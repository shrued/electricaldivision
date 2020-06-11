<!DOCTYPE html>
<html>
<head>
<title>Logout Page</title>
</head>
<body style="background-color: #e1eebf;">
<center>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
You are logged out.
<a href='index.jsp'>Log in again</a> <br/>
</center>
</body>
</html>