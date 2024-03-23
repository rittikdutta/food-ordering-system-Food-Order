<%@page import="com.db.utils.DbConnection"%>
<%@ page import ="java.sql.*" %>

<html>
    <head>
        <!-- -//******************************************************************************************************************** -->
        <%@ page import ="java.sql.*"%>
        <%@ page import="java.util.*" %>
        <%@ page import ="java.util.Date" %>
        <%@ page import ="java.text.SimpleDateFormat" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <!-- -//********************************************************************************************************************* -->
        <%
           Date today1= new Date();
           SimpleDateFormat DATE_FORMAT=new SimpleDateFormat("dd-MM-yyyy");
           String today=DATE_FORMAT.format(today1);
        %>
        <%
        String fullname = request.getParameter("name");
        String phoneNo = request.getParameter("phoneNo");
        String emailid = request.getParameter("emailid");
        String city = request.getParameter("cityname");
        String addressDetails = request.getParameter("addressDetails");
        String pin = request.getParameter("pin");
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
        String[] iname= (String[]) session.getAttribute("in");
        int[] qty= (int[]) session.getAttribute("iq");
        int[] iprice= (int[]) session.getAttribute("ip");
        int n=Integer.parseInt( session.getAttribute("size").toString());
        
    %>
    <!-- -//********************************************************************************************************************* -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bill page</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="css1.css" type="text/css">
    <link rel="stylesheet" href="w3.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

   <style>
        body{
            background-color: #F6F6F6; 
            margin: 0;
            padding: 0;
        }
        h1,h2,h3,h4,h5,h6{
            margin: 0;
            padding: 0;
        }
        p{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 80%;
            margin-right: auto;
            margin-left: auto;
        }
        .brand-section{
           background-color: #0d1033;
           padding: 10px 40px;
        }
        .logo{
            width: 50%;
        }

        .row{
            display: flex;
            flex-wrap: wrap;
        }
        .col-6{
            width: 50%;
            flex: 0 0 auto;
        }
        .text-white{
            color: #fff;
        }
        .company-details{
            float: right;
            text-align: right;
        }
        .body-section{
            padding: 16px;
            border: 1px solid gray;
        }
        .heading{
            font-size: 20px;
            margin-bottom: 08px;
        }
        .sub-heading{
            color: #262626;
            margin-bottom: 05px;
        }
        table{
            background-color: #fff;
            width: 100%;
            border-collapse: collapse;
        }
        table thead tr{
            border: 1px solid #111;
            background-color: #f2f2f2;
        }
        table td {
            vertical-align: middle !important;
            text-align: center;
        }
        table th, table td {
            padding-top: 08px;
            padding-bottom: 08px;
        }
        .table-bordered{
            box-shadow: 0px 0px 5px 0.5px gray;
        }
        .table-bordered td, .table-bordered th {
            border: 1px solid #dee2e6;
        }
        .text-right{
            text-align: end;
        }
        .w-20{
            width: 20%;
        }
        .float-right{
            float: right;
        }
    </style>
    
    <div class="container">
        <div class="brand-section">
            <div class="row">
                <div class="col-6">
                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" style="width:25%" height=80 width=10>
             
                    <h1 class="text-white">FOOD ORDER</h1>
                </div>
                <div class="col-6">
                    <div class="company-details"><br>
                      <center>
                        <p class="text-white"><font color="white"><b>Address: </b></font>1/2 Ghandhi Street,Kolkata,India</p>
                        <p class="text-white"><font color="white"><b>Gmail: </b></font>rittik2000dutta@gmail.com</p>
                        <p class="text-white"><font color="white"><b>Phn.: </b></font>+91 8910543741</p>
                      </center>
                    </div>
                </div>
            </div>
        </div>

        <div class="body-section">
            <div class="row">
                <div class="col-6">
                    <h2 class="heading">Invoice No.:<%= today %></h2>
                    <p class="sub-heading">Tracking No. : <B>LP33T3</B> </p>
                   <!--  <p class="sub-heading">Order Date:</p> --> 
                     <div id="current_date"></div>

                   <script>
                     date = new Date();
                     year = date.getFullYear();
                     month = date.getMonth() + 1;
                     day = date.getDate();

                     document.getElementById("current_date").innerHTML =" Order Date:<b> &nbsp "+ day + "." + month + "." + year;
                    </script>
                    <p class="sub-heading">Email Address: <% out.println("&nbsp <font size=3><b><i>"+ session.getAttribute("emailId") +"</i></b></font>"); %>  </p>
                </div>
                <div class="col-6">
                    <p class="sub-heading">Full Name: <% out.println("&nbsp <font size=3><b><i>"+ session.getAttribute("fullName") +"</i></b></font>"); %> </p>
                    <p class="sub-heading">Phone Number: <% out.println("&nbsp <font size=3><b><i>"+ session.getAttribute("phoneno") +"</i></b></font>"); %>  </p>
                    <p class="sub-heading">Address:  <% out.println("&nbsp <font size=3><b><i>"+ session.getAttribute("addressdetails") +"</i></b></font>"); %> </p>
                    <p class="sub-heading">City,Pin-code:  <% out.println("&nbsp <font size=3><b><i>"+ session.getAttribute("cityName") +" -" +session.getAttribute("pinCode")  +"</i></b></font>"); %> 
                      </p>
                </div>
            </div>
        </div>
        
    <div class="body-section">
            <h3 class="heading">Ordered Items</h3>
            <br>


    <%  ArrayList<Integer> arraylist = new ArrayList<Integer>();
       sports = request.getParameterValues("chk1");
       out.println("<center><table class='table table-bordered' style='width:900px'> <thead class='thead-dark'><tr><th>Item Name</th><th>Quantity</th><th>Total</th></tr></thead>");
       /** start*/ 
       float count = 0;
       if (n != 0) {
       for (int i = 0; i < n; i++){
       //out.println(iname[i]);
       out.println(
               "<tr><td>" + iname[i] + "</td><td>" + qty[i] + "</td><td><div id='total1'>" + iprice[i] + "</div></td></tr>");
       sum=sum+iprice[i];
       count=count+qty[i];
       }/** end*/
       if(n==1){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + sum + "')");
               }
       if(n==2){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + sum + "')");
               }
       if(n==3){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + sum + "')");
       }
       if(n==4){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + sum + "')");
       }
       if(n==5){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + sum + "')");
       }
       if(n==6){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + sum + "')");
       }
       if(n==7){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, i7, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + iname[6]+"["+qty[6]+"] = "+iprice[6] + "','" + sum + "')");
       }
       if(n==8){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, i7, i8, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + iname[6]+"["+qty[6]+"] = "+iprice[6] + "','" + iname[7]+"["+qty[7]+"] = "+iprice[7] + "','" + sum + "')");
       }
       if(n==9){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, i7, i8, i9, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + iname[6]+"["+qty[6]+"] = "+iprice[6] + "','" + iname[7]+"["+qty[7]+"] = "+iprice[7] + "','" + iname[8]+"["+qty[8]+"] = "+iprice[8] + "','" + sum + "')");
       }
       if(n==10){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + iname[6]+"["+qty[6]+"] = "+iprice[6] + "','" + iname[7]+"["+qty[7]+"] = "+iprice[7] + "','" + iname[8]+"["+qty[8]+"] = "+iprice[8] + "','" + iname[9]+"["+qty[9]+"] = "+iprice[9] + "','" + sum + "')");
       }
       if(n==11){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + iname[6]+"["+qty[6]+"] = "+iprice[6] + "','" + iname[7]+"["+qty[7]+"] = "+iprice[7] + "','" + iname[8]+"["+qty[8]+"] = "+iprice[8] + "','" + iname[9]+"["+qty[9]+"] = "+iprice[9] + "','" + iname[10]+"["+qty[10]+"] = "+iprice[10] + "','" + sum + "')");
       }
       if(n==12){int l = st.executeUpdate("insert into dorder (date, fullname, email, phone, address, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + iname[2]+"["+qty[2]+"] = "+iprice[2] + "','" + iname[3]+"["+qty[3]+"] = "+iprice[3] + "','" + iname[4]+"["+qty[4]+"] = "+iprice[4] + "','" + iname[5]+"["+qty[5]+"] = "+iprice[5] + "','" + iname[6]+"["+qty[6]+"] = "+iprice[6] + "','" + iname[7]+"["+qty[7]+"] = "+iprice[7] + "','" + iname[8]+"["+qty[8]+"] = "+iprice[8] + "','" + iname[9]+"["+qty[9]+"] = "+iprice[9] + "','" + iname[10]+"["+qty[10]+"] = "+iprice[10] + "','" + iname[11]+"["+qty[11]+"] = "+iprice[11] + "','" + sum + "')");
       }
       //int l = st.executeUpdate("insert into dorder1 (date, fullname, email, phone, address, i1, i2, total) values ('" + today + "','" + session.getAttribute("fullName") + "','" + session.getAttribute("emailId") + "','" + session.getAttribute("phoneno") + "','" + session.getAttribute("addressdetails") + "','" + iname[0]+"["+qty[0]+"] = "+iprice[0] + "','" + iname[1]+"["+qty[1]+"] = "+iprice[1] + "','" + sum + "')");
       
        //float count = 0;
       // if (sports != null) {
           // for (int i = 0; i < sports.length; i++) {
               // st.executeQuery("select item_name,price_rupee from items where id=" + sports[i] + "");
               // rs = st.getResultSet();
                //while (rs.next()) {
                   // String nameVal = rs.getString("item_name");
                    //int catVal = rs.getInt("price_rupee");
    %><!--  <input type='hidden' id='cost' value="<%//=catVal%>">-->
    <%
                //arraylist.add(catVal);
                //sum += catVal;
                //int q = 1;
                //count++;
                //out.println(
                        //"<tr><td>" + nameVal + "</td><td>" + q + "</td><td><div id='total1'>" + catVal + "</div></td></tr>");
                //count += 1;
            //}
        //}
         
        out.print("<tr><td style='font-size:30px;'>Total</td><td style='font-size:30px;'>" + count + "</td><td style='font-size:30px;'>" + sum + "</td></tr>");
        out.print("<tr></tr><tr colspan='3'><td colspan='3'><div><a href=thank.jsp><center><input type='button' style='width:20%;background-color:red;border-color:white;color:white;height:50px; border-radius:12px' class='w3-xlarge w3-btn w3-block w3-black' value='Proceed to Checkout'></center></div></td></tr>");
    } else {
    %>
<tr><td></td></tr></td></tr>

<% }%>
</table></center>

            <br>
            <h4>Payment Status: Due (Pay on Delivery Time)</h4>
            <h4>Payment Mode: Cash on Delivery</h4>
            <h4>Order: No Cancellation of Order Accepted.</h4>
        </div>

<div class="body-section">
            <p>Created by @rittik 
                <a href="https://www.foodorder.com/" class="float-right"><label><font color="black"><b>Link:  &nbsp&nbsp</b></font></label>www.foodorder.com</a>
            </p>
        </div>      
    </div>      

</body>

</html>

<%
    }

%>