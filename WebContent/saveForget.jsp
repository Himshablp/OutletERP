<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
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
String email = request.getParameter("email");
String contact = request.getParameter("contact");

Connection connection = (Connection) application.getAttribute("Connection");
String query = "select * from storesetup"; 
PreparedStatement preparedStatement = connection.prepareStatement(query);
ResultSet set = preparedStatement.executeQuery();
while(set.next()){
	String dbemail = set.getString("emailid");
    String dbcontact = set.getString("contactno");
    if(dbemail.equals(email) && dbcontact.equals(contact)){
        String q = "select * from storesetup";
    	PreparedStatement preparedStatement2  = connection.prepareStatement(q);
    	ResultSet set2 = preparedStatement2.executeQuery();
    	while(set2.next()){
    		String pass = set2.getString("password");
            request.setAttribute("forgetPwdMsg", "Your password is :"+pass); 
    	}
 
    }
    else{
		request.setAttribute("forgetPwdMsg", "Sorry! You have entered wrong email id or contact no. Please try again.");
    }
    RequestDispatcher dispatcher = request.getRequestDispatcher("forgetPassword.jsp");
	dispatcher.forward(request, response); 
}

%>
</body>
</html>