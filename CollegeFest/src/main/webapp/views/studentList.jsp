<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Students</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<div class='container'>
		<h3>Student List</h3>
	
		<!-- Add a button -->
		<a href="/api/students/showformForAdd" class="btn btn-primary btn-sm mb-3 mx-auto"> Add Student </a>
		<a href="/api/students/logout" class="btn btn-primary btn-sm mb-3 mx-auto">Logout</a>

		<table class="table table-bordered table-striped t1">
			<thead class="thead-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Students}" var="tempStudent">
					<tr>
						<td><c:out value="${tempStudent.fname}" /></td>
						<td><c:out value="${tempStudent.lname}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>

						<td><a
							href="/api/students/showformForUpdate?studentId=${tempStudent.id }" class="btn btn-info btn-sm">Update</a>
							<a href="/api/students/deleteStudentById?id=${tempStudent.id }" class="btn btn-danger btn-sm" onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>