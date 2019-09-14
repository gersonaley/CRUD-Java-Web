<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NUevo Cliente</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
				<h2>Nuevo Cliente</h2>
		</div>
		<hr>
		<div class="col-md-12">
			<form:form action="save" method="post" modelAttribute="cliente">
				<table class="table">
				<thead>
					<tr>
						<td>Nombre: </td>
						<td><form:input class="form-control" path="nombre" /></td>
					</tr>
					<tr>
						<td>Dirección: </td>
						<td><form:input class="form-control" path="direccion" /></td>
					</tr>
					<tr>
						<td>Ciudad: </td>
						<td><form:input class="form-control" path="ciudad" /></td>
					</tr>
					<tr>
						<td>Teléfono: </td>
						<td><form:input class="form-control" path="telefono" /></td>
					</tr>		
					<tr>
						<td><input class="btn btn-success" type="submit" value="Guardar"></td>
						<td><a href="./" class="btn btn-info">Regresar</a></td>
					</tr>
				</thead>
				</table>
			</form:form>
		</div>
	</div>
</div>
</body>
</html>