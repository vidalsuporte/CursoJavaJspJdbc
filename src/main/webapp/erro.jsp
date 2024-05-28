<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Menssagem de erro, entre em contato com a equipe técnica</h1>
<%
out.print(request.getAttribute("msgErro"));
%>


</body>
</html>