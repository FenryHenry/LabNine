<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Refresh" content="600;url=index.jsp">
<title>Menu</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body style="BACKGROUND: url(images/bcgreeen1.GIF) repeat-x" height=938>
<%  
if(session.getAttribute( "username" )==null)
{
	//request.getSession().invalidate();
	//response.sendRedirect(request.getContextPath() + "/index.jsp");
	Thread.sleep(100);
}              
%> 
<%@include file="menuonly.jsp" %>
<br /><br />
<%@include file="menuhome.jsp" %>
</body>
</html>