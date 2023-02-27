<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<mvc:resources mapping = "/css/**" location = "/css/" />

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<body>
<center><h3>Welcome to Login Form</h3></center>
${msg}
 <div class="container-fluid">
 <div class="row">
  <div class="col col-lg-3">
  </div>
  <div class="col col-lg-6">
  <form action="dologin" method="post">
   <div class="form-group">
    <label>User Name </label>
    <input type="text" name="email" class="form-control"> 
   </div>
   <div class="form-group">
    <label>Password </label>
    <input type="password" name="password" class="form-control"> 
   </div>
   <div class="form-group">
    <button class="btn btn-primary" type="submit">Login</button>
   </div>
  </form>
  
  </div>
  <div class="col col-lg-3">
  </div>
 </div>
  
 </div>
</body>
</body>
</html>