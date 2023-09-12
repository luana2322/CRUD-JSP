<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>
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
    <h1>CategoryList</h1>
    <h2 style="text-align: center;">
      <a href="categories/add">Add new category</a>
    <a href="categories/addproduct">Add new product</a>
  </h2>
    

    <table>
      <tr>
        <td>CategoryId</td>
        <td>CategoryName</td>
        <td>Description</td>
        <td>Action</td>
      </tr>

      <c:forEach var="category" items="${catgories}" >
        <tr>
          <td>${category.getcategoryId() }</td>
          <td>${category.getcategoryName() }</td>
          <td>${category.getDescription()}</td>
          <td>
            <a href="products/getProductsByCategoryID/${category.getcategoryId()}">Get Products</a>
            <a href="">Delete CategoryId</a>
              </td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
