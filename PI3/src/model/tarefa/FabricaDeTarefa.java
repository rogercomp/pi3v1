package model.tarefa;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class FabricaDeTarefa {

	static Map<String, Tarefa> tarefas = new HashMap<String, Tarefa>();
	static {
		tarefas.put("POST/login", new LoginTarefa());
		tarefas.put("GET/logout", new LogoutTarefa());
		
		tarefas.put("GET/exibeFormCadastroLancamento", new ExibeFormCadastroLancamentoTarefa());
		tarefas.put("POST/cadastrarLancamento", new CadastrarLancamentoTarefa());
		tarefas.put("GET/listarLancamentoTodos", new ListarLancamentoTodosTarefa());
		
		tarefas.put("GET/exibeFormCadastroUsuario", new ExibeFormCadastroUsuarioTarefa());
		tarefas.put("POST/cadastrarUsuario", new CadastrarUsuarioTarefa());
		tarefas.put("GET/listarUsuarioTodos", new ListarUsuarioTodosTarefa());
		
		Tarefa t = new AtualizaUsuarioTarefa();
		tarefas.put("GET/atualizarUsuario", t);
		tarefas.put("POST/atualizarUsuario", t);		
		tarefas.put("GET/excluirUsuario", new ExcluirUsuarioTarefa());
	}

	public static Tarefa getTarefa(HttpServletRequest request) {
		Tarefa tarefa = tarefas.get(request.getMethod() + request.getPathInfo());
		if (tarefa != null)
			return tarefa;
		else
			return new NULLTarefa();
	}
}
