<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <style type="text/css">
    table,
    th,
    td {
      border: 1px solid black;
      border-collapse: collapse;
    }
    a {
      display: inline-block;
      padding: 0.5em 1em;
      background-color: #008cba;
      color: #fff;
      text-align: center;
      text-decoration: none;
      font-size: 1em;
      border-radius: 4px;
      border: none;
      cursor: pointer;
    }
    a:hover {
      background-color: #0077b5;
    }
  </style>
  <body>
    <h1>ProductListById</h1>
    <table>
      <tr>
        <td>ProductId</td>
        <td>Productname</td>
        <td>Price</td>
        <td>Description</td>
        <td>CategoryId</td>
        <td>Action</td>
      </tr>
      <c:forEach var="product" items="${products}">
        <tr>
          <td>${product.getProductid() }</td>
          <td>${product.getProductname() }</td>
          <td>${product.getPrice() }</td>
          <td>${product.getDescription() }</td>
          <td>${product.getCategoryid() }</td>
          <td>
            <a href="deleteProductsByproductid/${product.getProductid()}"
              >Delete Products</a
            >
            <a href="/products/update/${product.getProductid()}">Update product</a>
          </td>
        </tr>
      </c:forEach>
    </table>
    <a href="../../../categories">Back to Category</a>
  </body>
</html>
