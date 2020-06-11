<%@ page import ="java.sql.*" %>
<%
	String date =  request.getParameter("date");
	String energy =  request.getParameter("energy");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esd",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into solar(Date, Tot_Cons) values ('" + date + "','" + energy + "')");
    if (i > 0) {
        response.sendRedirect("finish.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>