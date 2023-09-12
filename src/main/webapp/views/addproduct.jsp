<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<h1>ADD PRODUCT</h1>

	<form action="../products/addproduct" method="post" >
<!-- modelAttribute="product" -->
		<h2>
			ProductId<input type="text" name="productid" />
		</h2>
		<h2>
			Productname<input type="text" name="productname" />
		</h2>
		<h2>
			Price<input type="text" name="price" />
		</h2>
		<h2>
			Description<input type="text" name="description" />
		</h2>
		<h2>
			CategoryId <select name="categoryid" >
			<c:forEach var="category" items="${category}">
			<option>${category.getcategoryId()}</option>
			</c:forEach>
			</select>
		</h2>
		<h2>
			<button type="submit">Add product</button>
		</h2>



	</form>
</body>
</html>
