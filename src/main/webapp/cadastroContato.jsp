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

		<h1 class="text-center">Cadastrar Contato</h1>
		<form action="gravarContato.jsp" method="POST">
			<label class="form-label">Informe nome</label> 
			<input class="form-control" type="text" placeholder="Informe nome" name="nome"> 
				
			<label class="form-label">Informe email</label> 
			<input class="form-control" type="text" placeholder="Informe email" name="email">

			<button class="btn btn-outline-primary mt-3">Gravar</button>
		</form>
	</div>
</body>
</html>