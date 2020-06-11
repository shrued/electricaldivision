<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diesel Consumption Details</title>
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
        <form method="post" action="diesel.jsp">
            <center>
            <table  width="30%" cellpadding="5" style="text-align:center;">
                <thead bgcolor="#b2ec10">
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody bgcolor=#dedede>
                    <tr>
                        <td>Date of Receipt</td>
                        <td><input type="date" name="date" value="" /></td>
                    </tr>
                    <tr>
                        <td>Product Order Number</td>
                        <td><input type="text" name="po_no" value="" /></td>
                    </tr>
                    <tr>
                        <td>Quantity Received</td>
                        <td><input type="text" name="qty" value="" /></td>
                    </tr>
                    <tr>
                        <td>Stock Available</td>
                        <td><input type="text" name="stock" value="" /></td>
                    </tr>
                     <tr>
                        <td>Quantity Available</td>
                        <td><input type="text" name="avail" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href="choose1.jsp"><center>Back</center></a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>