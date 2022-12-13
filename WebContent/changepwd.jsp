<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" href="lib/css/style.css">
<link rel="stylesheet" href="lib/css/qstyletop.css">
<script type="text/javascript" src="lib/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="form">
    <div class="container">
    <h2>Change Password</h2>
    <hr />
    <div class="clearfix"></div>
    <div class="row">       
        <div class="col-md-offset-3 col-md-6">
        <form action="savePwd.jsp" method="post">
            <div class="form-group">
            <label>Current Password</label>
            <input type="password" class="form-control" name="currentPwd" >
            </div>
            <div class="form-group">
            <label>New Password</label>
            <input type="password" class="form-control" name="newPwd">
            </div>
            <div class="form-group">
            <label>Confirm Password</label>
            <input type="password" class="form-control" name="rePwd">
            </div>
            <input id="fsub" type="submit" name="submit" value="Save" class="btn btn-primary">
            <input class="cancel btn btn-primary" type="reset" name="cancel" value="Cancel">
        </form>
         <% if(request.getAttribute("chnagePwdMsg")!=null) {%>
        <script type="text/javascript">
        alert("<%=request.getAttribute("chnagePwdMsg")%>");
        </script>
          <%}%>
        </div>
        </div>
    </div>
    
    </div>    

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>