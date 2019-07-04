package model.tarefa;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.LancamentoDAO;
import model.javabean.Lancamento;

public class ListarLancamentoTodosTarefa implements Tarefa {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Lancamento> lista = new LancamentoDAO().listarTodos();
		request.setAttribute("lancamentos", lista);
		return "pesquisaLancamentos";
	}

}
