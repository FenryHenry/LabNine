<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>CS 2334: Login</title>

	<script type="text/javascript">
		function setFocus()
		{
			document.getElementById('text1').focus()
		}
		
		function fnTrim(string_txt)
		{
				elem = string_txt ;
				while(elem.charAt(0)==' ')// Ltrim
				{
					elem = elem.substring(1,elem.length);
				}
				while(elem.charAt(elem.length - 1)==' ') // rtrim
				{
					elem = elem.substring(0,elem.length - 1);
				}
				return elem ;
		}
		
		function validate_required(field,alerttxt)
		{
			with (field)
			{
				if (value==null||value=="")
		  		{
				  	//alert(alerttxt);
		  			return false;
				}
				else {return true}
			}
		}
		function validate_form(thisform)
		{
			with (thisform)
			{
				document.frmLogin.UserID.value=fnTrim(document.frmLogin.UserID.value);
				document.frmLogin.UserPass.value=fnTrim(document.frmLogin.UserPass.value);
				if (validate_required(document.frmLogin.UserID,"ID must be filled out!")==false)
			  		{document.frmLogin.UserID.focus();return false;}
				if (validate_required(document.frmLogin.UserPass,"Password must be filled out!")==false)
			  		{document.frmLogin.UserPass.focus();return false;}
			}
		}
		</script>
</head>
<body style="BACKGROUND: url(images/bcgreeen1.GIF) repeat-x" height=938 onload="setFocus()">
<br/><br/><br/>
<%
request.getSession().invalidate(); 
%>
        <center> 
	<font color="DARKRED">   
	<h2>CS 2334<br />Programming Structures and Abstraction</h2>
	</font>
	<font color="DARKBLUE">   
	<h3>Lab9: Recursion</h3>
        </font>
        <br/><br/><br/><br/>
	<form name="frmLogin" action="login.jsp" method="post" target="_parent" onsubmit="return validate_form(this)">
			<table border="1" cellspacing="0">
				<tr>
					<td><label>UserID: </label></td>
					<td><input name="UserID" type="text" maxlength="15" id="text1" value="110000000" /><br /></td>
				</tr>
				<tr>
					<td><label>Password: </label></td>
					<td><input name="UserPass" type="password" maxlength="12" value="110000000" /><br /></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="Login"/>
					<input type="reset" value="Reset"/></td>
				</tr>
			</table>			
	</form>
	</center>
<br/><br/><br/><br/><br/><br/><br/>
<a href="mukhtar.jsp">@Mukhtar</a>
</body>
</html>