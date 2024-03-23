<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Page</title>
</head>
<body>

<head>
  <meta charset="ISO-8859-1">
  <title>Admin Login Page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
<body>
<header >
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #34b233">
         <div>
          <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" style="width:45%" height=63 width=35>
             <a href="#" class="navbar-brand"><font color="white" size=4><b>Admin</b></font></a>
         </div>

          <ul class="navbar-nav">
           <li><a href="index.jsp" class="nav-link"><font color=#90ee90 size=3><b>Login</b></font></a></li>
           <li><a href="register.jsp" class="nav-link"><font color=#90ee90 size=3><b>Registration Page</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>Locations</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>Our chefs</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>About us</b></font></a></li>
          </ul>
        </nav>
   </header><br><br>
  <div class="container col-md-20">
  <h4><font><b><i>Admin Login:</i></b></font></h4>
  <br>
    <div class="card">
        <div class="card-body">
              <form  action="adminValidationServlet" method="get">
                  <fieldset class="form-group">
                      <label><i class="fa fa-user"></i>&nbsp&nbspUser Name :</label>
                      <input type="text"  class="form-control" name="uname" placeholder="Enter your User Name" value="" required="required">
                   </fieldset>

                   <fieldset class="form-group">
                       <label><i class="fa fa-unlock-alt"></i>&nbsp&nbspPassword :</label>
                       <input type="password"  class="form-control" name="pwd" placeholder="Enter the passowrd" value="" required="required">
                   </fieldset>
                   <button type="submit" class="btn btn-success">Sign In</button>
              </form>
        </div>
    </div>
  </div>
</body>
<br><br>
<footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">Created by RITTIK_Dutta@2000</p>
        <br>
        <center>
        <table cellspacing= 5 cellpadding=5>
        <tr><td></td><td></td><td></td> <td>English(USA)</td> <td></td><td></td><td></td> <td>Português</td> <td></td><td></td><td></td> <td></td><td></td><td></td> <td>French</td> <td></td><td></td><td></td><td></td> <td>español</td>
        <td></td><td></td><td></td> <td>India</td> <td></td><td></td><td></td> <td><img src="https://tse1.mm.bing.net/th?id=OIP.kXjGyUHGaXmmMvl_DW8g3gHaHa&pid=Api&P=0&w=170&h=170" class="rounded" style="width:90%" height=15 width=50></td></tr>
        </table>
        </center>
    </div>
 </footer>

</body>
</html>