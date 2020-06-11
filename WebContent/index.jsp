<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1" charset=UTF-8" >
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Home Page</title>
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
    <div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><b><img src="Img/CLRI.png" alt="CSIR-CLRI"></b></a>
</div>
    <center>
    </br>
    </br>
    </br>
    </br>
    </br>
        <form method="post" action="login.jsp">
            <table width="30%" cellpadding="5" style="text-align:center;">
                <thead bgcolor="#b2ec10">
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody  bgcolor=#dedede>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not Registered! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </form>
            </center>
    </body>
</html>