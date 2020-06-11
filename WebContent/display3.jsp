<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electricity Bill Report</title>
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
    	<form method="post" action="3display.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead bgcolor="#b2ec10">
                    <tr>
                        <th colspan="2">Enter Month and Year Here</th>
                    </tr>
                </thead>
                <tbody bgcolor=#dedede>
                    <tr>
                        <td>Month and Year</td>
                        <td><input type="month" name="mon" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href="choose2.jsp"><center>Back</center></a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
    
    