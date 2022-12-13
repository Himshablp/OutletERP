<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
<%@page import="bean.Customer"%>
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

Connection connection = (Connection) application.getAttribute("Connection");
String q = "insert into customer values(?,?,?,?,?,?,?,?,?,?)";

Map<Integer, String> mapOfStock = new HashMap<Integer, String>();

PreparedStatement preparedStatement = connection.prepareStatement(q);
Map<Integer,Customer> map = (Map<Integer,Customer>)session.getAttribute("cust");
        	if(map!=null){  
        	for(Map.Entry<Integer,Customer> entry : map.entrySet() ){
        		Customer customer = entry.getValue();  
        		 preparedStatement.setInt(1, 0);
        	        preparedStatement.setString(2, customer.getCustomername());
        	        preparedStatement.setString(3, customer.getContactno());
        	        preparedStatement.setString(4, customer.getCompanyname());
        	        preparedStatement.setString(5, customer.getAccesories());
        	        preparedStatement.setString(6, customer.getAccesoryname());
        	        preparedStatement.setString(7, customer.getModel());
        	        preparedStatement.setString(8, customer.getColor());
        	        preparedStatement.setString(9, customer.getPieces());
        	        preparedStatement.setString(10, customer.getAmount());
        	        int i = preparedStatement.executeUpdate();
        	        
        	        
        	        
                	String pieces = customer.getPieces();
                	int count = Integer.parseInt(pieces);
                	
                	if(mapOfStock.isEmpty()){
                	String query = "SELECT  id , pieces FROM addstock$setup WHERE model ='" + customer.getModel()+"'";
            		PreparedStatement preparedStatement2 = connection.prepareStatement(query);
            		ResultSet resultSet = preparedStatement2.executeQuery();
            		while (resultSet.next()) {
            			mapOfStock.put(resultSet.getInt(1), resultSet.getString(2));
            		}
                	}
                	
                	for(Map.Entry entry1 : mapOfStock.entrySet()){
            			int key =(Integer)entry1.getKey();
            			int val = Integer.parseInt(entry1.getValue().toString());
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

        	}
        	}
        	
        	    session.removeAttribute("cust");
	        	response.sendRedirect("dashboard.jsp");

        	%>
</body>
</html>