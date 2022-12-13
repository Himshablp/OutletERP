<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<div class="form">
    <div class="container">
    <div>
    <h2 style="float: left;">Garbage Setup</h2>
    <a href="" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="text-decoration: none;padding: 10px;margin: 20px;float: right;"><h6>+ New Garbage</h6></a>
    </div>
    <hr/>
    <div class="clearfix"></div>
    <div class="row">   
        <div class="col-md-offset-3 col-md-6">
        <table class="table table-bordered">
            <thead>
            <th>Company</th>
            <th>Accessory</th>
            <th>Accessory Name</th>
            <th>Model No.</th>
            <th>Pieces</th>
            <th>Reason</th>
            
            </thead>
             <%
            Connection connection = (Connection)application.getAttribute("Connection");
             Statement s = connection.createStatement();
             ResultSet set = s.executeQuery("select * from garbage$setup");
             while(set.next()){
             %>
             <tr>
             <td><%=set.getString(2) %></td>
             <td><%=set.getString(3) %></td>
             <td><%=set.getString(4) %></td>
             <td><%=set.getString(5) %></td>
             <td><%=set.getString(6) %></td>
             <td><%=set.getString(7) %></td>
             </tr>
             <%}
          %>
            </table>   
        </div>
        </div>
    </div>
    
    </div>    
    
<jsp:include page="footer.jsp"></jsp:include>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-body">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add New Garbage Item</h4>
            </div>
            <!-------------------------------form start-------------------------->        
         <form action="savegarbage.jsp" method="get">
            <div class="form-group">
            <label>Company Name</label>
             <select name = "companyname" class="form-control" >
            <%
            PreparedStatement stmt = connection.prepareStatement("select companyname from company$setup");
            ResultSet rs =  stmt.executeQuery();
            while(rs.next()){
            %>
            <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option> 
            <%} %>
            </select>
            </div>
            
            <div class="form-group">
            <label>Accessories</label>
            <select name = "acctyp" class="form-control" >
            <%
            PreparedStatement statement = connection.prepareStatement("select accessorytype from accessories$setup");
            ResultSet resultSet =  statement.executeQuery();
            while(resultSet.next()){
            %>
            <option value="<%=resultSet.getString(1) %>"><%=resultSet.getString(1) %></option> 
            <%} %>
            </select>
            </div>
            <div class="form-group">
            <label>Accessories Name</label>
             <select name = "accname" class="form-control" >
            <%
            PreparedStatement statement2 = connection.prepareStatement("select accesoryname from model$setup");
            ResultSet resultSet2 =  statement2.executeQuery();
            while(resultSet2.next()){
            %>
            <option value="<%=resultSet2.getString(1) %>"><%=resultSet2.getString(1) %></option> 
            <%} %>
            </select>
            </div>
             <div class="form-group">
            <label>Model No.</label>
               <select name = "modelno" class="form-control" >
            <%
            PreparedStatement statement3 = connection.prepareStatement("select modelno from model$setup");
            ResultSet resultSet3 =  statement3.executeQuery();
            while(resultSet3.next()){
            %>
            <option value="<%=resultSet3.getString(1) %>"><%=resultSet3.getString(1) %></option> 
            <%} %>
            </select>
            </div>
            <div class = "form-group">
            <label>No. Of Pieces</label>
            <input type="text" class = "form-control" name = "pieces" placeholder = "No. Of Pieces">
            </div>
            <div class = "form-group">
            <label>Reason</label>
            <textarea rows="4" cols="25" class = "form-control" name = "reason"></textarea>
            </div>
           <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </form> 
<!-------------------------------form end-------------------------->
        </div>
        </div>
    </div>
</div>
<!-- Model End -->
</body>
</html>