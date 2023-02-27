<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>
#box {
	background: #497f98;
	margin: 50px auto;
	width: 40%;
	text-align: center;
	border-radius:10px;
}

body {
	background-color: #FAEBD7;
	color: red;
	font-weight: bold;
	font-family: arial;
	font-size: 25px;
	border: 2px solid green;
	padding: 20px;
	margin: 20px 70px 70px;
}
</style>
</head>
<body>
	<c:set var="emp" value="${emp}"></c:set>


	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<h1>Registration Form</h1>
				<br> <br>

				<form action="/SpringMVCHibernteIntegration/update" method="post">
					<div class="form-group">
						ID:-<input type="text" name="id" placeholder="Enter fullname"
							id="fullname" value="${emp.id}"><br> <small
							id="chkfullname" style="color: red"></small> <br>
					</div>
					<div class="form-group">
						Full Name:-<input type="text" name="fullname"
							placeholder="Enter fullname" id="fullname"
							value="${emp.fullname}"><br> <small id="chkfullname"
							style="color: red"></small> <br>
					</div>
					<div class="form-group">
						Email Id :-<input type="text" name="email" id="email"
							placeholder="Enter Email" value="${emp.email}"><br>
						<br>

					</div>

					<div class="form-group">
						Password:-<input type="password" name="password" id="password"
							value="${emp.password}" placeholder="Enter password"><br>
						<br>

					</div>


					<div class="form-group">
						Phone No :-<input type="text" name="phone" id="phone"
							placeholder="Enter phoneNo" value="${emp.phone}"><br>
						<br>

					</div>


					<div class="form-group">
						<label>Address:-</label> <input type="text" class="form-control"
							name="address" id="address" placeholder="Enter Adderess Here"
							value="${emp.address}">

					</div>

					<div class="form-group">
						<label>Date of Birth:</label> <input type="text" name="dob"
							value="${emp.dob}" id="date" placeholder="dd/mm/yyyy"><br>
						<br>

					</div>


					<div class="form-group">
						<label>Select Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" class="form-check-input" value="Male" name="gender"
							id="gender" <c:if test="${emp.gender=='Male'}">checked</c:if>>Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" class="form-check-input" value="Female"
							name="gender" id="gender"
							<c:if test="${emp.gender=='Female'}">checked</c:if>>Female
					</div>


					<div class="form-group">
						<label>Select City:</label> <select class="form-control"
							name="city" value="city">
							<option>Select city</option>
							<option <c:if test="${emp.city=='Nagpur'}">selected</c:if>>Nagpur</option>
							<option <c:if test="${emp.city=='Pune'}">selected</c:if>>Pune</option>
							<option <c:if test="${emp.city=='Nashik'}">selected</c:if>>Nashik</option>
							<option <c:if test="${emp.city=='Hyderabad'}">selected</c:if>>Hyderabad</option>
							<option <c:if test="${emp.city=='Mumbai'}">selected</c:if>>Mumbai</option>
						</select><br> <br>
					</div>

					<button type="submit" class="btn btn-danger" style="text: center">Submit</button>
				</form>
				<div class="col-md-3"></div>
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