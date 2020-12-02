<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<title>ToDo</title>
</head>
<body>


	<div class="container mt-3">
		<h1>Welcome to ToDo Manager</h1>
		<div class="row mt-4">
			<div class="col-md-2">
				<div class="list-group">
					<a href='<c:url value = '/home'> </c:url>'
						class="list-group-item list-group-item-action active">Menu</a> <a
						href='<c:url value = '/add'></c:url>'
						class="list-group-item list-group-item-action">ADD TODO</a> <a
						href='<c:url value = '/viewtodo'></c:url>'
						class="list-group-item list-group-item-action">View TODO</a>

				</div>
			</div>

			<div class="col-md-10">

				<c:if test="${page=='home'}">
					<h1 class="text-center">Home Page</h1>
				</c:if>

				<c:if test="${page=='viewtodo'}">
					<h1 class="text-center">All TODOS</h1>
				</c:if>

				<c:if test="${page == 'add'}">
					<h1 class="text-center">Add TODO</h1>
					<br>
					<form:form action = "saveTodo" method = "post" modelAttribute = "todo">
						
						<div class = "form-group">
							<form:input path="todoTitle" cssClass = "form-control" placeholder="Enter Your Todo Title"/>	
						</div>
						
						<div class = "form-group">
							<form:textarea path="todoContent" cssClass = "form-control" placeholder = "enter Your Todo Content" cssStyle ="height:300px" />
						</div>
						
						<div class = "container text-center">
							<button class = "btn btn-outline-success">Add Todo</button>
						</div>	
					</form:form>
				</c:if>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

	<!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
</body>
</html>