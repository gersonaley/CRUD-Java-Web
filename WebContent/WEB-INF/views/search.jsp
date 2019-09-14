<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultados de la Búsqueda</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10">
			<h2>Resultados de Búsqueda</h2>
		</div>
		<div class="col-md-2">
			<a href="./" class="btn btn-info">Regresar</a>
		</div>	
	</div>	
</div>
<hr>
<div class="col-md-12">
	<table class="table">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Dirección</th>
			<th>Ciudad</th>
			<th>Teléfono</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${result}" var="cliente">
		<tr>
			<td>${cliente.id}</td>
			<td>${cliente.nombre}</td>
			<td>${cliente.direccion}</td>
			<td>${cliente.ciudad}</td>
			<td>${cliente.telefono}</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
</div>
</div>
</div>	
</body>
</html>