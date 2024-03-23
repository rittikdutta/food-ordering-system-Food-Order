<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Order</title>
        <link rel="stylesheet" href="w3.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
    <header >
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #34b233">
         <div>
         <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" style="width:40%" height=63 width=8>
             <a href="" class="navbar-brand"><font color="white" size=4%><b> Login</b></font></a>
         </div>

          <ul class="navbar-nav">
             <li><a href="#" class="nav-link"><font size=3><b>Locations</b></font></a></li>
             <li><a href="#" class="nav-link"><font size=3><b>Our chefs</b></font></a></li>
             <li><a href="feedback.jsp" class="nav-link"><font size=3><b>Feedback</b></font></a></li>
             <li><a href="register.jsp" class="nav-link"><font size=3><b>Registration Page</b></font></a></li>
             <li><a href="adminLogin.jsp" class="nav-link"><font size=3><b>Admin</b></font></a></li>
          </ul>
        </nav>
   </header>
   <marquee Direction="left" bgcolor="#d3d3d3"><font size=2 color="#4267b3"><b><i>Welcome to " FOOD ORDER " ....  (50% Discount on your First Order, So HURRY UP!!! and order. )</i></b></font></marquee>
   <br><br>
        <div>
            <fieldset style="width:310px; float:right; background:white">
            
                  <div class="container col-md-20">
                       <div class="card">
                          <div class="card-body">
                              <form method="post" action="login.jsp">
                             <center><img src="https://www.w3schools.com/howto/img_avatar2.png" class="rounded" style="width:35%" height=80 width=10></center> 
                              <br>
                                   <fieldset class="form-group">
                                       <label><i class="fa fa-user"></i>&nbsp&nbspUser Name :</label>
                                       <input type="text"  class="form-control" name="uname" placeholder="Enter your User Name" value="" required="required">
                                   </fieldset>

                                   <fieldset class="form-group">
                                       <label><i class="fa fa-unlock-alt"></i>&nbsp&nbspPassword :</label>
                                       <input type="password"  class="form-control" name="pass" placeholder="Enter the passowrd" value="" required="required">
                                   </fieldset>
                                   <button type="submit" class="btn btn-success">Sign In</button>
                                   <br><br>
                                   <fieldset class="form-group">
                                       <label><b><i>Create an Account :</i></b></label>
                                       <br></b>
                                       <a href="register.jsp"><input type="button" class="btn btn-success" value="Sign Up"></a>
                                   </fieldset>
                             </form>
                         </div>
                     </div>
                  </div>
             </fieldset>
        </div>
        <div >
            <div style="text-align:center"> <i>Deliver Excellent Customer Service at Your Restaurant</i><br><h4>We offer following dishes</h4></div>
        </div>
    <table  class="w3-table "  style="background-color:#000000">
        <tr>
            <td><img src="https://www.onceuponachef.com/images/2015/01/Tandoori-Chicken-Drumsticks2-1024x680.jpg" class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://fishmongerapproved.com/wp-content/uploads/2020/03/shutterstock_640898092-scaled.jpg" class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190523-chicken-cordon-bleu-098-horizontal-1559068476.png?crop=1.00xw:0.752xh;0,0.161xh&resize=1200:*" class="rounded" style="width:100%" height=250 width=250></td>
            
             
        </tr>
        <tr><td style="text-align:center"><font color="white"><b><i>Spicy Grilled Chicken (Non-Veg).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Octopus in Blackbean Sauce(Sea Food).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Veggies with Frito Pie(Veg).</i></b></font> </td></tr>

        <tr>
            <td><img src="https://sisijemimah.com/wp-content/uploads/2017/02/IMG_9803.jpg" class="rounded"style="width:100%" height=250 width=250></td>
            <td><img src="http://cafelucci.com/wp-content/uploads/2018/03/Studio-Session-2-892.jpg" class="rounded"style="width:100%" height=250 width=250></td>
            <td><img src="https://i.pinimg.com/originals/1f/c3/1b/1fc31b898c3f40cbddc8d954aff212d7.jpg" class="rounded"style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td style="text-align:center"><font color="white"><b><i>Oregano Grilled Chicken(Non-Veg).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Chocobean (Dessert).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Basa in Plum Sauce (Sea Food).</i></b></font> </td></tr>

        <tr>
            <td><img src="http://img.delicious.com.au/dUeL093l/del/2017/11/del_1116handp_05-54771-1.jpg"class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://indiachronicles.com/wp-content/uploads/2015/09/sushi-delhi.jpg"class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://images5.alphacoders.com/851/thumb-1920-851818.jpg"class="rounded" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td style="text-align:center"><font color="white"><b><i>Butterfly Lobster(Sea Food).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Homosaki Sushi(Non-Veg/Veg).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Mint Lemon Mocktail(Drinks).</i></b></font> </td></tr>

        <tr>
            <td><img src="https://3.bp.blogspot.com/-BwdVbtCv8O0/Vzkw5k_BeUI/AAAAAAAABAY/FOphy1-SGYg07i0vRq932zac0JlHy60FACLcB/s1600/Delicious-Pizza-HD-Wallpaper.jpg"class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://i.pinimg.com/736x/6b/5d/06/6b5d064688b21c3b4eed72f1ea57bc2d--nepal-mezze.jpg"class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://images7.alphacoders.com/101/1013300.jpg"class="rounded" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td style="text-align:center"><font color="white"><b><i>Olive Sub Pizza (Non-Veg/Veg).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Krishna Thali (Veg).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Double Decker Burger(Non-Veg/Veg).</i></b></font> </td></tr>

        <tr>
            <td><img src="https://i.pinimg.com/originals/50/f2/17/50f217e6369b16dcc44e17acf511c6c8.jpg"class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://cdn.theculturetrip.com/wp-content/uploads/2016/01/seafood-platter.jpg"class="rounded" style="width:100%" height=250 width=250></td>
            <td><img src="https://indiachronicles.com/wp-content/uploads/2015/09/sushi-delhi.jpg" class="rounded" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td style="text-align:center"><font color="white"><b><i>Special Sundae (Dessert).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Special Spicy Seafood(Seafood).</i></b></font> </td><td style="text-align:center"><font color="white"><b><i>Homosaki Sushi (Veg/Non-Veg).</i></b></font> </td></tr>
    </table>
    
</body>
<footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">Created by RITTIK_Dutta@2000.</p>
    </div>
 </footer>
</html>


