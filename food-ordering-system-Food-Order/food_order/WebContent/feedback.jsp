<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feedback page</title>    
<style>    
* {    
  box-sizing: border-box;    
}    
    
input[type=text], select, textarea {    
  width: 100%;    
  padding: 12px;    
  border: 1px solid rgb(70, 68, 68);    
  border-radius: 4px;    
  resize: vertical;    
}    
input[type=email], select, textarea {    
  width: 100%;    
  padding: 12px;    
  border: 1px solid rgb(70, 68, 68);    
  border-radius: 4px;    
  resize: vertical;    
}    
    
label {    
  padding: 12px 12px 12px 0;    
  display: inline-block;    
}    
    
input[type=submit] {    
  background-color: green;    
  color: white;    
  padding: 12px 35px;   
  border:  2px solid #4CAF50;    
  border-radius: 12px;    
  cursor: pointer;    
  float: center;    
}    
    
input[type=submit]:hover {    
  background-color: rgb(37, 116, 161);    
}    
    
.container {    
  border-radius: 5px;    
  background-color: #f2f2f2;    
  padding: 20px;    
}    
    
.col-25 {    
  float: left;    
  width: 25%;    
  margin-top: 6px;    
}    
    
.col-75 {    
  float: left;    
  width: 75%;    
  margin-top: 6px;    
}    
    
/* Clear floats after the columns */    
.row:after {    
  content: "";    
  display: table;    
  clear: both;    
}    
    
/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */    
</style> 
<script>
function validateForm() {
  var x = document.forms["myForm"]["firstname"].value;
  if (x == "" || x == null) {
    alert("First Name must be filled out");
    return false;
  }
  var x1 = document.forms["myForm"]["lastname"].value;
  if (x1 == "" || x1 == null) {
    alert(" last Name must be filled out");
    return false;
  } var x2 = document.forms["myForm"]["mailid"].value;
  if (x2 == "" || x2 == null) {
	    alert("Email must be filled out");
	    return false;
	  }
  var x3 = document.forms["myForm"]["subject"].value;
  if (x3 == "" || x3 == null) {
    alert("Feedback must be filled out");
    return false;
  }
  var x4 = document.forms["myForm"]["country"].value;
  if (x4 == "" || x4 == null) {
    alert("country must be filled out");
    return false;
  }
}
</script>   
</head>

<body>
<header style='background-color: green; padding: 40;'>
<table><tr>
<td></td><td></td><td></td><td>
<img src="https://image.freepik.com/free-vector/online-food-order-logo-icon_61778-45.jpg" class="rounded" width=65 , height=60></td><td></td><td></td>
  <td><h1><font color="white" size="5">Feedback</font></h1></td>
  <td></td><td></td> <td></td><td><td><td></td><td></td> <td></td><td><td></td> 
  <td><a href="index.jsp" class="nav-link"><font color="#b3e6b5" size="3"><b><label for="login">Login Page</label></b></font></a></td> 
  <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td>
  <td><a href="aboutus.jsp" class="nav-link"><font color="#b3e6b5" size="3"><b><label for="contact">Contact us</label></b></font></a></td> 
  </tr></table>
</header>  
<div class="container">    
  <form name="myForm" action="fcheck.jsp" onsubmit="return validateForm()" method="post" required>    
    <div class="row">    
      <div class="col-25">    
        <label for="fname">First Name</label>    
      </div>    
      <div class="col-75">    
        <input type="text" id="fname" name="firstname" placeholder="Your name.." >    
      </div>    
    </div>    
    <div class="row">    
      <div class="col-25">    
        <label for="lname">Last Name</label>    
      </div>    
      <div class="col-75">    
        <input type="text" id="lname" name="lastname" placeholder="Your last name.." >    
      </div>    
    </div>    
    <div class="row">    
        <div class="col-25">    
          <label for="email">Mail Id</label>    
        </div>    
        <div class="col-75">    
          <input type="email" id="email" name="mailid" placeholder="Your mail id.." >    
        </div>    
      </div>    
    <div class="row">    
      <div class="col-25">    
        <label for="country">Country</label>    
      </div>    
      <div class="col-75">    
        <select id="country" name="country">    
            <option value="none">Select Country</option>    
          <option value="australia">Australia</option>    
          <option value="canada">Canada</option>    
          <option value="usa">USA</option>    
          <option value="russia">Russia</option>    
          <option value="japan">Japan</option>    
          <option value="india">India</option>    
          <option value="china">China</option>    
        </select>    
      </div>    
    </div>    
    <div class="row">    
      <div class="col-25">    
        <label for="feed_back">Feed Back</label>    
      </div>    
      <div class="col-75">    
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px" ></textarea>    
      </div>    
    </div>    
    <div class="row">  
    <br> 
    <br> 
    <center><input type="submit"; class="btn btn-success"; value="Submit"></center>
    <br>
    </div>    
  </form>    
</div>    
    
</body>
</html>