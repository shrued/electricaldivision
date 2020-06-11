<%@ page import ="java.sql.*" %>
<%
	String date =  request.getParameter("date");
	String from =  request.getParameter("from");
    String to = request.getParameter("to");    
    String hours = request.getParameter("hours");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esd",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into substation(Running_From, Running_To, Operating_Hours, Date) values ('" + from + "','" + to + "','" + hours + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("finish.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>