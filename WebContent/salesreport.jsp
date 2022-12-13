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
    <h2 style="float: left;">Sales Report</h2>
    </div>
    <hr/>
    <div class="clearfix"></div>
    <div class="row">   
        <div class="col-md-12">
        <table class="table table-bordered">
            <thead>
            <th>Id</th>
            <th>Customer Name</th>
            <th>Contact No.</th>
            <th>Company Name </th>
            <th>Accessory Type</th>
            <th>Accessory Name</th>
            <th>Model</th>
            <th>Color</th> 
            <th>Pieces</th>
            <th>Amount</th>
            </thead>
             <%
            Connection connection = (Connection)application.getAttribute("Connection");
            Statement s = connection.createStatement();
            ResultSet set = s.executeQuery("select * from customer");
            while(set.next()){
            %>
            <tr>
            <td><%=set.getInt(1) %></td>
            <td><%=set.getString(2) %></td>
            <td><%=set.getString(3) %></td>
            <td><%=set.getString(4) %></td>
            <td><%=set.getString(5) %></td>
            <td><%=set.getString(6) %></td>
            <td><%=set.getString(7) %></td>
            <td><%=set.getString(8) %></td>
            <td><%=set.getString(9) %></td>
            <td><%=set.getString(10) %></td>
            </tr>
            <%} %>
         </table>   
        </div>
        </div>
    </div>
    
    </div>    
            
           <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>