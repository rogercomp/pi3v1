package model.tarefa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UsuarioDAO;
import model.javabean.Usuario;

public class CadastrarUsuarioTarefa implements Tarefa {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// recuperar os parametros do formulario
		Usuario usuario = new Usuario(request.getParameter("nome"), 
				                      request.getParameter("senha"),				                      
				                      request.getParameter("email"),
				                      request.getParameter("ativo"));
		// enviar dados para o DAO persistir
		new UsuarioDAO().salvar(usuario);
		//retornar o nome da view
		request.setAttribute("msg", "parab�ns usuario cadastrado com sucesso");
		return "cadastroUsuario";
	}

}
