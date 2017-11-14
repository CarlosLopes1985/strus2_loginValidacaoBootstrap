<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>

<body>
	<div class="container">
		<div class="jumbotron">

			<h3>Login de Usuário</h3>
		
			<a href="index.jsp" class="btn btn-primary">
			<span class="glyphicon glyphicon-home"></span> Home</a>
			<hr />
			<div class="row">
				<s:form action="usuario.logar" cssClass="form1" >
					<div class="col-sm-8 col-sm-offset-2">
						<div class="panel panel-info">
							<div class="panel-heading">
									<div class="panel-title">Formulário de Login</div>
							</div>	<!-- FECHA PANEL-HEADING -->

							<div class="panel-body">
							
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-envelope"></span>
								</div>	<!-- FECHA INPUT-GROUP-ADDON -->
								<input 	type="text" name="usuariologin.login"
										placeholder="Digite o Login/Email" title="Digite o Login/Email"
										class="form-control" required="required">
							</div>	<!-- FECHA INPUT GROUP -->
						</div>	<!-- FECHA FORM-GROUP -->

						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-cog"></span>
								</div>	<!-- FECHA INPUT-GROUP-ADDON -->
								<input 	type="password" name="usuariologin.senha"
										placeholder="Digite o Senha" title="Digite o Senha"
										class="form-control" required="required">
							</div>	<!-- FECHA INPUT GROUP -->
						</div>	<!-- FECHA FORM-GROUP -->

							<div class="panel panel-footer">
								<button type="submit" class="btn btn-success">
									<span class="glyphicon glyphicon-log-in"></span> 
									Logar no Sistema
								</button>
								<br/> 
								<span>${msg}</span><br/>
							</div><!-- FECHA PANEL-FOOTER -->
							
							</div><!-- FECHA PANEL BODY -->
						</div><!--  FECHA PANEL INFO -->
					</div><!--  FECHA COL -->
			</s:form>
			</div><!-- FECHA ROW -->
	
	
	
		
	
					
		
	
	
	
	<p>
		${msg}
	</p>
</div>
</div>
</body>
</html>


