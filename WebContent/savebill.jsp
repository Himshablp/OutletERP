<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	<%@page import="bean.Customer"%>

<%
String customer = request.getParameter("customername");
String contact = request.getParameter("contactno");
String company = request.getParameter("companyname");
String acctype = request.getParameter("acctyp");
String accNm = request.getParameter("accname");
String model = request.getParameter("model");
String color = request.getParameter("color");
String pieces = request.getParameter("pieces");
String amount = request.getParameter("amount");

	Customer c = new Customer();
    c.setCustomername(customer);
	c.setContactno(contact);
	c.setCompanyname(company);
	c.setAccesories(acctype);
	c.setAccesoryname(accNm);
	c.setModel(model);
	c.setColor(color);
	c.setPieces(pieces);
	c.setAmount(amount);
	
	Map<Integer,Customer> map = (Map<Integer,Customer>)session.getAttribute("cust");
	if(map==null){
		int count = 1;
		Map<Integer,Customer> mapFirst = new HashMap<Integer,Customer>();
	mapFirst.put(count, c);
	session.setAttribute("cust", mapFirst);
	session.setAttribute("count", count);
	}else{
		int co = (Integer)session.getAttribute("count");
		co = co+1;
		map.put(co, c);
		session.setAttribute("cust",map);
		session.setAttribute("count", co++);
	}
	c = null;
	
		/* RequestDispatcher dispatcher = request.getRequestDispatcher("billing.jsp");
		dispatcher.forward(request, response); */
		response.sendRedirect("billing.jsp");
%>
</body>
</html>