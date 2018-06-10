<%@ page import="java.util.List" %>
<%@ page import="pl.javastart.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Gosia
  Date: 09.06.2018
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products");
%>
<html style="background-color: #FFFFCC">
<head>
    <title>Bill</title>
</head>
<body style="font-family: sans-serif;">
<div style="text-align: center; "><img src="http://pluspng.com/img-png/flipkart-logo-vector-png-courts-logo-vector-shopify-logo-vector-722.png"</div>
<div style="text-align: center; color: #669900" style="font-family: sans-serif;"><h1>SHOP® online</h1></div>
<div style="text-align: center; color: #666633" style="font-family: sans-serif;"><h1>Summary</h1></div>
<div style="text-align: center; color: #669900" style="font-family: sans-serif;"><h3>Shopping list:</h3></div>


<table align="center" >
    <tr style="font-family: sans-serif;">
        <th scope="col" style= "color: #666633">L.P.</th>
        <th scope="col" style= "color: #666633">Product</th>
        <th scope="col" style= "color: #666633">Price</th>
    </tr>
    <tbody style= "color: #666633; font-family: sans-serif;">
    <%
        for (int i = 0; i< products.size(); i++){
    %>
    <tr>
        <td><%=i+1%></td> <td><%=products.get(i).getName()%></td> <td><%=products.get(i).getPrice()%></td>
    </tr>
    <%
        }
    %>
    </tbody>
    </table>
    </body>

<table align="center" >

    <tr><h1></h1></tr>
    <tr style="font-family: sans-serif;">
        <td><h2 style="color: #669900">Total price:</h2></td>
        <td><h2 style= "color: #666633"><%=request.getAttribute("summary")%></h2></td>
    </tr>
    <tr style="font-family: sans-serif;">
        <td><h2 style="text-align: center; color: #669900">The average price of a product:</h2></td>
        <td><h2 style="text-align: center; color: #666633"><%=request.getAttribute("avg")%></h2></td>
    </tr>
</table>


<div style="text-align: center; font-family: sans-serif;"><a href="/index.jsp">Come back to SHOP® online </a></div>

</html>
