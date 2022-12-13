<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" href="lib/css/style.css">
<link rel="stylesheet" href="lib/css/qstyletop.css">
<script type="text/javascript" src="lib/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
<body> 
<%-- <jsp:include page="header.jsp"></jsp:include>
 --%><div class="form">
    <div class="container">
    <h2>Forget Password</h2>
    <hr />
    
    <div class="clearfix"></div>
    <div class="row">       
        <div class="col-md-offset-3 col-md-6">
        <form action="saveForget.jsp" method="post">
            <div class="form-group">
            <label>Email Id</label>
            <input type="text" class="form-control" name="email" >
            </div>
            <div class="form-group">
            <label>Contact No.</label>
            <input type="text" class="form-control" name="contact">
            </div>
           
            <input id="fsub" type="submit" name="submit" value="Search" class="btn btn-primary">
        </form>
          <% if(request.getAttribute("forgetPwdMsg")!=null) {%>
        <script type="text/javascript">
        alert("<%=request.getAttribute("forgetPwdMsg")%>");
        </script>
          <%}%> 
        </div>
        </div>
    </div>
    
    </div>    

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>