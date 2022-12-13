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
		String[] cmpDis = request.getParameterValues("accname");
		//String data = String.join(",", cmpDis);
		//out.println(data);
		Connection connection = (Connection) application.getAttribute("Connection");
		PreparedStatement preparedStatement = connection.prepareStatement("insert into company$setup values(?,?,?)");
		preparedStatement.setInt(1, 0);
		preparedStatement.setString(2, cmpNm);
		//preparedStatement.setString(3, data);
		int i = preparedStatement.executeUpdate();
		if (i == 1) {
			response.sendRedirect("companysetting.jsp");
		}
	%>
</body>
</html>