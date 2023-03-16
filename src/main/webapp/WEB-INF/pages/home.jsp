<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title><c:out value="${page }"></c:out></title>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-primary">
			<a href='<c:url value='/home'></c:url>' class="navbar-brand" href="#">To-Do
				List</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a
						href='<c:url value='/add'></c:url>' class="nav-link" href="#">Add
							To-Do <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a href='<c:url value='/home'></c:url>' F
						class="nav-link" href="#">View To-Do</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0 ">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0 text-light "
						type="submit">Search</button>
				</form>
			</div>
		</nav>

	</div>


	<div class="container mt-3 ">

		<h1 class="text-center" style="color:skyblue">Welcome to TODO Manager</h1>

		<c:if test="${not empty msg }">

			<div class="alert alert-success">

				<b><c:out value="${msg }" /></b>
			</div>


		</c:if>

		<div class="col-md-12 mt-4">
			<c:if test="${page=='home'}">

				<h1 class="text-center" style="color:skyblue">To-Do List</h1>


				<c:forEach items="${todos }" var="t">

					<div class="container mt-4">
						<div class="card">
							<div class="car-body">

								<h3>
									<c:out value="${t.todoTitle }"></c:out>
								</h3>
								<p>
									<c:out value="${t.todoContent }"></c:out>
								</p>


							</div>

						</div>



					</div>
				</c:forEach>


			</c:if>

			<c:if test="${page=='add' }">
				<h1 class="text-center">Add TODO</h1>
				<br>

				<form:form action="saveTodo" method="post" modelAttribute="todo">

					<div class="form-group">
						<form:input path="todoTitle" cssClass="form-control"
							placeholder="Enter your todo title"></form:input>

					</div>


					<div class="form-group">

						<form:textarea path="todoContent" cssClass="form-control"
							placeholder="Enter your todo content" cssStyle="height:300px;" />


						<div class="container text-center">

							<button class="btn btn-outline-success mt-2">Add Todo</button>

						</div>

					</div>



				</form:form>







			</c:if>


		</div>

	</div>

	</div>





	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>