package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.javabean.Usuario;

public class UsuarioDAO implements DAO {

	public Usuario busca(String email, String senha) {
		Connection con = FabricaDeConexoes.getConnection();
		Statement stmt = null;
		Usuario usuario = null;
		try {
			stmt = con.createStatement();
			String sql = "SELECT codUsuario, nome, senha, email, ativo FROM usuario where email='" + email + "' and senha='" + senha + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				String nome = rs.getString("nome");
				email  = rs.getString("email");
				senha = rs.getString("senha");
				String ativo = rs.getString("ativo");			
				int codUsuario = rs.getInt("codUsuario");
 				usuario = new Usuario(nome, senha, email, ativo);
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
		return usuario;
	}

	@Override
	public Object recuperarPorId(Object id) {
		Connection con = FabricaDeConexoes.getConnection();
		Statement stmt = null;
		Usuario usuario = null;
		try {
			stmt = con.createStatement();
			String sql = "SELECT * FROM usuario where id='" + (String) id + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				usuario = new Usuario(rs.getString("nome"), rs.getString("senha"), rs.getString("email"), rs.getString("ativo"));
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
		return usuario;
	}

	@Override
	public void salvar(Object entidade) {
		// conectar com sgbd
		Connection con = FabricaDeConexoes.getConnection();
		// montar a consulta
		Statement stmt = null;
		Usuario usuario = null;
		try {
			stmt = con.createStatement();
			String sql = "insert into usuario(nome,senha,email,codEndereco, ativo) values('" + ((Usuario) entidade).getNome() + "','"
					+ ((Usuario) entidade).getSenha() + "','" + ((Usuario) entidade).getEmail() + "','" + ((Usuario) entidade).getCodEndereco() +  "','" +  ((Usuario) entidade).getAtivo()  + "');";
			System.out.println(sql);
			stmt.executeUpdate(sql);
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
	}

	@Override
	public void excluir(Object id) {
		// conectar com sgbd
		Connection con = FabricaDeConexoes.getConnection();
		// montar a consulta
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			String sql = "delete from usuario where codUsuario="+id;
			System.out.println(sql);
			stmt.executeUpdate(sql);
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
	}

	@Override
	public List listarTodos() {
		Connection con = FabricaDeConexoes.getConnection();
		Statement stmt = null;
		List<Usuario> usuarios = new ArrayList<Usuario>();
		try {
			stmt = con.createStatement();
			String sql = "SELECT * FROM usuario;";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				usuarios.add(new Usuario(rs.getInt("codUsuario"), rs.getString("nome"),  rs.getString("senha"), rs.getString("email"),
						rs.getString("ativo")));
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
		return usuarios;
	}

	@Override
	public void atualizar(Object entidade) {
		// conectar com sgbd
		Connection con = FabricaDeConexoes.getConnection();
		// montar a consulta
		Statement stmt = null;
		try {
			String nome = ((Usuario) entidade).getNome();
			String senha = ((Usuario) entidade).getSenha();
			String email = ((Usuario) entidade).getEmail();
			String ativo =  ((Usuario) entidade).getAtivo();
			int id = ((Usuario) entidade).getCodUsuario();
			stmt = con.createStatement();
			String sql = "UPDATE usuario" + " SET nome = '" + nome + "'," + " senha ='" + senha + "'," + " email = '"
					+ email + "'," + ativo + "'" + " WHERE codUsuario = " + id;
			stmt.executeUpdate(sql);
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
	}
}
