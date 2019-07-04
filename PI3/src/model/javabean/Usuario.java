package model.javabean;

public class Usuario {
	private String nome, senha, email, ativo;
	private int codUsuario, codEndereco;

	public Usuario(String nome, String senha, String email, String ativo) {
		super();
		this.nome = nome;
		this.senha = senha;
		this.email = email;
		this.ativo = ativo;		
	}
	
	public Usuario(int codUsuario, String nome, String senha, String email, String ativo) {
		super();
		this.codUsuario = codUsuario;
		this.nome = nome;
		this.senha = senha;
		this.email = email;
		this.ativo = ativo;		
	}

	public int getCodUsuario() {
		return codUsuario;
	}

	public void setCodUsuario(int id) {
		this.codUsuario = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getAtivo() {
		return ativo;
	}


	public void setAtivo(String ativo) {
		this.ativo = ativo;
	}


	public int getCodEndereco() {
		return codEndereco;
	}


	public void setCodEndereco(int codEndereco) {
		this.codEndereco = codEndereco;
	}

}
