<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<!-------------------------------form start-------------------------->
	<div class="form">
		<div class="container">
			<div>
				<h2 style="float: left;">Vendor Setting</h2>
				<a href="" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="text-decoration: none;padding: 10px;margin: 20px;float: right;"><h6>+ New Vendor</h6></a>
    </div>
			<hr />
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-offset-1 col-md-9">
					<table class="table table-bordered">
						<thead>
							<th>Vendor Name</th>
							<th>Company Name</th>
				            <th>Accessories Name</th>
							<th>Contact No.</th>
			               <th>Email id</th>
						</thead>
						<%
							Connection connection = (Connection) application.getAttribute("Connection");
							Statement s = connection.createStatement();
							ResultSet set = s.executeQuery("select * from vendor$setup");
							while (set.next()) {
						%>
						<tr>
							<td><%=set.getString(2)%></td>
							<td><%=set.getString(3)%></td>
							<td><%=set.getString(4)%></td>
							<td><%=set.getString(5)%></td>
							<td><%=set.getString(6)%></td>
						</tr>
						<%
							}
						%>
					</table>

				</div>
			</div>
		</div>

	</div>

	<!-------------------------------form end-------------------------->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-body">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add New Vendor</h4>
            </div>
                   <form action="savevendor.jsp" method="get">
						<div class="form-group">
							<label>Vendor Name</label> <input type="text"
								class="form-control" name="vendorname" placeholder="vendor Name">
						</div>
						<div class="form-group">
							<label>Company</label>
							 <select name="cmpNm" class="form-control">
								<%
									PreparedStatement statement = connection.prepareStatement("select companyname from company$setup");
									ResultSet resultSet = statement.executeQuery();
									while (resultSet.next()) {
								%>
								<option value="<%=resultSet.getString(1)%>"><%=resultSet.getString(1)%></option>
								<%
									}
								%>
							</select>
						</div>
						<div class="form-group">
            <label>Accessories </label>
            <select name = "accname" multiple class="form-control" >
            <%
            PreparedStatement sta = connection.prepareStatement("select accessorytype from accessories$setup");
            ResultSet result =  sta.executeQuery();
            while(result.next()){
            %>
            <option value="<%=result.getString(1) %>"><%=result.getString(1) %></option> 
            <%} %>
            </select>
            </div>
						<div class="form-group">
							<label>Contact No.</label> 
							<input type="text" class="form-control" name="contactno" placeholder="contact no">
						</div>
						<div class="form-group">
							<label>Email</label> <input type="text" class="form-control"
								name="email" placeholder="email id">
						</div>
				
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
			</form>
        </div>
        </div>
    </div>
</div>
<!-- Model End -->
</body>
</html>