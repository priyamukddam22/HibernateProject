<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
<h3>Update Student Form</h3></center>
<div class="container-fluid">
<div class="row">
	<div class="col col-lg-2">
	</div>
	<div class="col col-lg-8">
	<form:form action="/crudmvcproject/update" method="post">
		<div class="form-group">
			<label>First Name</label>
			<form:input path="firstname" class="form-control"/>
		</div>
		<div class="form-group">
			<label>last Name</label>
			<form:input path="lastname" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Email</label>
			<form:input path="email" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Password</label>
			<form:input path="password" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Phone</label>
			<form:input path="phone" class="form-control"/>
		</div>
		<div class=form-group">
			<label>Gender</label>
		</div>
		<div class="form-check">
			<form:radiobutton class="form-check-input" value="male" path="gender"/>&nbsp;&nbsp;&nbsp;<label>Male </label><br>
			<form:radiobutton class="form-check-input" value="female" path="gender"/>&nbsp;&nbsp;&nbsp;<label>Female</label>
		</div>
		<div class="form-group">
			<button class="btn btn-primary" type="submit">Update</button>
		</div>
	</form:form>
	</div>
	<div class="col col-lg-2">
	</div>
</div>
	
</div>
</body>
</html>