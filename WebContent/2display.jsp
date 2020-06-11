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
	String po_no =  request.getParameter("po_no");
	String sql =  "select * from diesel where PO_No='"+po_no+"'"; 
	rs = st.executeQuery(sql); 
 %>
        <table width="30%" cellpadding="5" style="text-align:center;">
                        <thead bgcolor="#b2ec10">
                    <tr>
                        <td>Date of Receipt</td>
                        <td>Product Order Number</td>
                        <td>Quantity Received</td>
                        <td>Stock Available</td>
                        <td>Quantity Available</td>
                    </tr>
                </thead>
                <tbody bgcolor=#dedede>
                  <% while (rs.next()) {%>  
            <tr>
                <td><%=rs.getString("Receipt_Date")%></td>
                <td><%=rs.getString("PO_No")%></td>
                <td><%=rs.getString("Qty_Received")%></td>
                <td><%=rs.getString("Stock_Available")%></td>
                <td><%=rs.getString("Qty_Available")%></td>
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