<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<%
String userid=request.getParameter("UserID"); 
String userpass=request.getParameter("UserPass"); 
String rs1 = "110000000"; 
String rs2 = "110000000";
try
{
	if(rs1.equals(userid)) 
	{ 
		//out.println("welcome"+userid); 
		session.setAttribute( "userid", rs1);
		session.setAttribute( "userpass", rs2);
		session.setAttribute( "username", rs1);
		String site = new String("menu.jsp");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		//Thread.sleep(1000);
		response.setHeader("Location", site); 
	} 
	else 
	{ 
		String site = new String("index.jsp");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
	} 
}
catch(Exception e)
{
    out.println("Exception : " + e.getMessage() + "");
}
%>
</body>
</html>