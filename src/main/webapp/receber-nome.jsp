<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String nome = request.getParameter("nome");
out.print("Nome: " + nome);
String idade = request.getParameter("idade");
out.print("</br>Idade: " + idade);
%>
</body>
</html>