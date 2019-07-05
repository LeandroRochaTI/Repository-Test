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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<div class="table-responsive form">
		<h1>Cadastro de Cartorios</h1>

		<form:form action="${s:mvcUrl('CC#gravar').build()}" method="post"
			commandName="cartorio">

			
			<div class="form-group">
				<label>Nome:</label> 
				<input type="text" name="nome" class="form-control"/>
				<form:errors path="nome" />
			</div>
			
			<button type="submit" class="btn btn-success">Cadastrar</button>
			<a href="${s:mvcUrl('CC#listar').build()}" class="btn btn-warning">	Cancelar</a>
		</form:form>
	</div>
</body>
</html>