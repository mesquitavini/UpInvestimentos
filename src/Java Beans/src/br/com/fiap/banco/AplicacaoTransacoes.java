package br.com.fiap.banco;

import java.util.Scanner;

public class AplicacaoTransacoes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Transacoes trans = new Transacoes();

		System.out.println("Digite o valor da sua transação:");
		Scanner valorTransacoes = new Scanner(System.in);
		System.out.println("Valor registrado:" + valorTransacoes.nextLine());

		System.out.println("Qual o tipo da coonta usada? Corrente ou poupança?");
		Scanner tipoConta = new Scanner(System.in);
		System.out.println("Tipo registrado:" + tipoConta.nextLine());

		System.out.println("Descreva em detalhes:");
		Scanner descricao = new Scanner(System.in);

		System.out.println("Sua conta foi registrada!");

	}

}
