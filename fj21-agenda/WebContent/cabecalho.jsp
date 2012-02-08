<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
		body {text-align: center; margin: 0 auto;}
		.titulo {background-color: grey; font-family: verdana;}
		.tabela td {border: 1px solid grey;}
		.tabela {
			border: 1px solid grey;
			border-collapse: collapse;
			width: 900px;
			margin: 0 auto;
		}
	</style>
<%--/imagens se fosse utilizado direto no src iria subir uma pasta, ou seja, iria no diret�rio do tomcat
	e depois procurar a pasta imagens onde n�o a encontraria pois nao existe este l�. Por�m, ao utilizar
	c:url do jstl, � criado um caminho absoluto a partir da aplica��o que nesse caso � fj21-agenda. Ent�o
	o HTML gerado por esse c�digo � <img src="fj21-tarefas/imagens/caelum.png"/> --%>
	
<a href="http://www.caelum.com.br"><img src="<c:url value='/imagens/caelum-ensino-inovacao.png'/>" alt="imagem caelum"></a>
<h2>Agenda de contatos do Diego Henrique</h2>
<hr>