<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
<head>
	<style type="text/css">
		.direita {text-align: right; width: 200px;}
		.esquerda {text-align: left; width: 200px;}
		#formulari {width: 500px; border: 1px solid grey; text-align: center; margin: 0 auto;}
	</style>
	
	<link href="css/ui-lightness/jquery-ui-1.7.3.custom.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.7.3.custom.min.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<div id="formulari">
		<h3>Inserir contato</h3><hr>
		<form action="adicionaContato">
			<table>
				<tr> <td class="direita">Nome:</td><td class="esquerda"><input type="text" name="nome" /></td></tr> 
				<tr> <td class="direita">Email:</td><td class="esquerda"><input type="text" name="email" /></td></tr> 
				<tr> <td class="direita">Endereco:</td><td class="esquerda"><input type="text" name="endereco" /></td></tr> 
				<tr> <td class="direita">Data Nascimento:</td><td class="esquerda"><caelum:campoData id="dataNascimento"/></td></tr> 
				<tr><td colspan="2" class="direita"><caelum:myButton/></td></tr>
			</table>
		</form>
	</div>
	
	<c:import url="rodape.jsp" />
</body>
</html>