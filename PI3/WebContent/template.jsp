<h1>Arquitetura de refer�ncia</h1>
<hr>
<c:choose>
	<c:when test="${usuario != NULL}">
		<h1>Ol� ${usuario.nome}</h1>
		<a href="logout">Logout</a>
		<a href="exibeFormCadastroUsuario">Cadastrar novo usu�rio</a>
		<a href="listarTodos">Listar todos</a>
	</c:when>

	<c:otherwise>
		<c:if test="${erro != NULL}">${erro}</c:if>
        <div class="container"> 
		  <form action="login" method="post">		
			 <div class="form-group">
				      <label class="form-control-label">Usu�rio</label>  
						<input type="text" class="form-control" name="usuario">
					</div> 
					<div class="form-group">
					   <label class="form-control-label">Senha</label>  
						<input type="text" class="form-control" name="senha">						
					</div>
					<button type="submit" class="btn btn-primary">Logar</button>
				</form>
	 	  </form>
		</div>
	</c:otherwise>
</c:choose>