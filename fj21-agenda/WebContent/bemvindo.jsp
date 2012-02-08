<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem Vindo</title>
</head>
<body>
	<%--Comentário em jsp --%>
	<%
	String mensagem = "Bem vindo ao sistema de agendas fj21-agenda.";
	out.println(mensagem);
	
	String developer = "Desenvolvido por Diego Henrique";
	%>
	<br>
	<%=developer%>
	<br>
	<%System.out.println("Tudo foi executado"); %>
</body>
</html>