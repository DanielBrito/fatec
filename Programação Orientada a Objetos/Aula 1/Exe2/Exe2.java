/**
 * @(#)Exe2.java
 *Para v�rios tributos, a base de c�lculo � o sal�rio m�nimo.  
 *Fazer um programa que leia o valor do sal�rio m�nimo e o valor do sal�rio de uma pessoa.  
 *Calcular e mostrar quantos sal�rios m�nimos ela ganha.
 *
 * @author 
 * @version 1.00 2014/1/21
 */
 
 import javax.swing.JOptionPane;

public class Exe2 {
        
    /**
     * Creates a new instance of <code>Exe2</code>.
     */
    public Exe2() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String seu_salario = JOptionPane.showInputDialog("Digite o valor do seu sal�rio: ");
        
        Double qtdd_salarios = (((Double.parseDouble(seu_salario))/724.00));
        	
       	JOptionPane.showMessageDialog(null, "Voc� recebe " + qtdd_salarios + " sal�rios m�nimos.");
        
    }
}
