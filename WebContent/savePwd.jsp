<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.User"%>
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
		User user = (User) session.getAttribute("user");
		String currentPwd = request.getParameter("currentPwd");
		String newPwd = request.getParameter("newPwd");
		String rePwd = request.getParameter("rePwd");
		if(user.getUserPwd().equals(currentPwd) && newPwd.equals(rePwd)){
			Connection connection = (Connection) application.getAttribute("Connection");
			String qry = "update storesetup set password="+newPwd+" where id="+user.getUserId();
			PreparedStatement stm = connection.prepareStatement(qry);
			stm.executeUpdate();
			request.setAttribute("chnagePwdMsg", "Password Changed Successfully.......");
		}else{
			request.setAttribute("chnagePwdMsg", "Current Password or New Password does not match");
		}
		user.setUserPwd(newPwd);
		RequestDispatcher dispatcher = request.getRequestDispatcher("changepwd.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>