<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
    </head>
    <body>
        <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #34b233">
         <div>
         <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" style="width:100%" height=68 width=90>
             
         </div>

          <ul class="navbar-nav">
             <li><a href="#" class="nav-link"><font color="white" size=4%><b>Registration</b></font></a></li>
             <li><a href="index.jsp" class="nav-link"><font size=3><b>Login </b></font></a></li>
             <li><a href="adminLogin.jsp" class="nav-link"><font size=3><b>Admin</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>Our chefs</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>Locations</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>Feedback</b></font></a></li>
             
          </ul>
        </nav>
   </header>
    <br> <br>
    <div class="container col-md-5">
           <div class="card">
              <div class="card-body">
                 <form method="post" action="check.jsp">
                      <fieldset class="form-group">
                            <label><i class="fa fa-id-card"></i>&nbsp&nbspFirst Name :</label>
                            <input type="text"  class="form-control" name="fname" placeholder="Enter the First Name" required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><i class="fa fa-drivers-license-o"></i>&nbsp&nbspLast Name :</label>
                            <input type="text"  class="form-control" name="lname" placeholder="Enter the Last Name" required="required">
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-envelope"></i>&nbsp&nbspEmail :</label>
                            <input type="text"  name="email" class="form-control" placeholder="Enter your Email" required="required">
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-user"></i>&nbsp&nbspUser Name :</label>
                            <input type="text"  class="form-control" name="uname" placeholder="Enter the Uesr Name" required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><i class="fa fa-unlock-alt"></i>&nbsp&nbspPassword :</label>
                            <input type="password"  class="form-control" name="pass" placeholder="Enter the Password" required="required">
                      </fieldset>

                      <button type="submit" class="btn btn-success">Sign up</button>
                      
                      <fieldset class="form-group">
                      <br>
                            <label><b><i>Already have account :</i></b></label>
                            <br>
                            <a href="index.jsp"><input type="button" class="btn btn-success" value="Sign In"></a>
                      </fieldset>
                 </form>
               </div>
          </div>
      </div>
    

    </body>
</html>