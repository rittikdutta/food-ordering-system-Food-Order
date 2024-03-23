<%@ page import="demo.MinPath"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

%>
<center>
    <p align="center" style="font-size:45px">Food Shop</p>
    Session expired.
    <a href="index.jsp" style="color:#616161;padding-top:23px">Sign in here</a>
</center>
<%} else {

%>
<html>
    <head><title>Food Shop</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="stylesheet" href="css1.css" type="text/css">
        <link rel="stylesheet" href="w3.css" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
        <script>
            var b = 0;
            function update_value(chk_bx) {
                if (chk_bx.checked)
                {
                    var a = "checked";
                    b += 1;
                } else {
                    var a = "not checked";
                    if (b > 0) {
                        b -= 1;
                    } else if (b == 0) {
                        b = 0;
                    }
                }
                if (b == 0)
                {
                    document.getElementById('wish').innerHTML = '<img src="https://i.pinimg.com/736x/5d/26/a1/5d26a173f443cbd190e34481438d474b.jpg" class="rounded-circle" height=40 width=40>&nbsp&nbsp0';

                } else {
                    document.getElementById('wish').innerHTML = '<img src="https://i.pinimg.com/736x/5d/26/a1/5d26a173f443cbd190e34481438d474b.jpg" class="rounded-circle" height=40 width=40>&nbsp&nbsp' + b + '';
                }
            }



        </script>
    </head>
    <body>
        <jsp:useBean id="test" class="demo.MinPath" />
        <style>
            body,div,ul,li,p{
                font-family:arial;

            }
            #header{
                height:180px;
                 
            }
            #header .logo a{
                padding-left:10px;
                text-decoration:none;
                font-size:60px;
            }
            #header .logo {
                background-color:#34b233;
            }
            /** Navigation **/
            #navigation {
                display: inline-block;
                list-style: none;
                line-height: 10px;
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
                line-height: 10px;
                text-decoration: none;
            }
            #navigation li a:hover {
                font-size: 20px;
                color: #212121;
               

            }
            #navigation li.active a {
                color: green;
                -webkit-text-stroke:1px green;
                padding:13px;
                background-color:transparent;
                font-size:20px;
                border: 2px solid #cccccc;
                border-radius:100px;
            }
            #wish{
                padding:10px;
                font-size:30px;
            }
            input[type="checkbox"], input[type="radio"] {
                width: 30px;
                height: 30px;
                border-width: 0;
                transition: all .3s linear;
            }
        </style>
       
        <div id="header">
            
        
            <div style="background-color: #f4f4f4">
                <div class="logo">
                <a href="index.html">
                <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" height=60 width=65>
                    <font color="white" size=5%><b>Menu</b></font></a>
                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                    <span id="wish"><img src="https://i.pinimg.com/736x/5d/26/a1/5d26a173f443cbd190e34481438d474b.jpg" class="rounded-circle" height=40 width=40><font color="white">  0</font> </span>

                </div><br>
                <div id="span" style="background-color: #f4f4f4" >
                    <ul id="navigation">
                        <li class="active">
                            <a href="#"><b>Welcome</b></a>
                        </li>
                        <li>
                            <a href="#"><font size=3><b>Locations</b></font></a>
                        </li>
                        <li>
                            <a href="#"><font size=3><b>Our chefs</b></font></a>
                        </li>
                        <li>
                            <a href="aboutus.jsp"><font size=3><b>About us</b></font></a>
                        </li>
                        <li>
                            <a href="#"><font size=3 color="#f4f4f4"><b>About us</b></font></a>
                        </li>
                        <li>
                            <a href="logout.jsp"><font size=4><B> LOG OUT</B></font><font size=3> <b>(<%out.print(session.getAttribute("userid")); %>)</b></font></a>	
                        </li>
                    </ul>
                    
                </div>
            </div>
            <marquee bgcolor="#f4f4f4"><font color="#f4f4f4">c</font></marquee>
            <marquee bgcolor="#bcf5bc"><font color="000000" size=3><i><b>Hello , WelCome " 50% Discount on your 1st Order, So HURRY UP!!!!! and Order</b></i></font></marquee>
          
        </div>

     
        <form method="post" action="order.jsp">
           <center>
            <table class="w3-table" style="background-color:#000000" cellpadding=5> 

                <tr>
                    <td><img class="rounded" src="https://lh4.googleusercontent.com/_OaYG005JPDs/TVMNxt2GvUI/AAAAAAAACrA/_ZDdFWDO6Ts/s640/Garlic%20Lemon%20Fish%20above%20angle.jpg" height=240 width=290></td>
                    <td><img class="rounded"src="https://www.thespruceeats.com/thmb/pnrJGL8xnjzstuA_NCpB-hSA5bA=/1999x1499/filters:fill(auto,1)/GettyImages-1127911368-6e6934c5757a4e6ab3c3ad078236da64.jpg" height=240 width=290></td>
                    <td><img class="rounded"src="https://fishmongerapproved.com/wp-content/uploads/2020/03/shutterstock_640898092-scaled.jpg" height=240 width=290></td>
                    
                    <td><img class="rounded"src="https://t3.ftcdn.net/jpg/00/35/14/14/360_F_35141481_mOR7JQ8lWQAurMLPd4cJaquhaRp3x0Ia.jpg" height=240 width=290></td>
                    
                </tr>

                <tr>
                    <td><input class="mv1" type="checkbox" name="chk1" value="1" onchange="update_value(this);"></td>
                    <td><input class="mv2" type="checkbox" name="chk1" value="2" onchange="update_value(this);"></td>
                    <td><input class="mv3" type="checkbox" name="chk1" value="3" onchange="update_value(this);"></td>
                    
                    <td><input class="mv11" type="checkbox" name="chk1" value="11" onchange="update_value(this);"></td>
                </tr>
                <tr><td align="center"><font color="white"><b><i>Pan Fried Katla Fish (RS.200/-)</i></b></font></td><td align="center"><font color="white"><b><i>Olive Tender Chicken (RS.270/-)</i></b></font></td><td align="center"><font color="white"><b><i> Octopus in Blackbean Sauce(RS. 350/-)</i></b></font></td> <td align="center"><font color="white"><b><i>Gelato Ice Cream (RS.190/-)</i></b></font></td> </tr>

                <tr>
                    <td><img class="rounded"src="https://i.pinimg.com/originals/1f/c3/1b/1fc31b898c3f40cbddc8d954aff212d7.jpg" height=240 width=290></td>
                    <td><img class="rounded"src="https://indiachronicles.com/wp-content/uploads/2015/09/sushi-delhi.jpg" height=240 width=290></td>
                    <td><img class="rounded"src="https://d1ralsognjng37.cloudfront.net/5a849e5c-5b45-4123-9946-a6ed76931262" height=240 width=290></td>
                    
                    <td><img class="rounded"src="https://www.badchix.com/wp-content/uploads/2014/09/seen-on-badchix-colorful-alcoholic-drinks-32-photos-27.jpg" height=240 width=290></td>
                </tr>


                <tr>
                    <td><input class="mv4" type="checkbox" name="chk1" value="4" onchange="update_value(this);"></td>
                    <td><input class="mv5" type="checkbox" name="chk1" value="5" onchange="update_value(this);"></td>
                    <td><input class="mv6" type="checkbox" name="chk1" value="6" onchange="update_value(this);"></td>
                    
                     <td><input class="mv12" type="checkbox" name="chk1" value="12" onchange="update_value(this);"></td>
                </tr>
                <tr><td align="center"><font color="white"><b><i>Panned Paprika Fish (RS. 200/-)</i></b></font></td><td align="center"><font color="white"><b><i>Homosaki Sushi (RS. 230/-)</i></b></font></td><td align="center"><font color="white"><b><i>Neapolitan Ice Cream (RS. 250/-)</i></b></font></td> <td align="center"><font color="white"><b><i>Pinacolada (RS.190/-)</i></b></font></td> </tr>

                <tr>
                    <td><img class="rounded"src="https://www.tasteofhome.com/wp-content/uploads/2018/01/Pork-Chops-Ole_EXPS_13x9BZ21_568_E10_08_7b-3.jpg" height=240 width=290></td>
                    <td><img class="rounded"src="http://4.bp.blogspot.com/-COkAbtBiV6o/VjX-mw4LvwI/AAAAAAAAG8o/KHp1iil4xT8/s1600/DSC_0571.JPG" height=240 width=290></td>
                    <td><img class="rounded"src="https://thumbor.forbes.com/thumbor/1280x868/https://specials-images.forbesimg.com/dam/imageserve/1164175639/960x0.jpg%3Ffit%3Dscale" height=240 width=290></td>
                    
                    <td><img class="rounded"src="http://cafelucci.com/wp-content/uploads/2018/03/Studio-Session-2-892.jpg" height=240 width=290></td>
                </tr>


                <tr>
                    <td><input class="mv7" type="checkbox" name="chk1" value="7" onchange="update_value(this);"></td>
                    <td><input class="mv8" type="checkbox" name="chk1" value="8" onchange="update_value(this);"></td>
                    <td><input class="mv9" type="checkbox" name="chk1" value="9" onchange="update_value(this);"></td>
                    
                     <td><input class="mv13" type="checkbox" name="chk1" value="13" onchange="update_value(this);"></td>
                </tr>
                <tr><td align="center"><font color="white"><b><i>Cheesy Beef Steak (RS. 360/-)</i></b></font></td><td align="center"><font color="white"><b><i>Punjabi Thali (RS. 250/-)</i></b></font></td><td align="center"><font color="white"><b><i>Chilli Barbecque Burger (RS.190/-)</i></b></font></td> <td align="center"><font color="white"><b><i>Coco Vanilla Mist (RS.190/-)</i></b></font></td> </tr>

            </table>
            
         </center>
           
            <br>
            <center>
            <div id="order"><input type="submit" style="width:280px;font-size:28px;border-color:gray;color:white;height:55px; border-radius:10px" value="      Add to cart      " class="btn btn-success" /></div>
            </center>
        </form>
        <footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">Created by RITTIK_Dutta@2000</p>
         <center>
        <table cellspacing= 5 cellpadding=5>
        <tr><td></td><td></td><td></td> <td>English(USA)</td> <td></td><td></td><td></td> <td>Português</td> <td></td><td></td><td></td> <td></td><td></td><td></td> <td>French</td> <td></td><td></td><td></td><td></td> <td>español</td>
        <td></td><td></td><td></td> <td>India</td> <td></td><td></td><td></td> <td><img src="https://tse1.mm.bing.net/th?id=OIP.kXjGyUHGaXmmMvl_DW8g3gHaHa&pid=Api&P=0&w=170&h=170" class="rounded" style="width:90%" height=15 width=50></td></tr>
        </table>
        </center>
    </div>
 </footer>
        <%
            }
        %>

    </body>
</html>
