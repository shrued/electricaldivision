<%@ page import ="java.sql.*" %>
<%
	String date =  request.getParameter("date");
	String po_no =  request.getParameter("po_no");
    String qty = request.getParameter("qty");    
    String stock = request.getParameter("stock");
    String avail = request.getParameter("avail");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esd",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into diesel( PO_No, Qty_Received, Stock_available, Qty_Available, Receipt_Date) values ('" + po_no + "','" + qty + "','" + stock + "','" + avail + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("finish.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>