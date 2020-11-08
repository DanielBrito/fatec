/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package exe1_lista4;
import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe1_Lista4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String b = JOptionPane.showInputDialog("Digite o valor da base: ");
	String a = JOptionPane.showInputDialog("Digite o valor da altura: ");
        
        double base = Double.parseDouble(b);
        double altura = Double.parseDouble(a);
        
        JOptionPane.showMessageDialog(null,"A área do triângulo é: ", Calcular(base, altura));
        
        
    }
    
}
