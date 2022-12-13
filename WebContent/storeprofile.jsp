<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<!-------------------------------form start-------------------------->     
<%User user = (User)session.getAttribute("user"); %>   
<div class="form">
    <div class="container">
    <h2>My Profile</h2>
    <hr />
    <div class="clearfix"></div>
    <div class="row">       
        <div class="col-md-offset-3 col-md-6">
        <form action="saveProfile.jsp" method="post">
            <div class="form-group">
            <label>Store Name</label>
            <input type="text" class="form-control" name="storename" value="<%= user.getStoreName()%>" disabled>
            </div>
            <div class="form-group">
            <label>Owner Name</label>
            <input type="text" class="form-control" name="ownername" value="<%= user.getOwnerName()%>" disabled>
            </div>
            <div class="form-group">
            <label>Store Address</label>
                <textarea id="sadd" class="form-control" name="storeadd" disabled><%= user.getStorAddress()%></textarea>
            </div>
            <div class="form-group">
            <label>Contact Number</label>
            <input id="scon" type="text" class="form-control" name="contactnum" value="<%= user.getContactNo()%>" disabled>
            </div>
            <div class="form-group">
            <label>Email id</label>
            <input id="semail" type="email" class="form-control" name="email" value="<%= user.getEmailId()%>" disabled>
            </div>
            <input class="edit btn btn-primary" type="button" name="edit" value="Edit">
            <input id="fsub" type="submit" name="submit" value="Save" class="btn btn-primary" disabled>
            <input class="cancel btn btn-primary" type="button" name="cancel" value="Cancel" disabled>
        </form>
        
        </div>
        </div>
    </div>
    
    </div>    
    <script type="text/javascript">
    $(document).ready(function(){
    	$(".edit").click(function(){
    		registerPage();
    		$(this).attr("disabled", "disabled");
    		$("#fsub").removeAttr("disabled");
    		$(".cancel").removeAttr("disabled");
    		});	
    	$(".cancel").click(function(){
    		$("#fsub").attr("disabled", "disabled");
    		$(".edit").removeAttr("disabled");
    		$(this).attr("disabled", "disabled");
    		$("#sadd,#scon,#semail").attr("disabled", "disabled");
    		});	
    	function registerPage()
    		{
    		$("#sadd,#scon,#semail").removeAttr("disabled");
    		}
    });
    </script>
<!-------------------------------form end--------------------------> 
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>