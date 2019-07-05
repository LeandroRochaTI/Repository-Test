<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h1>Lista de Cartórios</h1>

	<h3>${sucesso}</h3>
	<div class="table-responsive">
		<table class="table table-hover">
			<tr>
				<th>ID:</th>
				<th>Nome:</th>
				<th />
			</tr>
			<c:forEach items="${cartorios }" var="cartorio">
				<tr>
					<td><a
						href="${s:mvcUrl('CC#detalhe').arg(0, cartorio.numero).build()}">${cartorio.numero}</a>
					</td>
					<td>${cartorio.nome }</td>
					<td><a
						href="${s:mvcUrl('CC#editar').arg(0, cartorio.numero).build()}" class="btn btn-warning">editar</a>
						<a
						href="${s:mvcUrl('CC#remover').arg(0, cartorio.numero).build()}" class="btn btn-danger">remover</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<a href="${s:mvcUrl('CC#form').build()}" class="btn btn-success">Novo Cartorio</a>
</body>
</html>