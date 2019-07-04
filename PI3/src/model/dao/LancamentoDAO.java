package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.javabean.ItemLancamento;
import model.javabean.Lancamento;

public class LancamentoDAO implements DAO {

	@Override
	public Object recuperarPorId(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void salvar(Object entidade) {
		// TODO Auto-generated method stub

	}

	@Override
	public void excluir(Object id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List listarTodos() {
		Connection con = FabricaDeConexoes.getConnection();
		Statement stmt = null;
		Lancamento lanc = null;
		ItemLancamento lancItem = null;
		List<Lancamento> lancamentos = new ArrayList<Lancamento>();
		List<ItemLancamento> itemLancamento = new ArrayList<ItemLancamento>();
		try {
			stmt = con.createStatement();
			String sql = "SELECT l.codLancamento,  l.codCategoria, l.observacao, l.natureza, l.descricao, i.codItemLancamento, i.dataVencimento, i.dataPagamento, i.valor, u.codUsuario\r\n"
					+ "FROM lancamento l \r\n"
					+ "  INNER JOIN itemlancamento i ON  i.codLancamento = l.codLancamento\r\n"
					+ "  INNER JOIN usuario u ON i.codusuario = u.codUsuario \r\n" + "ORDER BY l.descricao;";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {

				lanc = new Lancamento(rs.getInt("codLancamento"), rs.getInt("codCategoria"), rs.getString("descricao"),
						rs.getString("observacao"), rs.getString("natureza"));

				lancItem = new ItemLancamento(rs.getInt("codItemLancamento"), rs.getInt("codUsuario"),
						rs.getInt("codLancamento"), rs.getString("dataVencimento"), rs.getString("dataPagamento"),
						rs.getDouble("valor"));
				
				lanc.setItemLancamento(lancItem);

				if (!lancamentos.contains(lanc)) {
					lancamentos.add(lanc);					
				}
			}

		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException se2) {
				se2.printStackTrace();
			}
		}
		return lancamentos;
	}

	@Override
	public void atualizar(Object entidade) {
		// TODO Auto-generated method stub

	}

}
