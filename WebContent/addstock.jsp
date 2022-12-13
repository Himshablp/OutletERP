<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add your stock here</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" href="lib/css/style.css">
<link rel="stylesheet" href="lib/css/qstyletop.css">
<script type="text/javascript" src="lib/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
<script type="text/javascript">  
function msg(){  
var v= confirm("Are u sure to submit data?");  
if(v==true){  
alert("ok");  
}  
else{  
alert("cancel");  
}  
  
}  
</script>  
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-------------------------------form start-------------------------->        
<div>
    <div class="container">
     <h2 style="float : left;">Add Stock</h2>
     <hr/>
    <div class="clearfix"></div>
    <div class="row">   
    <form action="saveaddstock.jsp" method="get">   
    <div class="col-md-6">
            <div class="form-group">           
            <label>Company Name</label>
             <select name = "companyname"  class="form-control" >
            <%           
            Connection connection = (Connection)application.getAttribute("Connection");
            PreparedStatement stmt = connection.prepareStatement("select companyname from company$setup");
            ResultSet rs =  stmt.executeQuery();
            while(rs.next()){
            %>
            <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option> 
            <%} %>
            </select>
            </div>
            <div class="form-group">
            <label>Vendor Name</label>
             <select name = "vendornm"  class="form-control" >
            <%           
            PreparedStatement statement = connection.prepareStatement("select vendorname from vendor$setup");
            ResultSet set =  statement.executeQuery();
            while(set.next()){
            %>
            <option value="<%=set.getString(1) %>"><%=set.getString(1) %></option> 
            <%} %>
            </select>
            </div>
             <div class="form-group">
            <label>Accessories</label>
            <select name = "acctyp" class="form-control" >
            <%
            PreparedStatement statement2 = connection.prepareStatement("select accessorytype from accessories$setup");
            ResultSet r =  statement2.executeQuery();
            while(r.next()){
            %>
            <option value="<%=r.getString(1) %>"><%=r.getString(1) %></option> 
            <%} %>
            </select>
            </div>
           <div class="form-group">
            <label>Accessory Name</label>
            <select name = "accname" class="form-control" >
            <%
            PreparedStatement statement3 = connection.prepareStatement("select accesoryname from model$setup");
            ResultSet set2 =  statement3.executeQuery();
            while(set2.next()){
            %>
            <option value="<%=set2.getString(1) %>"><%=set2.getString(1) %></option> 
            <%} %>
            </select>
            </div>
            
            <div class="form-group">
            <label>Model</label>
            <select name = "model" class="form-control" >
            <%
            PreparedStatement statement4 = connection.prepareStatement("select modelno from model$setup");
            ResultSet set3 =  statement4.executeQuery();
            while(set3.next()){
            %>
            <option value="<%=set3.getString(1) %>"><%=set3.getString(1) %></option> 
            <%} %>
            </select>
            </div>
            </div>
            <div class="col-md-6">
            <div class="form-group">
            <label>Color</label>
            <select name = "color" class="form-control" >
            <%
            PreparedStatement statement5 = connection.prepareStatement("select color from color$setup");
            ResultSet set4 =  statement5.executeQuery();
            while(set4.next()){
            %>
            <option value="<%=set4.getString(1) %>"><%=set4.getString(1) %></option> 
            <%} %>
            </select>         
        </div>
        <div class="form-group">
            <label>Number of Pieces</label>
            <input type="text" class="form-control" name="pieces" placeholder="Number of Pieces" required>
            </div>
            <div class="form-group">
            <label>Actual Price</label>
            <input type="text" class="form-control" name="actualprice" placeholder="Actual Price" required>
            </div>
            <div class="form-group">
             <label>MRP</label>
            <input type="text" class="form-control" name="mrp" placeholder="MRP" required>
            </div>
              <div class="form-group">
             <label>Amount</label>
            <input type="text" class="form-control" name="amount" placeholder="Total Amount" required>
            </div>
           
            <input type="submit" class="btn btn-primary" value="Submit" onclick = "msg()"> 
            </div>
            </div>
        </form>
        </div>
        </div>
        </div>
    
<!-------------------------------form end--------------------------> 
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>