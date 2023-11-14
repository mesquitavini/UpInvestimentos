package br.com.fiap.banco;

import java.io.Serializable;

public class Pessoa implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	String nome;
	private int rg;
	private int cpf;
	private String DtNascimento;
	private String email;
	private String senha;
	private int agencia;
	private int numero;

	public Pessoa() {

	}

	public Pessoa(String nome, int rg, int cpf, String DtNascimento, String email, String senha, int agencia,
			int numero) {

		this.nome = nome;
		this.rg = rg;
		this.cpf = cpf;
		this.DtNascimento = DtNascimento;
		this.email = email;
		this.senha = senha;
		this.agencia = agencia;
		this.numero = numero;

	}

	public int getAgencia() {
		return agencia;
	}

	public void setAgencia(int agencia) {
		this.agencia = agencia;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
