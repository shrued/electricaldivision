<%@ page import ="java.sql.*" %>
<%
	String emp_id =  request.getParameter("empid");
	String emp_name =  request.getParameter("empname");
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String email = request.getParameter("email");
    String reg_date =  request.getParameter("regdate");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esd",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into reg_info(Emp_Id, Emp_Name, Email, U_Name, Password, Reg_Date) values ('" + emp_id + "','" + emp_name + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>