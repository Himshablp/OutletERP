<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="userLogin" class="bean.Login"></jsp:useBean>
<jsp:setProperty name="userLogin" property="userMobile" param="MobileNumber"/>
<jsp:setProperty name="userLogin" property="userPwd" param="Password"/>
<%    
if(userLogin.checkUser()){
	session.setAttribute("user",userLogin.getUser());
	response.sendRedirect("./dashboard.jsp");
}else{
	
	response.sendRedirect("./");

}
%>
</body>
</html>