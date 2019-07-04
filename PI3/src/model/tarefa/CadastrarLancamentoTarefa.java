package model.tarefa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.LancamentoDAO;
import model.dao.UsuarioDAO;
import model.javabean.Lancamento;
import model.javabean.Usuario;

public class CadastrarLancamentoTarefa implements Tarefa {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// recuperar os parametros do formulario
		Lancamento lancamento = new Lancamento(Integer.parseInt(request.getParameter("codCategoria")),
				                                                request.getParameter("descricao"), 
				                                                request.getParameter("observacao"),				                            
				                                                request.getParameter("natureza"),
				                             Double.parseDouble(request.getParameter("valor")));
		
		// enviar dados para o DAO persistir
		new LancamentoDAO().salvar(lancamento);
		// retornar o nome da view
		request.setAttribute("msg", "lançamento cadastrado com sucesso!");
		return "cadastroLancamento";
	}

}
