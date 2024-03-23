<html><head><title>Post Order</title>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="w3.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
    </head>
    <body>

        <style>
            body,div,ul,li,p{
                font-family:arial;

            }
            #header{
                height:120px;
                display:block;
                background-color:#F5F5F5;
            }
            #header .logo {
                background-color:#34b233;
            }
            #header .logo a{
                padding-left:10px;
                color:black;
                text-decoration:none;
                font-size:55px;
            }
            /** Navigation **/
            #navigation {
                display: inline-block;
                list-style: none;
                line-height: 50px;
                margin: 0;
                padding-left: 20;
            }
            #navigation ul {
                display: inline-block;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            #navigation li {
                float: left;
                width: 180px;
                text-align: right;
            }
            #navigation li a {
                color: #616161;
                font-size: 20px;
                text-decoration: none;
            }
            #navigation li a:hover {
                font-size: 20px;
                color: #212121;

            }
            #navigation li.active a {
                transition:900ms;
                color: #fff;
                padding:12px;
                background-color:transparent;
                font-size:20px;
                border: 2px solid white;
                border-radius:10px;
            }
        </style>
        <div id="header">
            <div>
                <div class="logo">
                    <a href="#">
                    <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" height=60 width=65>
                    <font color="white" size=5%><b>Delivery Address</b></font></a>
                </div>
                <div id="span" style="background-color: #f4f4f4">
                    <ul id="navigation">

                        <li>
                            <a href="#"><font size=4><b>Locations</b></font></a>
                        </li>
                        <li>
                            <a href="#"><font size=4><b>Our chefs</b></font></a>
                        </li>
                        <li>
                            <a href="aboutus.jsp"><font size=4><b>About us</b></font></a>
                        </li>
                        <li>
                             <a href="#"><font color="#f4f4f4">About us</font></a>
                        </li>
                        <li>
                             <a href="logout.jsp"><font size=4><b>LOG OUT </b></font><font size=3><b>(<%out.print(session.getAttribute("userid")); %>)</b></font></a>	
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <BR><BR>
        <div class="container col-md-100">
        <h4><B>Enter Your Delivery Address:</B></h4>
         <center> <hr size=18% color=gray width=1110px > </center>
         <BR>
         
           <div class="card" style="width:100%">
              
              <div class="card-body">
                 <form action="pcheck.jsp" method="post">
                      <fieldset class="form-group">
                            <label><i class="fa fa-user"></i>&nbsp&nbspEnter full Name :</label>
                            <input type="text"  class="form-control" name="name" placeholder="Enter the Full Name" required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><i class="fa fa-phone"></i>&nbsp&nbspEnter Mobile Number :</label>
                            <input type="number"  class="form-control" name="phoneNo" placeholder="Enter your phone number" required="required">
                      </fieldset>
                      
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-envelope"></i>&nbsp&nbspEnter Email Address :</label>
                            <input type="email"  class="form-control" name="emailid" placeholder="Enter your Email id" required="required">
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label><i class="fa fa-map-marker"></i>&nbsp&nbsp&nbspSelect your City :</label>
                            <select class="form-control" name="cityname">
                                <option value="1" selected>---choose city---</option>
                                <option value="hydrabad">Hydrabad</option>
                                <option value="pune">Pune</option>
                                <option value="kolkata">Kolkata</option>
                                <option value="delhi">Delhi</option>
                            </select>
                      </fieldset>
                      
                      <fieldset class="form-group">
                            <label for="adr"><i class="fa fa-home"></i>&nbsp&nbsp&nbspAddress :</label>
                            <input type="text" class="form-control" id="adr" name="addressDetails" placeholder="542 W. 15th Street"required="required">
                      </fieldset>
                       <fieldset class="form-group">
                            <label for="pin"><i class="fa fa-map-pin"></i>&nbsp&nbsp&nbspPin Code :</label>
                            <input type="text" class="form-control" id="pin" name="pin" placeholder="72-14-30"required="required">
                      </fieldset>

                      <fieldset class="form-group">
                            <label><input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing</label>
                            &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp<label><input type="checkbox" id="subscribeNews" checked="checked" name="sameadr"> COD(Cash On Delivery)</label>
                             &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp<label><input type="checkbox" id="subscribeNews" checked="checked" name="sameadr"> No Cancellation of Order is Accepted</label>
                      </fieldset>
                      &nbsp&nbsp&nbsp<button type="submit" class="btn btn-success" style='width:12%;background-color:red;border-color:gray;color:white;height:40px; border-radius:10px'><font color="white" size=3><b>Submit</b></font></button>
                 </form>
               </div>
          </div>
      </div>
      <br>
 <footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">Created by RITTIK_Dutta@2000.</p>
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