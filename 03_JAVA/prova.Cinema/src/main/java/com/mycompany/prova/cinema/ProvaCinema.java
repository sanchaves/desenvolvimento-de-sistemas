
package com.mycompany.prova.cinema;

import java.util.Scanner;

public class ProvaCinema {

    public static void main(String[] args) {
     
        Scanner ingressos = new Scanner(System.in);
         int opcao;
        int inteira = 0, meia = 0, vip = 0;
        double precoInteira = 20.0, precoMeia = 10.0, precoVip = 35.0;
        double total = 0.0;

        do {
            System.out.println("=== Sistema de Controle de Ingressos ===");
            System.out.println("1 - Ingresso Inteira (R$ 20,00)");
            System.out.println("2 - Ingresso Meia (R$ 10,00)");
            System.out.println("3 - Ingresso VIP (R$ 35,00)");
            System.out.println("4 - Exibir relatorio de vendas");
            System.out.println("5 - Encerrar");
            System.out.print("Escolha uma opcao: ");
            opcao = ingressos.nextInt();

            switch (opcao) {
                case 1:
                    inteira++;
                    total += precoInteira;
                    System.out.println("Voce comprou um ingresso inteira");
                    break;

                case 2:
                    meia++;
                    total += precoMeia;
                    System.out.println("Voce comprou um ingresso meia");
                    break;

                case 3:
                    vip++;
                    total += precoVip;
                    System.out.println("Voce comprou um ingresso VIP");
                    break;

                case 4:
                    System.out.println("\n=== RELATORIO DE VENDAS ===");
                    System.out.println("Ingressos Inteira: " + inteira + " (R$ " + (inteira * precoInteira) + ")");
                    System.out.println("Ingressos Meia: " + meia + " (R$ " + (meia * precoMeia) + ")");
                    System.out.println("Ingressos VIP: " + vip + " (R$ " + (vip * precoVip) + ")");
                    System.out.println("---------------------------------");
                    System.out.println("TOTAL ARRECADADO: R$ " + total);
                    break;

                case 5:
                    System.out.println("Encerrando o sistema...");
                    System.out.println("=== RELATORIO FINAL ===");
                    System.out.println("Ingressos Inteira: " + inteira + " (R$ " + (inteira * precoInteira) + ")");
                    System.out.println("Ingressos Meia: " + meia + " (R$ " + (meia * precoMeia) + ")");
                    System.out.println("Ingressos VIP: " + vip + " (R$ " + (vip * precoVip) + ")");
                    System.out.println("---------------------------------");
                    System.out.println("TOTAL FINAL: R$ " + total);
                    System.out.println("Sistema encerrado. Obrigado!");
                    break;

                default:
                    System.out.println("Opcao invalida! Tente novamente.");
            }

        } while (opcao != 5);
    }
}