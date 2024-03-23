
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
        <head>
            <title>Item Management page</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        <body>
             <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #34b233">
                    <div>
                     <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" style="width:26%" height=65 width=23>
                        <a href="http://www.nacreservices.com" class="navbar-brand"> <font color="white" size=4%><b> Item Management</b></font></a>
                    </div>

                    <ul class="navbar-nav">
                         
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link"><font size=3><b>Items</b></font></a></li>
                        <li><a href="index.jsp" class="nav-link"><font size=3><b>User login</b></font></a></li>
                        <li><a href="register.jsp" class="nav-link"><font size=3><b>Registration</b></font></a></li>
                        <li><a href="adminLogin.jsp" class="nav-link"><font size=3><b>Log out</b></font></a></li>
                         <li><a href="#" class="nav-link"><font size=3><b>About us</b></font></a></li>
                        
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
               

                <div class="container">
                    <h3 class="text-center"><b><i>List of Items</i></b></h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
     New Items</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Food Name</th>
                                <th>Price</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach var="item" items="${listItem}">

                                <tr>
                                    <td>
                                        <c:out value="${item.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${item.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${item.price}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${item.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${item.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>
                        <tr><td>NV-PFKF101</td> <td>Pan Fried Katla Fish</td> <td>200</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>NV-OTC102</td> <td>Olive Tender Chicken</td> <td>270</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>NV-OIBS103</td> <td>Octopus in Blackbean Sauce</td> <td>350</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>DS-GIC104</td> <td>Gelato Ice Cream</td> <td>190</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>NV-PPF105</td> <td>Panned Paprika Fish</td> <td>200</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                        <tr><td>NV-PFKF106</td> <td>Pan Fried Katla Fish</td> <td>200</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>NV-OTC107</td> <td>Olive Tender Chicken</td> <td>270</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>NV-OIBS108</td> <td>Octopus in Blackbean Sauce</td> <td>350</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>DS-GIC109</td> <td>Gelato Ice Cream</td> <td>190</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                         <tr><td>NV-PPF110</td> <td>Panned Paprika Fish</td> <td>200</td> <td><a href='' target='_blank'>
                        <input type='button' style='padding-left:10px;padding-top:10px;padding-right:10px;padding-bottom:10px;margin-left:10px;margin-top:10px;margin-right:10px;margin-bottom:10px;background-color:#1b90bb;color:#FFFFFF;border-left-width:1px;border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-color:#d5d5d5;border-radius:5px;cursor:pointer' value='Edit' onMouseOver=this.style.backgroundColor='#FFFFFF';this.style.color='#1b90bb';this.style.borderColor='#d5d5d5' onMouseOut=this.style.backgroundColor='#1b90bb';this.style.color='#FFFFFF';this.style.borderColor='#d5d5d5' />
                        </a></td> </tr>
                    </table>
                </div>
            </div>
        </body>
        <br><br><br>
        <footer>
     <div class="jumbotron text-center" style="margin-bottom:0">
        <p class="">Created by RITTIK_Dutta@2000</p>
         <br><br>
        <center>
        <table cellspacing= 5 cellpadding=5>
        <tr><td></td><td></td><td></td> <td>English(USA)</td> <td></td><td></td><td></td> <td>Português</td> <td></td><td></td><td></td> <td></td><td></td><td></td> <td>French</td> <td></td><td></td><td></td><td></td> <td>español</td>
        <td></td><td></td><td></td> <td>India</td> <td></td><td></td><td></td> <td><img src="https://tse1.mm.bing.net/th?id=OIP.kXjGyUHGaXmmMvl_DW8g3gHaHa&pid=Api&P=0&w=170&h=170" class="rounded" style="width:90%" height=15 width=50></td></tr>
        </table>
        </center>
    </div>
 </footer>
</html>

