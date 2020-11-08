/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe5;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe5 {

    public static void maior(int x, int y)
    {
        if(x>y)
        {
            System.out.println(x+" é maior que "+y+".");
        }
        else
        {
            System.out.println(y+" é maior que "+x+".");
        }
    }
    public static void main(String[] args) {
        
        String num1 = JOptionPane.showInputDialog(null, "Digite um número: ");
        String num2 = JOptionPane.showInputDialog(null, "Digite outro número: ");
        
        int n1 = Integer.parseInt(num1);
        int n2 = Integer.parseInt(num2);
        
        maior(n1, n2);
    }
}
