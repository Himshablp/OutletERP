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
String vendNm = request.getParameter("vendorname");
String venCmp = request.getParameter("cmpNm");
String[] accNm = request.getParameterValues("accname");
//String data = String.join(",", accNm);
String contact = request.getParameter("contactno");
String email = request.getParameter("email");
Connection connection = (Connection)application.getAttribute("Connection");
PreparedStatement preparedStatement = connection.prepareStatement("insert into vendor$setup values(?,?,?,?,?,?)");
preparedStatement.setInt(1, 0);
preparedStatement.setString(2, vendNm);
preparedStatement.setString(3, venCmp);
//preparedStatement.setString(4, data);
preparedStatement.setString(5, contact);
preparedStatement.setString(6, email);

int i = preparedStatement.executeUpdate();
if (i == 1) {
	response.sendRedirect("vendor.jsp");
}
%>
%>
</body>
</html>