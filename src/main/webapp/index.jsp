<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Curso Java Server Page</title>
</head>
<body>
<h1> Primeira Página JSP</h1>

<% 
out.print("<h1> Login do Projeto</h1>");
%>


<form action="ServletLogin" method="post">
<input type = "hidden" value= <%= request.getParameter("url") %> name= "url" >
<table>
<tr>
<td><input name= "login" type ="text"> </td>
</tr>
<tr>
<td><input name = "password" type = "password"></td>
</tr>
<tr>
<td><input type = "submit" name="enviar"></td>
</tr>
</table>

</form>
<h4>${msg}</h4>


</body>
</html>