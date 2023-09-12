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
<style>
* {
	text-align: center;
}
</style>
<body>
	<h1>Add new category</h1>

	<form action="add/addnew" method="post" modelAttribute="category">
		<h2>
			CategoryId
			<input type="text" placeholder="Enter CategoryId"
				 name="CategoryId"/>
		</h2>
		<h2>
			CategoryName
			<input type="text" placeholder="Enter CategoryName"
				  name="CategoryName"/>
		</h2>
		<h2>
			Description
			<input type="text" placeholder="Enter Description"
				 name="description"/>
		</h2>
		

		<button type="submit">ADD</button>
	</form>
</body>
</html>
