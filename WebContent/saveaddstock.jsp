<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String cmpNm = request.getParameter("companyname");
		String vendorNm = request.getParameter("vendornm");
		String acctype = request.getParameter("acctyp");
		String accNm = request.getParameter("accname");
		String model = request.getParameter("model");
		String color = request.getParameter("color");
		String pieces = request.getParameter("pieces");
		String actualprice = request.getParameter("actualprice");
		
		String mrp = request.getParameter("mrp");
		String amount = request.getParameter("amount");
		System.out.print(amount);
		System.out.print(model);
		System.out.print(pieces);
		System.out.print(mrp);
		System.out.print(color);

		System.out.print(actualprice);
		Connection connection = (Connection) application.getAttribute("Connection");
		String q = "insert into addstock$setup values(?,?,?,?,?,?,?,?,?,?,?,?)"; 
		PreparedStatement preparedStatement = connection.prepareStatement(q);
		preparedStatement.setInt(1, 0);
		preparedStatement.setString(2, cmpNm);
		preparedStatement.setString(3, vendorNm);
		preparedStatement.setString(4, acctype);
		preparedStatement.setString(5, accNm);
		preparedStatement.setString(6, model);
		preparedStatement.setString(7, color);
		preparedStatement.setString(8, pieces);
		preparedStatement.setString(9, actualprice);
		preparedStatement.setString(10, mrp);		
		preparedStatement.setString(11, amount);
		preparedStatement.setString(12, pieces);
		int i = preparedStatement.executeUpdate();
		if (i == 1) {
			response.sendRedirect("addstock.jsp");
		}
		else{
			response.sendRedirect("accessories.jsp");
		}
		 
	%>
</body>
</html>