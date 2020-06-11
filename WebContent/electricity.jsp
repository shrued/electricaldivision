<%@ page import ="java.sql.*" %>
<%
	String mon =  request.getParameter("mon");
	int unit =  Integer.parseInt(request.getParameter("unit"));
	int rateunit =  Integer.parseInt(request.getParameter("rateunit"));
    int kva = Integer.parseInt(request.getParameter("kva"));    
    int ratekva = Integer.parseInt(request.getParameter("ratekva"));
    int gst = Integer.parseInt(request.getParameter("gst"));
    int eb_tax = Integer.parseInt(request.getParameter("eb_tax")); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esd",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into elecbill(Month, Unit, RateUnit, Tot_Amt_a, KVA, RateKVA, Tot_Amt_b, SGST_CGST_c, EB_Tax_d, Grand_Tot) values ('" + mon + "','" + unit + "','" + rateunit + "','" + (unit*rateunit) + "','" + kva + "','" + ratekva + "','" + (kva*ratekva) + "','" + gst + "','" + eb_tax +"','" + ((unit*rateunit)+(kva*ratekva)+gst+eb_tax) + "')");
    if (i > 0) {
        response.sendRedirect("finish.jsp");
        } else {
        response.sendRedirect("error.jsp");
    }
%>