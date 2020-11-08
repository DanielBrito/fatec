/**
 * @(#)Exe1.java
 *Em época de pouco dinheiro, os comerciantes estão procurando aumentar suas vendas oferecendo desconto.  
 *Faça um programa que possa entrar com o nome de um produto e seu  valor unitário e calcular e exibir  um novo valor com um desconto de 9%.
 *
 * @author 
 * @version 1.00 2014/1/21
 */
 
 import javax.swing.JOptionPane;

public class Exe1 {
        
    /**
     * Creates a new instance of <code>Exe1</code>.
     */
    public Exe1() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        
        
        String produto = JOptionPane.showInputDialog("Digite o nome do produto: ");
        String val_unit = JOptionPane.showInputDialog("Digite o preço unitário: ");
        
        Double novo_val = (Double.parseDouble(val_unit)-(Double.parseDouble(val_unit)*0.09));
        
        JOptionPane.showMessageDialog(null, "O preço do produto " + produto + " com desconto de 9% é R$ " + novo_val);
        
    }
}
