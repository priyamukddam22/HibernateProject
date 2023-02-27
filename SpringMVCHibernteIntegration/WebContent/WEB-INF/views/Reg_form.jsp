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

<title>Login page!</title>
<style>

#box{
background : #497f98;
margin : 50px auto;
width : 40%;
text-align : center;
border -radius : 10px;
}


body {
	background-color: #FAEBD7;
	color: red;
	font-weight:bold;
	font-family: arial;
	font-size: 25px;
	border: 2px solid green;
	padding:20px;
	margin: 20px 70px 70px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<h1>Registration Form</h1>
				<br>
				<br>
			
				<form  action="register" method="post" >
					<div class="form-group">
						Full Name:-<input type="text" name="fullname" placeholder="Enter fullname"id="fullname"><br>
						<small id="chkfullname" style="color: red"></small>
						<br>
					</div>
					<div class="form-group">
						Email Id :-<input type="text" name="email" id="email"placeholder="Enter Email"><br>
						<br>
						
					</div>
					
					<div class="form-group">
						Password:-<input type="password" name="password" id="password" placeholder="Enter password"><br>
						<br>
						
					</div>
					

					<div class="form-group">
						Phone No :-<input type="text" name="phone" id="phone"
							placeholder="Enter phoneNo"><br>
						<br>
						
					</div>


					<div class="form-group">
						<label>Address:-</label> <input type="text" class="form-control"
							name="address" id="address" placeholder="Enter Adderess Here">
							
					</div>

					<div class="form-group">
						<label>Date of Birth:</label> <input type="text" name="dob"
							 id="date" placeholder="dd/mm/yyyy"><br><br>
							 
					</div>


					<div class="form-group">
						<label>Select Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" class="form-check-input" value="Male" name="gender"
							id="gender">Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="radio" class="form-check-input" value="Female"
							name="gender" id="gender">Female
						
					</div>


					<div class="form-group">
						<label>Select City:</label> <select class="form-control" name="city" value="city">
						
							<option>Select city</option>
							<option>Nagpur</option>
							<option>Pune</option>
							<option>Nashik</option>
							<option>Hyderabad</option>
							<option>Mumbai</option>
						</select><br>
						<br>
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