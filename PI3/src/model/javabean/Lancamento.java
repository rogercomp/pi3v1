package model.javabean;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public class Lancamento {
	private int codLancamento, codCategoria;
	private String descricao, observacao, natureza;
	private List<ItemLancamento> listaItem = null;
	
	public Lancamento(int codCategoria, String descricao, String observacao, String natureza, double valor) {
		super();
		this.codCategoria = codCategoria;
		this.descricao = descricao;
		this.observacao = observacao;
		this.natureza = natureza;		
		this.listaItem = new ArrayList<ItemLancamento>();
	}
	
	public Lancamento(int codLancamento, int codCategoria, String descricao, String observacao, String natureza) {
		super();
		this.codLancamento = codLancamento;
		this.codCategoria = codCategoria;
		this.descricao = descricao;
		this.observacao = observacao;
		this.natureza = natureza;	
		this.listaItem = new ArrayList<ItemLancamento>();		
	}

	public int getCodLancamento() {
		return codLancamento;
	}

	public void setCodLancamento(int codLancamento) {
		this.codLancamento = codLancamento;
	}

	public int getCodCategoria() {
		return codCategoria;
	}

	public void setCodCategoria(int codCategoria) {
		this.codCategoria = codCategoria;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getNatureza() {
		return natureza;
	}

	public void setNatureza(String natureza) {
		this.natureza = natureza;
	}
	
	public List<ItemLancamento> getListItem() {
		return Collections.unmodifiableList(this.listaItem);
	}
	
	public void setItemLancamento(ItemLancamento item) {
		  this.listaItem.add(item);
	}	
	
}
