package Aula_09;

import java.util.Scanner;

public class Ex_09{
   public static void main (String[]args){
   
    Scanner input = new Scanner (System.in);   
    int a,b;
    double c,d, potencia = 2;
   
    String faculdade = "Fatec Zona Sul";
    int tamanho = faculdade.length();
    
    
    System.out.println ("Entre com número intero:");
    a = input.nextInt();
    
    System.out.println ("Entre com um número Inteiro:");   
    b = input.nextInt ();   
    
    //Exercício A e B
    System.out.println ("O maior valor entre " +a+ " e " +b+ " é: " + Math.max (a,b));
    System.out.println ("O menor valor entre " +a+ " e " +b+ " é: " + Math.min (a,b));
    
    
    System.out.println (" ");
    
    
    System.out.println ("Entre com número Real:"); 
    c = input.nextDouble();
        
    System.out.println ("Entre com um número Real:"); 
    d = input.nextDouble ();   
    
    //Exercício C
    System.out.println ("Arredondando " +c+ " Para próximo inteiro = "+ Math.ceil (c));
    System.out.println ("Arredondando " +d+ " Para Anteior = " +Math.floor (d));
   
     
    System.out.println (" ");
    
    //Exercício D
    System.out.println ("A raiz quadrada de " +c+ " é = " +Math.sqrt (c));
    System.out.println ("A raiz quadrada de " +d+ " é = " +Math.sqrt (d));
    
    
    
    //Exercício E
    System.out.println (""+a+ " elevado a 2 é: " +Math.pow(a,potencia));
    System.out.println (""+b+ " elevado a 2 é: " +Math.pow(b,potencia));
    
    
    //Exercício F
    System.out.println ("String: " +faculdade);
    System.out.println ("O tamanho da String é: " + tamanho);
    //Exercício G
    System.out.println ("Caracter 6 = " +faculdade.charAt(6));
       
    
    //Exercício H e I
    System.out.println ("Fatec Zona Sul em MAIÚSCULA: " +faculdade.toUpperCase());
    System.out.println ("Fatec Zona Sul em minúscula: " +faculdade.toLowerCase());
    
    //Exercício J
    for (int i = 6 ; i<=9 ; i++)
    {System.out.println(faculdade.charAt(i)); }
   
    //Exercício K
    System.out.println("STRING Sem espaço: " +faculdade.trim());
    
    //Exercício L
    System.out.println ("Troca caracter 'a' por '*' :" + faculdade.replace('a','*') );
   }
}