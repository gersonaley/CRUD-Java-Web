<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrador de Clientes</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
	<h2>Administrador de Clientes</h2>
<div class="row">
<div class="col-md-10">	
	<form method="get" action="search">
	<div class="col-md-10">
		<input class="form-control" type="text" name="keyword" />
	</div>
	<div class="col-md-2">
		<button class="btn btn-info" type="submit">Buscar <i class="fa fa-search"></i></button>
	</div>
	</form>
</div>
<div class="col-md-2">
	<a class="btn btn-success" href="new">Nuevo Cliente <i class="fa fa-plus"></i></a>
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
			<th>Acción</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${listCliente}" var="cliente">
		<tr>
			<td>${cliente.id}</td>
			<td>${cliente.nombre}</td>
			<td>${cliente.direccion}</td>
			<td>${cliente.ciudad}</td>
			<td>${cliente.telefono}</td>
			<td>
				<a class="btn btn-warning" href="edit?id=${cliente.id}"><i class="fa fa-pencil"></i></a>
				&nbsp;&nbsp;&nbsp;
				<a class="btn btn-danger" href="delete?id=${cliente.id}"><i class="fa fa-trash"></i></a>
			</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
</div>
</div>
</div>	
</body>
</html>