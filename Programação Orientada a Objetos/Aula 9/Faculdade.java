/**
 * @(#)Faculdade.java
 *
 *
 * @author Glauco Felipe Torres Nogueira
 * @version 1.00 2014/4/22
 * @Corresponde à lista número 9
 */

public class Faculdade {

    public Faculdade() {
    }
    
    public static void main (String[] args){
        
    double valor1=10.5;
    double valor2=12.3;
    
    int valor3=39;
    int valor4=40;
    
    String faculdade ="Fatec Zona Sul";
    int tamanho=faculdade.length();

	/* Trabalhando com as Variáveis Numéricas 
	*/
    
    System.out.println("O maior valor entre 39 e 40 é: " + Math.max(valor3,valor4));
    System.out.println("O menor valor entre 39 e 40 é: " + Math.min(valor3,valor4));
    System.out.println("Arredondando o primeiro valor com floor: " + Math.floor(valor1));
    System.out.println("Arredondando o segundo valor com floor: " + Math.floor(valor2));
	System.out.println("Arredondando o primeiro valor com ceil: " + Math.ceil(valor1));
	System.out.println("Arredondando o segundo valor com ceil: " + Math.ceil(valor2));
	System.out.println("Raiz quadrada do primeiro valor real (10.5): " + Math.sqrt(valor1));
	System.out.println("Raiz quadrada do segundo valor real (12.3): " + Math.sqrt(valor2));
	System.out.println("Calculando a potencia de 39 pelo expoente 2 (ao quadrado): " + Math.pow(valor3,2));
	System.out.println("Calculando a potencia de 40 pelo expoente 2 (ao quadrado): " + Math.pow(valor4,2));
	
	
	/* Trabalhando com as Strings
	 *
	 * 
	*/
	
	System.out.println("Exibindo a String: " + faculdade);
	System.out.println("O tamanho desta String é:" + tamanho);
	
	String faculdade2 ="Fatec Zona Sul";
	for (int i=0;i<14;i++)
	System.out.println("Exiba todos os caracteres da String :" + faculdade2.charAt(i));
	System.out.println("A quinta posição desta String é: " + faculdade2.charAt(5));
	System.out.println("Fatec Zona Sul em maiúscula é: " + faculdade2.toUpperCase());		
    System.out.println("FATEC ZONA SUL em minúscula é: " + faculdade2.toLowerCase());
    System.out.println("A quinta posição desta String é: " + faculdade2.charAt(5));
    System.out.println("Mostrando 4 caracteres a partir da posição 6: " + faculdade2.substring(6,10));
    System.out.println("Removendo os espaços em branco: " + faculdade2.trim());
    System.out.println("Trocando caracter a por * :" + faculdade2.replace('a','*'));
    }
    		
}