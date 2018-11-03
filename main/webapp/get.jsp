<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("count");  
 String buffer="<div>";  
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alluser","root","");  
 Statement stmt = con.createStatement();  
 //ResultSet rs = stmt.executeQuery("Select * from branch where BrName LIKE '"+name+"%'");  
 ResultSet rs = stmt.executeQuery("Select * from branch where BrName = '"+name+"'");
   while(rs.next()){
   buffer=buffer+rs.getString(6)+"<br>";  
   }  
 buffer=buffer+"</div>";  
 response.getWriter().println(buffer);  
 %>