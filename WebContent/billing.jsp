<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing</title>
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
	<%@page import="bean.Customer"%>
<!-------------------------------form start-------------------------->  
 <div class="container">
<div class="row">
      <table class="table table-bordered">
            <thead>
            <th>Customer Name</th>
            <th>Contact No.</th>
            <th>Company</th>
            <th>Accesories</th>
            <th>Accessory Name</th>
            <th>Model</th>
            <th>Color</th>
            <th>Pieces</th>
            <th>Amount</th>
            </thead>
             <%
             Connection connection = (Connection) application.getAttribute("Connection");
        	Map<Integer,Customer> map = (Map<Integer,Customer>)session.getAttribute("cust");
           
        	if(map!=null){  
        	for(Map.Entry<Integer,Customer> entry : map.entrySet() ){
        		Customer customer = entry.getValue();   

        	%>
        	 <tr>
        	 <td><%=customer.getCustomername() %></td>
        	 <td><%=customer.getContactno() %></td>
        	 <td><%=customer.getCompanyname() %></td>
        	 <td><%=customer.getAccesories() %></td>
        	 <td><%=customer.getAccesoryname() %></td>
        	 <td><%=customer.getModel() %></td>
        	 <td><%=customer.getColor() %></td>
        	 <td><%=customer.getPieces() %></td>
        	 <td><%=customer.getAmount() %></td>
        	 </tr> 
        	<%}} %>
           
          
        </table> 
                
    </div>  
    <form action="saveBilling.jsp" method="post" style="float: left;padding-right: 20px">
                   <input type ="submit" class="btn btn-warning" value = "Billing">
                   </form>
                    <form action="cancelBill.jsp" method="post">
                   <input type ="submit" class="btn btn-danger" value = "Cancel">
                   </form>
      
    </div>  
   
    <div>
    <div class="container">
     <h2 style="float : left;">Billing</h2>
     <hr/>
    <div class="clearfix"></div>
    <div class="row">   
    <form action="savebill.jsp" method="post">   
    <div class="col-md-6">
     <div class="form-group">
            <label>Customer Name</label>
            <input type="text" class="form-control" name="customername" placeholder="Customer Name" required>
            </div>
            <div class="form-group">
             <label>Contact No.</label>
            <input type="text" class="form-control" name="contactno" placeholder="Contact No." required>
            </div>
            <div class="form-group">           
            <label>Company Name</label>
             <select name = "companyname"  class="form-control" >
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
            
            
            </div>
            <div class="col-md-6">
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
             <label>Amount</label>
            <input type="text" class="form-control" name="amount" placeholder="Total Amount" required>
            </div>
           
            <input type="submit" class="btn btn-primary" value="Save" onclick = "msg()"> 
            </div>
            
        </form>
      </div>
        </div>
        </div>
    
<!-------------------------------form end--------------------------> 
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>