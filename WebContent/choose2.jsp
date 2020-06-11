<!DOCTYPE html>
<html>
<head>
<title>Details Report</title>
</head>
<body style="background-color: #e1eebf;">
<center>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%> <br/>
<a href='display1.jsp'>Electrical Sub Station Report</a> <br/>
<a href='display2.jsp'>Diesel Consumption Report</a> <br/>
<a href='display3.jsp'>Electricity Bill Report</a> <br/>
<a href='display4.jsp'>Solar Energy Consumption Report</a> <br/>
<br/> <a href='success.jsp'>Back</a> 
<%
    }
%>
</center>
</body>
</html>