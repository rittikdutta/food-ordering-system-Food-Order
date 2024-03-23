<%@page import="com.db.utils.DbConnection"%>
<html>
    <head>
        <!-- -//******************************************************************************************************************** -->
        <%@ page import ="java.sql.*"%>
        <%@ page import="java.util.*" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <!-- -//********************************************************************************************************************* -->
        <%
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
    <p>The Session was expired..........</p><br>
    </hr>
    <a href="index.jsp">Click here to login again....</a>
    <%} else {
        float sum = 0;
        Connection con = DbConnection.init();
        Statement st = con.createStatement();
        ResultSet rs;
        String[] sports;
    %>
    <!-- -//********************************************************************************************************************* -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirm your Order..</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="css1.css" type="text/css">
    <link rel="stylesheet" href="w3.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

    <style>
        body,div,ul,li,p{
            font-family:arial;

        }
        #header{
            height:120px;
            display:block;
            background-color: #F5F5F5
        }
        #header .logo a{
            padding-left:10px;
            color:black;
            text-decoration:none;
            font-size:55px;
        }
        #header .logo {
                background-color:#34b233;
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
            line-height: 10px;
            text-decoration: none;
        }
        #navigation li a:hover {
            font-size: 20px;
            color: #212121;

        }
        #navigation li.active a {
            color: black;
            padding:12px;
            background-color:transparent;
            font-size:20px;
            border: 5px solid black;
            border-radius:20px;
        }
    </style>
    <div id="header">
        <div>
            <div class="logo">
                <a href="index.jsp" style="color: white">
                <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" height=60 width=65>
                <font color="white" size=5%><b>Cart Items</b></font></a>
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
<br>


    <%  ArrayList<Integer> arraylist = new ArrayList<Integer>();
        sports = request.getParameterValues("chk1");
       /** start*/ 
        int n;
        n=sports.length;
        session.setAttribute("size", n);
        String[] iname=new String[n];
        int[] qty=new int[n];
        int[] iprice=new int[n];
        //out.println(n);
        /** end*/
        out.println("&nbsp &nbsp &nbsp &nbsp &nbsp <center>  <h1 ><font size=6><b><i>Your cart</i></b></font></h1></center> <hr size=180 color=gray width=1280px >");
        out.println("<center><table class='table table-bordered' style='width:1280px'> <thead class='thead-dark'><tr><th>Item Name</th><th>Quantity</th><th>Total</th></tr></thead>");
        float count = 0;
        if (sports != null) {
            for (int i = 0; i < sports.length; i++) {
                st.executeQuery("select item_name,price_rupee from items where id=" + sports[i] + "");
                rs = st.getResultSet();
                while (rs.next()) {
                    String nameVal = rs.getString("item_name");
                    int catVal = rs.getInt("price_rupee");
    %><input type='hidden' id='cost' value="<%=catVal%>">
    <%
                arraylist.add(catVal);
                sum += catVal;
                int q = 1;
                count++;
                /** start*/
                iname[i]=nameVal;
                qty[i]=q;
                iprice[i]=catVal;
               
                /** end*/
                out.println(
                        "<tr><td>" + nameVal + "</td><td>" + q + "</td><td><div id='total1'>" + catVal + "</div></td></tr>");
                count += 1;
            }
        }
            /** start*/ 
            session.setAttribute("in", iname); 
            session.setAttribute("iq", qty); 
            session.setAttribute("ip", iprice); 
            /** end*/
        out.print("<tr><td style='font-size:30px;'>Total</td><td style='font-size:30px;'>" + count / 2 + "</td><td style='font-size:30px;'>" + sum + "</td></tr>");
        out.print("<tr></tr><tr colspan='3'><td colspan='3'><div><a href=post.jsp><center><input type='button' style='width:20%;background-color:red;border-color:white;color:white;height:50px; border-radius:12px' class='w3-xlarge w3-btn w3-block w3-black' value='Proceed to Checkout'></center></div></td></tr>");
    } else {
    %>
<tr><td></td></tr></td></tr>

<% }%>
</table></center>
<h4>&nbsp &nbsp &nbsp <a href="success.jsp" style="color:#212121" ><button style='width:15%;background-color:#00b0ff;border-color:white;color:white;height:45px; border-radius:12px'><font color="white" size=4>Shop more items</font></button></a></h4>

<div id="footer" style="height:270px; display:block;">

</body>
<footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">Created By Rittik_Dutta@2000.</p>
        <br>
        <center>
        <table cellspacing= 5 cellpadding=5>
        <tr><td></td><td></td><td></td> <td>English(USA)</td> <td></td><td></td><td></td> <td>Português</td> <td></td><td></td><td></td> <td></td><td></td><td></td> <td>French</td> <td></td><td></td><td></td><td></td> <td>español</td>
        <td></td><td></td><td></td> <td>India</td> <td></td><td></td><td></td> <td><img src="https://tse1.mm.bing.net/th?id=OIP.kXjGyUHGaXmmMvl_DW8g3gHaHa&pid=Api&P=0&w=170&h=170" class="rounded" style="width:90%" height=15 width=50></td></tr>
        </table>
        </center>
    </div>
 </footer>
</html>

<%
    }

%>