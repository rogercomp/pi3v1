<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>Cadastro de usuário</title>
</head>
<body>
<h1>Sistema de Lançamentos Pessoais</h1>
	<hr>
	<c:choose>
		<c:when test="${usuario != NULL}">		
		<a href="logout">Logout</a>
		<a href="exibeFormCadastroUsuario">Cadastrar novo usuário</a>
		<a href="listarTodos">Listar todos</a>
		</c:when>

		<c:otherwise>
			<c:if test="${erro != NULL}">${erro}</c:if>
            <div class="container"> 
			 <form action="login" method="post">
			    <div class="form-group">
				   <label class="form-control-label">Email</label>  
				   <input type="text" class="form-control" name="email">
			   	</div> 
				<div class="form-group">
				   <label class="form-control-label">Senha</label>  
					<input type="text" class="form-control" name="senha">						
				</div>
				<button type="submit" class="btn btn-primary">Logar</button>
			 </form>
			</div>
		</c:otherwise>
	</c:choose>
	<hr>
	${msg}
	<div class="container"> 
	  <form action="cadastrarUsuario" method="post">
	    <div class="form-group">
	       <label class="form-control-label">Email</label>  
		   <input type="text" class="form-control" name="email">
		</div>
        <div class="form-group">
		   <label class="form-control-label">Senha</label>  
		   <input type="text" class="form-control" name="senha">						
		</div>		
		 <div class="form-group">
		   <label class="form-control-label">Nome</label>  
		    <input type="text" class="form-control" name="nome">		
		 </div>		
		 <button type="submit" class="btn btn-primary">Incluir</button>	
	  </form>
	</div>
</body>
</html>