package br.com.fiap.banco;

import java.util.Scanner;

public class AplicacaoPessoa {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Pessoa pss = new Pessoa();

		System.out.println("Digite o número da sua conta");
		Scanner numero = new Scanner(System.in);
		System.out.println("Numero de conta registrado:" + numero.nextLine());

		System.out.println("Digite a sua agência");
		Scanner agencia = new Scanner(System.in);
		System.out.println("Agência registrada:" + agencia.nextLine());

		System.out.println("Sua conta foi registrada!");

	}

}
