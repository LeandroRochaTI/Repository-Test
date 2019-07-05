<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="resources/css/menus.css">

<!-- Latest compiled and minified JavaScript -->
<script src="resources/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<h1>Cadastro do Cartorio</h1>

	<form:form action="${s:mvcUrl('CC#atualizar').build()}" method="post"
		commandName="cartorio">

		<div class="form-group">
			<label>ID:</label> <input type="text" name="numero"	value="${cartorio.numero}" class="form-control" readonly />
		</div>
		<div class="form-group">
			<label>Nome:</label> 
			<input type="text" name="nome" value="${cartorio.nome}" class="form-control"/>
			<form:errors path="nome" />
		</div>

		<button type="submit" class="btn btn-success">Editar</button>
		<a type="button" href="${s:mvcUrl('CC#listar').build()}" class="btn btn-warning"> Cancelar</a>
	</form:form>
</body>
</html>