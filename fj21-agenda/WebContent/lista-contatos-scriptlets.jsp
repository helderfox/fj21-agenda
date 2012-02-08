<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.*"%>
<%@page import="br.com.caelum.agenda.modelo.Contato"%>
<%@page import="br.com.caelum.agenda.DAO.ContatoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista contatos scriptlets</title>
	
</head>
<body>
	<%--IMPORTANDO O CABEÇALHO COM A TAG --%>
	<c:import url="cabecalho.jsp"/>

	<%--CRIA A LISTA --%>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.DAO.ContatoDAO"/>
	
	<table class="tabela">
		<tr class="titulo">
			<td>Nome</td><td>Email</td><td>Endereço</td><td>Data de Nascimento</td>
		</tr>
		
		<%--FOR --%>
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				<td>
				
					<%--SWITCH CASE --%>
				  	<c:choose>
				   		<c:when test="${not empty contato.email}">
				   			<a href="mailto:${contato.email}">${contato.email}</a>
				   		</c:when>
				   		<c:otherwise>
				   			Email não informado
				   		</c:otherwise>
				   	</c:choose>
				</td>
				<td>${contato.endereco}</td>
				<td>
					<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
<%-- 					
 					Date data = contato.getDataNascimento().getTime();
 					String dataFormatada = new SimpleDateFormat("dd/MM/yyy").format(data);
					
 					out.println(dataFormatada);
--%>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<%--Importando o rodapé --%>
	<c:import url="rodape.jsp"/>
</body>
</html>