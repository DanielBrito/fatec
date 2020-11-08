/**
 * @(#)Exe2.java
 *Para vários tributos, a base de cálculo é o salário mínimo.  
 *Fazer um programa que leia o valor do salário mínimo e o valor do salário de uma pessoa.  
 *Calcular e mostrar quantos salários mínimos ela ganha.
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
        
        String seu_salario = JOptionPane.showInputDialog("Digite o valor do seu salário: ");
        
        Double qtdd_salarios = (((Double.parseDouble(seu_salario))/724.00));
        	
       	JOptionPane.showMessageDialog(null, "Você recebe " + qtdd_salarios + " salários mínimos.");
        
    }
}
