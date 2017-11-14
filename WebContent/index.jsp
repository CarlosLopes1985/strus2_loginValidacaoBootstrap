<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>

<body>
	<div class="container">
		<div class="jumbotron">

			<h3>Cadastrar o Usuário</h3>
			<a href="login.jsp" class="btn btn-primary">
				<span class="glyphicon glyphicon-log-in"></span> Login de Usuarios</a>
			<hr />
			<div class="row">
				<s:form action="usuario.gravar" cssClass="form1" >
					<div class="col-sm-8 col-sm-offset-2">
						<div class="panel panel-info">
							<div class="panel-heading">
								<div class="panel-title">Formulário de Cadastro</div>
							</div>	<!-- FECHA PANEL-HEADING -->

						<div class="panel-body">
						
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-envelope"></span>
								</div>	<!-- FECHA INPUT-GROUP-ADDON -->
								<input 	type="text" name="usuario.login"
										placeholder="Digite o Login/Email" title="Digite o Login/Email"
										class="form-control" required="required">
							</div>	<!-- FECHA INPUT GROUP -->
						</div>	<!-- FECHA FORM-GROUP -->
						
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user"></span>
								</div>	<!-- FECHA INPUT-GROUP-ADDON -->
								<input 	type="text" name="usuario.nome"
										placeholder="Digite o Nome" title="Digite o Nome"
										class="form-control" required="required">
							</div>	<!-- FECHA INPUT GROUP -->
						</div>	<!-- FECHA FORM-GROUP -->

						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-cog"></span>
								</div>	<!-- FECHA INPUT-GROUP-ADDON -->
								<input 	type="password" name="usuario.senha"
										placeholder="Digite a Senha" title="Digite a Senha"
										class="form-control" required="required">
							</div>	<!-- FECHA INPUT GROUP -->
						</div>	<!-- FECHA FORM-GROUP -->

							<div class="panel panel-footer">
								<button type="submit" class="btn btn-success">
									<span class="glyphicon glyphicon-floppy-disk"></span> 
									Gravar Cliente
								</button>
								<br/> 
								<span>${msg}</span><br/>
							</div><!-- FECHA PANEL-FOOTER -->
						</div><!-- FECHA PANEL BODY -->
						</div><!-- FECHA PANEL INFO -->
					</div><!--  FECHA COL SM -->
						
					</s:form>
					
				
			</div><!-- FECHA ROW -->
		</div><!--  FECHA JUMBOTRON -->
	</div><!--  FECHA CONTAINER -->
</body>
</html>