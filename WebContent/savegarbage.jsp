<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
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
		Map<Integer, String> map = new HashMap<Integer, String>();
		String cmpNm = request.getParameter("companyname");
		String acctype = request.getParameter("acctyp");
		String accname = request.getParameter("accname");
		String model = request.getParameter("modelno");
		String pieces = request.getParameter("pieces");
		String reason = request.getParameter("reason");
		Connection connection = (Connection) application.getAttribute("Connection");
		PreparedStatement preparedStatement = connection
				.prepareStatement("insert into garbage$setup values(?,?,?,?,?,?,?)");
		preparedStatement.setInt(1, 0);
		preparedStatement.setString(2, cmpNm);
		preparedStatement.setString(3, acctype);
		preparedStatement.setString(4, accname);
		preparedStatement.setString(5, model);
		preparedStatement.setString(6, pieces);
		preparedStatement.setString(7, reason);
		int i = preparedStatement.executeUpdate();
		
		int count = Integer.parseInt(pieces);
		String query = "SELECT  id , pieces FROM addstock$setup WHERE model ='" + model+"'";
		PreparedStatement preparedStatement2 = connection.prepareStatement(query);
		ResultSet resultSet = preparedStatement2.executeQuery();
		while (resultSet.next()) {
			map.put(resultSet.getInt(1), resultSet.getString(2));
		}
		for(Map.Entry entry : map.entrySet()){
			int key =(Integer)entry.getKey();
			int val = Integer.parseInt(entry.getValue().toString());
			if(val>=count){
				val = val-count;
				count =0;
			}else{
				count = count-val;
				val = 0;
			}
			String qry = "update addstock$setup set pieces="+val+" where id="+key;
			PreparedStatement stm = connection.prepareStatement(qry);
			stm.executeUpdate();
			System.out.println(val+" : "+count);
			if(count==0){
				break;
			}
		}
		
		if (i == 1) {
			response.sendRedirect("garbage.jsp");
		}
	%>
</body>
</html>