<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>  
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initialscale=1">
<link rel="stylesheet" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" href="lib/css/style.css">
<script type="text/javascript" src="lib/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container" id="body">
  <div class="row">
    <div class="col-sm-12 text-center">
      <h1 id="login-text">Login</h1>
    </div>
    <div class="col-sm-offset-2 col-sm-8 login-register-box">
      <div class="col-sm-offset-2 col-sm-8">
        <form action="check.jsp" method="post" url="/">
          <div class="form-group" id="number">
            <div class="input-group"> <span class="input-group-addon"> <span class="glyphicon glyphicon-phone"></span> </span>
              <input class="form-control" data-val="true" data-val-length="The field Mobile Number must be a string with a maximum length of 10." data-val-length-max="10" data-val-required="The Mobile Number field is required." id="MobileNumber" maxlength="10" name="MobileNumber" placeholder="Mobile number" type="text" value="" />
            </div>
            <span class="field-validation-valid" data-valmsg-for="MobileNumber" data-valmsg-replace="true"></span> </div>
          <div class="form-group">
            <div class="input-group"> <span class="input-group-addon"> <span class="glyphicon glyphicon-lock"></span> </span>
              <input class="form-control" data-val="true" data-val-required="The Password field is required." id="Password" name="Password" placeholder="Password" type="password" value="" />
            </div>
            <span class="field-validation-valid" data-valmsg-for="Password" data-valmsg-replace="true"></span> </div>
          <div class="clearfix"></div>
          <input type="submit" class="btn btn-block btn-fp" id="login-btn" value="Login" />
          <div class="clearfix"></div>
          <a href="forgetPassword.jsp" class="pull-left" data-target="#forgetPassword">Forgot password?</a>
          <div class="clearfix"></div>
        </form>
        
      </div>
       
      <div class="clearfix"></div>
    </div>
  </div>
</div>
</body>
</html>