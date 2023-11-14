package br.com.fiap.banco;

import java.io.Serializable;

public class Transacoes implements Serializable {

	private int numTransacoes;
	private double valorTransacoes;
	private String tipoConta;
	private String descricao;

	public Transacoes() {

	}

	public Transacoes(int numTransacoes, double valorTransacoes, String tipoConta, String descricao) {

		this.numTransacoes = numTransacoes;
		this.valorTransacoes = valorTransacoes;
		this.tipoConta = tipoConta;
		this.descricao = descricao;

	}

	public int getNumTransacoes() {
		return numTransacoes;
	}

	public void setNumTransacoes(int numTransacoes) {
		this.numTransacoes = numTransacoes;
	}

	public double getValorTransacoes() {
		return valorTransacoes;
	}

	public void setValorTransacoes(double valorTransacoes) {
		this.valorTransacoes = valorTransacoes;
	}

	public String getTipoConta() {
		return tipoConta;
	}

	public void setTipoConta(String tipoConta) {
		this.tipoConta = tipoConta;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
