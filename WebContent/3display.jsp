<!DOCTYPE html>
<html>
<head>
<%@ page import ="java.sql.*" %>
<title>Diesel Consumption Report</title>
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
	String mon =  request.getParameter("mon");
	String sql =  "select * from elecbill where Month='"+mon+"'"; 
	rs = st.executeQuery(sql); 
 %>
        <table width="30%" cellpadding="5" style="text-align:center;">
                <thead bgcolor="#b2ec10">
                    <tr>
                    	<td>Month and Year</td>
                        <td>Unit</td>
                        <td>Rate/Unit</td>
                        <td>Total Amount(a)</td>
                        <td>KVA</td>
                        <td>Rate/KVA</td>
                        <td>Total Amount(b)</td>
                        <td>SGST/CGST 9%</td>
                        <td>EB Tax</td>
                        <td>Grand Total</td>
                    </tr>
                </thead>
                <tbody bgcolor=#dedede>
                  <% while (rs.next()) {%>  
            <tr>
            	<td><%=rs.getString("Month")%></td>
                <td><%=rs.getString("Unit")%></td>
                <td><%=rs.getString("RateUnit")%></td>
                <td><%=rs.getString("Tot_Amt_a")%></td>
                <td><%=rs.getString("KVA")%></td>
                <td><%=rs.getString("RateKVA")%></td>
                <td><%=rs.getString("Tot_Amt_b")%></td>
                <td><%=rs.getString("SGST_CGST_c")%></td>
                <td><%=rs.getString("EB_Tax_d")%></td>
                <td><%=rs.getString("Grand_Tot")%></td>
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