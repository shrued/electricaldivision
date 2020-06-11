<!DOCTYPE html>
<html>
<head>
<%@ page import ="java.sql.*" %>
<title>Solar Report</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
}
</style>
</head>
<body style="background-color: #e1eebf;">
<center>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esd",
        "root", "root");
	Statement st = con.createStatement();
	ResultSet rs;
	String start =  request.getParameter("start");
	String to =  request.getParameter("to");
	String sql =  "select * from solar where Date between '"+start+"' and '"+to+"'"; 
	rs = st.executeQuery(sql); 
 %>
        <table width="30%" cellpadding="5" style="text-align:center;">
                <thead bgcolor="#b2ec10">
                    <tr>
                        <td>Date</td>
                        <td>Total Consumption</td>
                    </tr>
                </thead>
                <tbody bgcolor=#dedede>
                  <% while (rs.next()) {%>  
            <tr>
                <td><%=rs.getString("Date")%></td>
                <td><%=rs.getString("Tot_Cons")%></td>
            </tr>
             <%
                  }
%>
                </tbody>
            </table>
         </br> <a href='choose2.jsp'>Back</a>
      </center>
</body>
</html>