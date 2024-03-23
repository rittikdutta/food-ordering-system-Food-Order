<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>About/Contact Us</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #00ab41;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>About Us Page</h1>
  <p>Our mission is to increase the popularity of our food ordering system " FOOD ORDER " </p>
  <p>Our food ordering sytem is very efficient as it can order food with minimum click.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <a href="https://ibb.co/S3phQw9"><img src="https://i.ibb.co/S3phQw9/Whats-App-Image-2022-07-05-at-12-29-23-PM.jpg" alt="Whats-App-Image-2022-07-05-at-12-29-23-PM" border="0"></a>
      <div class="container">
        <h2>Rittik Dutta</h2>
        <p class="title">Founder & Coder</p>
        <p>Hi, I am Rittik I am the founder & coder of this system, For more updates you can follow me on the given Links.  </p>
        <p><b>Facebook: </b><a href="https://www.facebook.com/shaneroy.rishiroy">https://www.facebook.com/rittikdutta</a></p>
        <p><b>Instagram: </b><a href="https://www.instagram.com/rittik__dutta/">https://www.instagram.com/rittik__dutta/</a></p>
        <p><b>Gmail: </b>rittik2000dutta@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <a href="https://ibb.co/NjBSmCh"><img src="https://i.ibb.co/NjBSmCh/Whats-App-Image-2022-07-05-at-12-47-59-PM.jpg" alt="Whats-App-Image-2022-07-05-at-12-47-59-PM" border="0"></a>
      <div class="container">
        <h2>Sneha Bhowmick</h2>
        <p class="title">CEO & Art Director</p>
        <p>Hi, I am sneha and i am the ceo and art director of this system , For more updares follow me on the given Links. </p>
        <p><b>Facebook: </b><a href="https://www.facebook.com/profile.php?id=2100012713897010">https://www.facebook.com/id=10007271</a></p>
        <p><b>Instagram: </b><a href="https://www.instagram.com/xritxaam1/">https://www.instagram.com/rittik/</a></p>
        <p><b>Gmail: </b>sbofficial@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <a href="https://ibb.co/0cYMYTV"><img src="https://i.ibb.co/0cYMYTV/Whats-App-Image-2022-07-05-at-12-39-18-PM.jpg" alt="Whats-App-Image-2022-07-05-at-12-39-18-PM" border="0"></a>
      <div class="container">
        <h2>Ritam Dutta</h2>
        <p class="title">Designer</p>
        <p>Hi, I am ritam and i am the Designer and director of this system , For more updares follow me on the given Links. </p>
        <p><b>Facebook: </b><a href="https://www.facebook.com/profile.php?id=100072713897696">https://www.facebook.com/id=10007271</a></p>
        <p><b>Instagram: </b><a href="https://www.instagram.com/xritxaam/">https://www.instagram.com/xritxaam/</a></p>
        <p><b>Gmail: </b>ritam2006dutta@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
