/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe4;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String n1 = JOptionPane.showInputDialog("Digite um valor: ");
        String n2 = JOptionPane.showInputDialog("Digite um valor: ");
        String n3 = JOptionPane.showInputDialog("Digite um valor: ");
        
        int num1 = Integer.parseInt(n1);
        int num2 = Integer.parseInt(n2);
        int num3 = Integer.parseInt(n3);
        
        if(num1>num2)
        {
            if(num2>num3)
            {
                JOptionPane.showMessageDialog(null, "MAIOR: " + num1 + "\n" + "MEIO: " + num2 + "\n" + "MENOR: " + num3);
            }
            else
            {
                if(num1>num3)
                {
                    JOptionPane.showMessageDialog(null, "MAIOR: " + num1 + "\n" + "MEIO: " + num3 + "\n" + "MENOR: " + num2);
                }
                else
                {
                    JOptionPane.showMessageDialog(null, "MAIOR: " + num3 + "\n" + "MEIO: " + num1 + "\n" + "MENOR: " + num2);
                }
            }
        }
        else
        {
            if(num2>num3)
            {
                if(num1>num3)
                {
                    JOptionPane.showMessageDialog(null, "MAIOR: " + num2 + "\n" + "MEIO: " + num1 + "\n" + "MENOR: " + num3);
                }
                else
                {
                    JOptionPane.showMessageDialog(null, "MAIOR: " + num2 + "\n" + "MEIO: " + num3 + "\n" + "MENOR: " + num1);
                }
            }
            else
            {
                JOptionPane.showMessageDialog(null, "MAIOR: " + num3 + "\n" + "MEIO: " + num2 + "\n" + "MENOR: " + num1);
            }
        }
    }
}
