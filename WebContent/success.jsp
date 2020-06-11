<!DOCTYPE html>
<html>
<head>
<title>Success</title>
</head>
<body style="background-color: #e1eebf;">
<center>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in.<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%> !
<a href='logout.jsp'>Log out</a> <br/>
<a href='choose1.jsp'>Enter Details</a> <br/>
<a href='choose2.jsp'>Detail Report</a> <br/>
<%
    }
%>
</center>
</body>
</html>
