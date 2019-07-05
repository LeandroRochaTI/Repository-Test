<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Chamado</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<div class="table-responsive form">
		<h1>Cadastro do Cartorio</h1>

		<div class="form-group">
			<label>ID:</label> <label>${cartorio.numero}</label>
		</div>
		<div class="form-group">
			<label>Nome:</label> <label>${cartorio.nome}</label>
		</div>

		<a href="${s:mvcUrl('CC#editar').arg(0,cartorio.numero).build()}" class="btn btn-success">Editar</a>
		<a href="${s:mvcUrl('CC#listar').build()}" class="btn btn-warning"> Cancelar</a>
	</div>
</body>
</html>