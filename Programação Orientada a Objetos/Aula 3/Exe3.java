/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe3;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe3 {

    public static int produto(int x, int y)
    {
        return x*y;
    }
    public static void main(String[] args) {
        
        String num_1 = JOptionPane.showInputDialog(null, "Digite um número: ");
        String num_2 = JOptionPane.showInputDialog(null, "Digite outro número: ");
        
        int num1 = Integer.parseInt(num_1);
        int num2 = Integer.parseInt(num_2);
        
        int produto_num = produto(num1, num2);
        
        JOptionPane.showMessageDialog(null, ""+num1+" x "+num2+ " = "+produto_num+".");
    }
}
