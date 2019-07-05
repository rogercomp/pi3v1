<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
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
<!--  <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script> -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Listar Lançamentos</title>
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
						<li class="nav-item active"><a class="nav-link"
							href="listarLancamentoTodos">Lan&ccedil;amentos<span
								class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link"
							href="listarUsuarioTodos">Usu&aacute;rios</a></li>
						<li><a class="nav-link" href="logout">Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
		</br>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<h3 class="page-product-heading">Lançamentos</h3>

					<div class="row">
						<div class="col-sm-6 col-md-3 col-lg-3">
							<label class="form-control-label">Vencimento Início</label> <input
								type="date" class="form-control" name="inicio">
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3">
							<label class="form-control-label">Vencimento Fim</label> <input
								type="date" class="form-control" name="fim">
						</div>
					</div>
					<div class="row mt-3 ">
						<div class="col-12">
							<button type="button" class="btn btn-primary">Pesquisar</button>
						</div>
					</div>
				</div>
			</div>

			<div class="row mt-3">
				<table class="table table-striped">
					<thead>
						<th>Descrição</th>
						<th>Natureza</th>
						<th>Vencimento</th>
						<th>Pagamento</th>
						<th>Valor</th>
						<th>Ações</th>
					</thead>
					<tbody>
						<c:forEach var="l" items="${lancamentos}">
							<tr>
								<td>${l.descricao}</td>
								<td>${l.natureza.equals('D') ? 'Despesa' : 'Receita' }</td>
								<td>${l.listItem[0].dataVencimento}</td>
								<td></td>
								<td>${l.listItem[0].valor}</td>
								<td>
									<button type="button" class="btn btn-success"
										onclick="javascript:location.href='atualizarLancamento?id=${l.codLancamento}' ">
										<i class="fa fa-edit"></i>
									</button>
									<button type="button" class="btn btn-danger"
										onclick="javascript:location.href='excluirLancamento?id=${l.codLancamento}' ">
										<i class="fa fa-trash"></i>
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="row mt-2 ">
					<div class="col-12">
						<button type="button" class="btn btn-primary">Novo
							Lançamento</button>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:choose>
		<c:when test="${usuario != NULL}">
			
		</c:when>
		<c:otherwise>
			<c:if test="${erro != NULL}">${erro}</c:if>
			<div class="container">
				<h1>Login</h1>
				<hr>
				<form action="/syslan/frontcontroller/login" method="post">
					<div class="class="col-sm-12 col-md-6 col-lg-6" form-group">
						<label class="form-control-label">Email</label> <input
							type="email" class="form-control" name="email" required>
					</div>
					<div class="form-group">
						<label class="form-control-label">Senha</label> <input type="password"
							class="form-control" name="senha" required >
					</div>
					<button type="submit" class="btn btn-primary">Logar</button>
				</form>
			</div>
		</c:otherwise>
	</c:choose>
    
</body>
</html>