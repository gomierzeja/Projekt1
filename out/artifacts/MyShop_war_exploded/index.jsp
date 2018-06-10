<%@ page import="pl.javastart.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Gosia
  Date: 07.06.2018
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html style="background-color: #FFFFCC">
  <head>
    <title>My Shop</title>
  </head>
  <body style="font-family: sans-serif;">
  <div style="text-align: center; "><img src="http://pluspng.com/img-png/flipkart-logo-vector-png-courts-logo-vector-shopify-logo-vector-722.png"</div>
  <div style="text-align: center; color: #669900;"><h1>Welcome to SHOP® online!</h1></div>
  <div style="text-align: center; color: #999966"><h4>To complete the shopping list, add some names and prices below.</h4></div>
  <div style="text-align: center; color: #666633"><h2>Shopping list:</h2></div>

    <div style="text-align: center;">
      <form method="post" action="table">
<table>
  <tr>
    <input type="text" name="product1" placeholder="Product">
    <input type="number" name="price1" placeholder="Price"><br>
  </tr>
  <tr>
    <input type="text" name="product2" placeholder="Product">
    <input type="number" name="price2" placeholder="Price"><br>
  </tr>
  <tr>
    <input type="text" name="product3" placeholder="Product">
    <input type="number" name="price3" placeholder="Price"><br>
  </tr>
  <tr>
    <input type="text" name="product4" placeholder="Product">
    <input type="number" name="price4" placeholder="Price"><br>
  </tr>
</table>
        <h5> </h5>
        <input type="submit" value="Confirm">





    </form></div>


  </body>
</html>
