<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logado no Sistema</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>

<div class="container">
	<div class="well">
	
	<h3>Sistema de Struts2</h3>
	<a href="usuario.logout.action" class="btn btn-warning">
	<span class="glyphicon glyphicon-log-out"></span> Logout</a>
	<hr/>
	<h4>
		Seja bem vindo!!!
	</h4>
	
		Id do Usuario: ${user.idUsuario} <br/>
		Nome: ${user.nome} <br/>
		Login: ${user.login} <br/>
	
	</div><!-- FECHA WELL -->
</div><!-- FECHA CONTAINER -->

	
	
	
	
	
	
	
	
	

</body>
</html>


