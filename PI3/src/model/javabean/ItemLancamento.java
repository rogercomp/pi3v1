package model.javabean;

public class ItemLancamento {
	private int codItemLancamento, codUsuario, codLancamento;
	private String dataVencimento, dataPagamento;
	private double valor;
	
	
	public ItemLancamento(int codItemLancamento, int codUsuario, int codLancamento, String dataVencimento,
			String dataPagamento, double valor) {
		super();
		this.codItemLancamento = codItemLancamento;
		this.codUsuario = codUsuario;
		this.codLancamento = codLancamento;
		this.dataVencimento = dataVencimento;
		this.dataPagamento = dataPagamento;
		this.valor = valor;
	}
	
	public int getCodItemLancamento() {
		return codItemLancamento;
	}

	public void setCodItemLancamento(int codItemLancamento) {
		this.codItemLancamento = codItemLancamento;
	}

	public int getCodUsuario() {
		return codUsuario;
	}

	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}

	public int getCodLancamento() {
		return codLancamento;
	}

	public void setCodLancamento(int codLancamento) {
		this.codLancamento = codLancamento;
	}

	public String getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(String dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public String getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(String dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}	

}
