/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe1;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe1 {

    public static int dobro (int x)
    {
        return x+x;
    }
    
    public static void main(String[] args) {
        
        String num1 = JOptionPane.showInputDialog(null, "Digite um número: ");
        int n = Integer.parseInt(num1);
        
        int dobro_n = dobro(n);
        
        JOptionPane.showMessageDialog(null, "O dobro de "+ n +" é "+ dobro_n +".");
        
    }
}
