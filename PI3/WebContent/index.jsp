<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LANP</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<!-- FontAwesome JS -->
<script id="twitter-wjs" src="https://platform.twitter.com/widgets.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.0"></script>
<script
	src="https://connect.facebook.net/en_US/sdk.js?hash=f6fc7cceb6d8616e8e3904c1632a9e5b&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script defer=""
	src="https://use.fontawesome.com/releases/v5.1.0/js/all.js"
	integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9"
	crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="../css/style.css" rel="stylesheet" type="text/css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<c:choose>
		<c:when test="${usuario != NULL}">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggler"
							data-toggle="collapse" data-target="#navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="navbar-toggler-icon"></span>
						</button>
						<a class="navbar-brand" href="http://localhost:8080/lanp/frontcontroller/login">LANP</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link"
								href="listarLancamentoTodos">Lan&ccedil;amentos<span
									class="sr-only">(current)</span></a></li>
							<li><a class="nav-link" href="listarUsuarioTodos">Usu&aacute;rios</a></li>
							<li><a class="nav-link" href="logout">Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<!-- Parte nova -->
			<div class="container">
				<h2 class="title text-center">O que é?</h2>
				<p class="intro text-center">O lanp é um sistema para controle financeiro pessoal ou de pequenas
					empresas. Com ele você poderá fazer a organização de receitas e
					despesas dentro de um período de tempo, tipos de entrada e saída, e ainda acompanhar tudo isso em
					tempo real na dashboard de posição financeira</p>
				<div class="row">
					<div class="item col-lg-4 col-md-6 col-12">
						<div class="icon-holder">
							<svg class="svg-inline--fa fa-dollar-sign fa-w-9"
								aria-hidden="true" data-prefix="fas" data-icon="dollar-sign"
								role="img" xmlns="http://www.w3.org/2000/svg"
								viewBox="0 0 288 512" data-fa-i2svg="">
								<path fill="currentColor"
									d="M209.2 233.4l-108-31.6C88.7 198.2 80 186.5 80 173.5c0-16.3 13.2-29.5 29.5-29.5h66.3c12.2 0 24.2 3.7 34.2 10.5 6.1 4.1 14.3 3.1 19.5-2l34.8-34c7.1-6.9 6.1-18.4-1.8-24.5C238 74.8 207.4 64.1 176 64V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48h-2.5C45.8 64-5.4 118.7.5 183.6c4.2 46.1 39.4 83.6 83.8 96.6l102.5 30c12.5 3.7 21.2 15.3 21.2 28.3 0 16.3-13.2 29.5-29.5 29.5h-66.3C100 368 88 364.3 78 357.5c-6.1-4.1-14.3-3.1-19.5 2l-34.8 34c-7.1 6.9-6.1 18.4 1.8 24.5 24.5 19.2 55.1 29.9 86.5 30v48c0 8.8 7.2 16 16 16h32c8.8 0 16-7.2 16-16v-48.2c46.6-.9 90.3-28.6 105.7-72.7 21.5-61.6-14.6-124.8-72.5-141.7z"></path></svg>
							<!-- <i class="fas fa-dollar-sign"></i> -->
						</div>
						<div class="content">
							<h3 class="sub-title">Movimentação</h3>
							<p>Controle de receitas e despesas, fixas ou variáveis,
								dentro um período pré estabelecido com início e fim</p>
						</div>
					</div>
					<div class="item col-lg-4 col-md-6 col-12">
						<div class="icon-holder">
							<svg class="svg-inline--fa fa-tags fa-w-20" aria-hidden="true"
								data-prefix="fas" data-icon="tags" role="img"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"
								data-fa-i2svg="">
								<path fill="currentColor"
									d="M497.941 225.941L286.059 14.059A48 48 0 0 0 252.118 0H48C21.49 0 0 21.49 0 48v204.118a48 48 0 0 0 14.059 33.941l211.882 211.882c18.744 18.745 49.136 18.746 67.882 0l204.118-204.118c18.745-18.745 18.745-49.137 0-67.882zM112 160c-26.51 0-48-21.49-48-48s21.49-48 48-48 48 21.49 48 48-21.49 48-48 48zm513.941 133.823L421.823 497.941c-18.745 18.745-49.137 18.745-67.882 0l-.36-.36L527.64 323.522c16.999-16.999 26.36-39.6 26.36-63.64s-9.362-46.641-26.36-63.64L331.397 0h48.721a48 48 0 0 1 33.941 14.059l211.882 211.882c18.745 18.745 18.745 49.137 0 67.882z"></path></svg>
							<!-- <i class="fas fa-tags"></i> -->
						</div>
						<div class="content">
							<h3 class="sub-title">Classificação</h3>
							<p>Crie classes de receitas ou despesas e vincule aos centros
								de custo para auxiliar na classificação da movimentação</p>
						</div>
					</div>
					<div class="item col-lg-4 col-md-6 col-12">
						<div class="icon-holder">
							<svg class="svg-inline--fa fa-credit-card fa-w-18"
								aria-hidden="true" data-prefix="far" data-icon="credit-card"
								role="img" xmlns="http://www.w3.org/2000/svg"
								viewBox="0 0 576 512" data-fa-i2svg="">
								<path fill="currentColor"
									d="M527.9 32H48.1C21.5 32 0 53.5 0 80v352c0 26.5 21.5 48 48.1 48h479.8c26.6 0 48.1-21.5 48.1-48V80c0-26.5-21.5-48-48.1-48zM54.1 80h467.8c3.3 0 6 2.7 6 6v42H48.1V86c0-3.3 2.7-6 6-6zm467.8 352H54.1c-3.3 0-6-2.7-6-6V256h479.8v170c0 3.3-2.7 6-6 6zM192 332v40c0 6.6-5.4 12-12 12h-72c-6.6 0-12-5.4-12-12v-40c0-6.6 5.4-12 12-12h72c6.6 0 12 5.4 12 12zm192 0v40c0 6.6-5.4 12-12 12H236c-6.6 0-12-5.4-12-12v-40c0-6.6 5.4-12 12-12h136c6.6 0 12 5.4 12 12z"></path></svg>
							<!-- <i class="far fa-credit-card"></i> -->
						</div>
						<div class="content">
							<h3 class="sub-title">Cartões</h3>
							<p>Cadastre cartões de crédito ou débito para controlar a
								movimentação realizada durante o período</p>
						</div>
					</div>
					<div class="clearfix visible-md"></div>
					<div class="item col-lg-4 col-md-6 col-12">
						<div class="icon-holder">
							<svg class="svg-inline--fa fa-wallet fa-w-16" aria-hidden="true"
								data-prefix="fas" data-icon="wallet" role="img"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
								data-fa-i2svg="">
								<path fill="currentColor"
									d="M461.2 128H80c-8.84 0-16-7.16-16-16s7.16-16 16-16h384c8.84 0 16-7.16 16-16 0-26.51-21.49-48-48-48H64C28.65 32 0 60.65 0 96v320c0 35.35 28.65 64 64 64h397.2c28.02 0 50.8-21.53 50.8-48V176c0-26.47-22.78-48-50.8-48zM416 336c-17.67 0-32-14.33-32-32s14.33-32 32-32 32 14.33 32 32-14.33 32-32 32z"></path></svg>
							<!-- <i class="fas fa-wallet"></i> -->
						</div>
						<div class="content">
							<h3 class="sub-title">Carteiras</h3>
							<p>Controle o fluxo financeiro de contas bancárias ou uma
								carteira pessoal</p>
						</div>
					</div>
					<div class="item col-lg-4 col-md-6 col-12">
						<div class="icon-holder">
							<svg class="svg-inline--fa fa-user-cog fa-w-20"
								aria-hidden="true" data-prefix="fas" data-icon="user-cog"
								role="img" xmlns="http://www.w3.org/2000/svg"
								viewBox="0 0 640 512" data-fa-i2svg="">
								<path fill="currentColor"
									d="M610.5 373.3c2.6-14.1 2.6-28.5 0-42.6l25.8-14.9c3-1.7 4.3-5.2 3.3-8.5-6.7-21.6-18.2-41.2-33.2-57.4-2.3-2.5-6-3.1-9-1.4l-25.8 14.9c-10.9-9.3-23.4-16.5-36.9-21.3v-29.8c0-3.4-2.4-6.4-5.7-7.1-22.3-5-45-4.8-66.2 0-3.3.7-5.7 3.7-5.7 7.1v29.8c-13.5 4.8-26 12-36.9 21.3l-25.8-14.9c-2.9-1.7-6.7-1.1-9 1.4-15 16.2-26.5 35.8-33.2 57.4-1 3.3.4 6.8 3.3 8.5l25.8 14.9c-2.6 14.1-2.6 28.5 0 42.6l-25.8 14.9c-3 1.7-4.3 5.2-3.3 8.5 6.7 21.6 18.2 41.1 33.2 57.4 2.3 2.5 6 3.1 9 1.4l25.8-14.9c10.9 9.3 23.4 16.5 36.9 21.3v29.8c0 3.4 2.4 6.4 5.7 7.1 22.3 5 45 4.8 66.2 0 3.3-.7 5.7-3.7 5.7-7.1v-29.8c13.5-4.8 26-12 36.9-21.3l25.8 14.9c2.9 1.7 6.7 1.1 9-1.4 15-16.2 26.5-35.8 33.2-57.4 1-3.3-.4-6.8-3.3-8.5l-25.8-14.9zM496 400.5c-26.8 0-48.5-21.8-48.5-48.5s21.8-48.5 48.5-48.5 48.5 21.8 48.5 48.5-21.7 48.5-48.5 48.5zM224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm201.2 226.5c-2.3-1.2-4.6-2.6-6.8-3.9l-7.9 4.6c-6 3.4-12.8 5.3-19.6 5.3-10.9 0-21.4-4.6-28.9-12.6-18.3-19.8-32.3-43.9-40.2-69.6-5.5-17.7 1.9-36.4 17.9-45.7l7.9-4.6c-.1-2.6-.1-5.2 0-7.8l-7.9-4.6c-16-9.2-23.4-28-17.9-45.7.9-2.9 2.2-5.8 3.2-8.7-3.8-.3-7.5-1.2-11.4-1.2h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c10.1 0 19.5-3.2 27.2-8.5-1.2-3.8-2-7.7-2-11.8v-9.2z"></path></svg>
							<!-- <i class="fas fa-user-cog"></i> -->
						</div>
						<div class="content">
							<h3 class="sub-title">Controle de acessos</h3>
							<p>Através de grupos customizados, controle o acesso a
								funcionalidades do sistema por usuário</p>
						</div>
					</div>
					<div class="item col-lg-4 col-md-6 col-12">
						<div class="icon-holder">
							<svg class="svg-inline--fa fa-chart-line fa-w-16"
								aria-hidden="true" data-prefix="fas" data-icon="chart-line"
								role="img" xmlns="http://www.w3.org/2000/svg"
								viewBox="0 0 512 512" data-fa-i2svg="">
								<path fill="currentColor"
									d="M500 384c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H12c-6.6 0-12-5.4-12-12V76c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v308h436zM456 96H344c-21.4 0-32.1 25.9-17 41l32.9 32.9-72 72.9-55.6-55.6c-4.7-4.7-12.2-4.7-16.9 0L96.4 305c-4.7 4.6-4.8 12.2-.2 16.9l28.5 29.4c4.7 4.8 12.4 4.9 17.1.1l82.1-82.1 55.5 55.5c4.7 4.7 12.3 4.7 17 0l109.2-109.2L439 249c15.1 15.1 41 4.4 41-17V120c0-13.3-10.7-24-24-24z"></path></svg>
							<!-- <i class="fas fa-chart-line"></i> -->
						</div>
						<div class="content">
							<h3 class="sub-title">Dashboard</h3>
							<p>Acompanhe o fluxo financeiro em tempo real através de
								gráficos iterativos e resumos simplificados</p>
						</div>
					</div>
					
				</div>
			</div>

			<!-- Fim -->


		</c:when>

		<c:otherwise>
			<c:if test="${erro != NULL}">
				<div class="alert alert-info">
					<br>
					<h3>${erro}</h3>
				</div>
			</c:if>
			<div class="container">
				<div class="abs-center">
					<div class="col-lg-center col-sm-12 col-md-6 col-lg-6 centered">
						<h3 class="page-product-heading">Login</h3>
						<form action="/lanp/frontcontroller/login" method="post">
							<div class="row">
								<div class="col-sm-12 col-md-10 col-lg-10 centered">
									<label class="form-control-label">Email</label> <input
										type="email" class="form-control" name="email" required>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-10 col-lg-10 centered">
									<label class="form-control-label">Senha</label> <input
										type="password" class="form-control" name="senha" required>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-sm-12 col-md-10 col-lg-10 centered ">
									<button type="submit" class="btn btn-primary">Logar</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>

</body>
</html>

