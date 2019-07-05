<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Atualizar</title>
</head>
<body>
	<h1>LANP</h1>
	<hr>
	<c:choose>
		<c:when test="${usuario != NULL}">
			<h1>Olá ${usuario.nome}</h1>
			<a href="logout">Logout</a>
			<a href="exibeFormCadastroUsuario">Cadastrar novo usuário</a>
			<a href="listarTodos">Listar todos</a>
		</c:when>

		<c:otherwise>
			<c:if test="${erro != NULL}">${erro}</c:if>

			<form action="/sistema/frontcontroller/login" method="post">
				Usuario:<input name="usuario"> Senha:<input name="senha">
				<input type="submit" value="ok">
			</form>
		</c:otherwise>
	</c:choose>
	<hr>
	<c:if test="${!empty usuario }">
		<form action="atualizar" method="POST">
			<input type="hidden" name="id" value="${entidade.id}"> Usuario:<input
				name="usuario" value="${entidade.nomeUsuario}"> Senha:<input
				name="senha" value="${entidade.senha}"> Nome completo: <input
				name="nome" value="${entidade.nome}"> <input type="submit"
				value="Atualizar">
		</form>
	</c:if>
	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<p>
			LANP <a href="https://www.nada.com.br" title="Visit w3schools">www.nada.com.br</a>
		</p>
	</footer>
	<script>
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a").on('click',
							function(event) {
								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {
									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});
				})
	</script>
</body>
</html>