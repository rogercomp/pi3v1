<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Listar todos</title>
</head>
<body>
	<c:if test="${usuario != NULL}">
		<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggler" data-toggle="collapse"
					data-target="#navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand"
					href="http://localhost:8080/lanp/frontcontroller/login">LANP</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="listarLancamentoTodos">Lan&ccedil;amentos</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="listarUsuarioTodos">Usu&aacute;rios<span class="sr-only">(current)</span></a></li>
					<li><a class="nav-link" href="logout">Logout</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</c:if>
	<c:choose>
		<c:when test="${usuario != NULL}">
			<h1>Sistema de Lançamentos Pessoais</h1>
			<hr>
		</c:when>
		<c:otherwise>
			<c:if test="${erro != NULL}">${erro}</c:if>
			<div class="container">
				<form action="login" method="post">
					<div class="form-group">
						<label class="form-control-label">Usuário</label> <input
							type="text" class="form-control" name="usuario">
					</div>
					<div class="form-group">
						<label class="form-control-label">Senha</label> <input type="text"
							class="form-control" name="senha">
					</div>
					<button type="submit" class="btn btn-primary">Logar</button>
				</form>
			</div>
		</c:otherwise>
	</c:choose>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<th>Nome</th>
				<th>Usuario</th>
				<th>Senha</th>
				<th>Ações</th>
			</thead>
			<tbody>
				<c:forEach var="u" items="${usuarios}">
					<tr>
						<td>${u.nome}</td>
						<td>${u.email}</td>
						<td>${u.senha}</td>
						<td>

							<button type="button" class="btn btn-success"
								onclick="javascript:location.href='atualizarUsuario?id=${u.codUsuario}' ">
								<i class="fa fa-edit"></i>
							</button>
							<button type="button" class="btn btn-danger"
								onclick="javascript:location.href='excluirUsuario?id=${u.codUsuario}' ">
								<i class="fa fa-trash"></i>
							</button>

						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>






