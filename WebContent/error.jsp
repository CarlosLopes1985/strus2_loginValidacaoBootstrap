<!DOCTYPE html>
<html>

<head>
 <%@ taglib uri="/struts-tags" prefix="s" %>
		<link rel="stylesheet" type="text/css"	href="bootstrap/css/bootstrap.css"/>		
		<script type="text/javascript"  src="bootstrap/js/bootstrap.js"></script>
		
		<style type="text/css">
			body { 
				background-image: url("img/404.jpg");
				background-repeat: no-repeat;
				background-attachment: fixed;
				background-size: cover;
			}
		</style>
</head>
      
<body>
	<div class="container">
		<br/>
		<a href="index.jsp" class="btn btn-danger">
			<span class="glyphicon glyphicon-home"></span> Home
		</a>
	
		<h4>${msg}</h4>
		
		</div><!-- FECHA CONTAINER -->
</body>
</html>