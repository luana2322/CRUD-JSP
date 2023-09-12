<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <style>
    * {
      text-align: center;
    }
  </style>
  <body>
    <h1>Update product ${products.getProductid()}</h1>

    <form
      action="/products/update/updateproduct"
      method="post"
      modelAttribute="product"
    >
      <h2>
        ProductId<input
          type="text"
          name="productid"
          value="${products.getProductid()}"
          readonly
        />
      </h2>
      <h2>
        Productname<input
          type="text"
          name="productname"
          value="${products.getProductname()}"
        />
      </h2>
      <h2>
        Price<input type="text" name="price" value="${products.getPrice()}" />
      </h2>
      <h2>
        Description<input
          type="text"
          name="description"
          value="${products.getDescription()}"
        />
      </h2>
      <h2>
        CategoryId<input
          type="text"
          name="categoryid"
          value="${products.getCategoryid()}"
        />
      </h2>
      <h2><button type="submit">Save</button></h2>
    </form>
  </body>
</html>
