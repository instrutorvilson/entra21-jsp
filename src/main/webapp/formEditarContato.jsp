<%@page import="controlador.ContatoController"%>
<%@page import="modelos.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./bootstrap.jsp"%>
<meta charset="ISO-8859-1">
<title>Cadastro de Contato</title>

</head>
<body>
	<div class="container">
		<nav>
			<%@include file="./menu.jsp"%>
		</nav>
		<% 
		   String idContato = request.getParameter("id");
		   Contato contato = new ContatoController().consultarPorId(Integer.parseInt(idContato));
		%>

		<h1 class="text-center">Editar Contato</h1>
		<form action="editarContato.jsp" method="POST">
			<label class="form-label">ID</label> 
			<input class="form-control" type="text" 
			       readonly="readonly" name="idContato"
			       value="<% out.print(idContato);%>"
			       > 
			
			<label class="form-label">Informe nome</label> 
			<input class="form-control" type="text" 
			       placeholder="Informe nome" 
			       name="nome"
			       value="<% out.print(contato.getNome());%>"
			       > 
				
			<label class="form-label">Informe email</label> 
			<input class="form-control" type="text" 
			       placeholder="Informe email" 
			       name="email"
			       value="<% out.print(contato.getEmail());%>"
			       >

			<button class="btn btn-outline-primary mt-3">Gravar</button>
		</form>
	</div>
</body>
</html>