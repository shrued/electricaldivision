<!DOCTYPE html>
<html>
<head>
<title>Enter Details</title>
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
<a href='elec_substation.jsp'>Electrical Sub Station</a> <br/>
<a href='diesel_cons.jsp'>Diesel Consumption Details</a> <br/>
<a href='elec_bill.jsp'>Electricity Bill Details</a> <br/>
<a href='solar_con.jsp'>Solar Energy Consumption</a> <br/>
<br/> <a href='success.jsp'>Back</a> 
<%
    }
%>
</center>
</body>
</html>