<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<title>LANP</title>
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
				<a class="navbar-brand" href="#">LANP</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Lan&ccedil;amentos<span
							class="sr-only">(current)</span></a></li>
					<li><a class="nav-link" href="listarTodos">Usu&aacute;rios</a></li>
					<li><a class="nav-link" href="logout">Logout</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</c:if>
	<div class="container">
		<form action="cadastrarLancamento" method="post">
			<div class="row mt-5">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<h3>Novo Lançamento</h3>
					<div class="row mt-3">
						<div class="form-group col-sm-12 col-md-12 col-lg-12 ">
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
								<label class="btn btn-secondary active"> <input
									type="radio" name="options" id="option1" autocomplete="off"
									checked> Receita
								</label> <label class="btn btn-secondary"> <input type="radio"
									name="options" id="option2" autocomplete="off"> Despesa
								</label>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-sm-6 col-md-3 col-lg-3 ">
							<label class="form-control-label">Vencimento</label> <input
								type="text" class="form-control" name="vencimento">
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3">
							<label class="form-control-label">Pagamento</label> <input
								type="text" class="form-control" name="recebimento">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 col-md-6 col-lg-6">
							<label class="form-control-label">Descrição</label> <input
								type="text" class="form-control" name="descricao">
						</div>

						<div class="col-sm-12 col-md-3 col-lg-3">
							<label class="form-control-label">Valor</label> <input
								type="text" class="form-control" name="valor">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 col-md-4 col-lg-3">
							<label class="form-control-label">Categoria</label> <input
								type="text" class="form-control" name="categoria">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 col-md-9 col-lg-9">
							<label class="form-control-label">Observação</label>
							<textarea rows="3" class="form-control" name="observacao"></textarea>
						</div>
					</div>

					<div class="row mt-3 ">
						<div class="col-12">
							<button type="submit" class="btn btn-primary">Incluir</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>