<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="demo.MinPath"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

%>
<center>
    <img src="Images/112.gif" height=200 width=200><br>
    You must logged in first.<br/>
    <a href="index.jsp" style="text-decoration:none;font-size:23px;color:#009afd;padding-top:23px">Please Login</a>
</center>
<% } else {

%>
<html><head><title>Thank you for  Ordering</title>
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
                    <font color="white" size=5%><b>Order Placed</b></font></a>
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
                            <a href="feedback.jsp"><font size=4><b>Feedback</b></font></a>
                        </li>
                        <li>
                            <a href="aboutus.jsp"><font size=4><b>Contact us</b></font></a>
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
        <br>
        <br>
        <center>
        <img src="https://c.tenor.com/HCJnS_GSJk4AAAAC/like-gif.gif" class="rounded" height=170 width=195>
        </center>
        <br>
        <br>
        <center>
        <h2 style="style.css"><i>Thank you for making Order.....<br>
        It will delivered to you within next 10 minutes...</i></h2>
        </center>
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

    <% }%>