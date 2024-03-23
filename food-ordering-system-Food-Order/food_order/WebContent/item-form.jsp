<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Add new Item</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
                  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
                  crossorigin="anonymous">
        </head>

        <html>

        <head>
            <title>Add new Items Page</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #34b233">
                    <div>
                    <img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" style="width:35%" height=65 width=33>
                        <a href="#" class="navbar-brand"><b>Add Items</b></a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link"><font size=3><b>Items</b></font></a></li>
                        <li><a href="adminLogin.jsp" class="nav-link"><font size=3><b>Log out</b></font></a></li>
                        <li><a href="#" class="nav-link"><font size=3><b>About us</b></font></a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${item != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${item == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${item != null}">
                                   <b><i> Edit Item</i></b>
                                </c:if>
                                <c:if test="${item == null}">
                                   <b><i> Add New Item</i> </b>
                                   
                                </c:if>
                            </h2>
                        </caption>
                         
                         <br><br>
                        <fieldset class="form-group">
                            <label>Item Id :</label> <input type="text" value="<c:out value='${item.id}' />" class="form-control" name="id" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Item Name :</label> <input type="text" value="<c:out value='${item.name}' />" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Item  Price :</label> <input type="text" value="<c:out value='${item.price}' />" class="form-control" name="rupee">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>