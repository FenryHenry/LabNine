<%@page import="java.sql.*"%>
 <html>
 <head>  
 <script language="javascript" type="text/javascript">  
 var xmlHttp  
 var xmlHttp
 function showState(str){ 
if (typeof XMLHttpRequest != "undefined"){
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
    alert ("Browser does not support XMLHTTP Request")
return
} 
var url="get.jsp";
url += "?count=" +str;
xmlHttp.onreadystatechange = stateChange;
xmlHttp.open("GET", url, true);
xmlHttp.send(null);
}
 function stateChange(){   
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
 document.getElementById("country").innerHTML=xmlHttp.responseText;  
 }   
 }   
 </script>  
 </head>  
 <body>  
 <input id="name" type="text" name="name" onkeyup="showState(this.value)">
 <br>  
 <div id='country'>  
 </div>  
 </body> 
 </html>