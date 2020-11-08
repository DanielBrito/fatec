/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe8;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe8 {

    public static boolean num_primo(int x)
    {
        if(x<2)
            return false;
        for(int i=2 ; i<=(x/2); i++)
        {
            if(x%i==0)
                return false;
        }
        return true;
    }
    
    public static void main(String[] args) {
        
        String x = JOptionPane.showInputDialog(null, "Digite um número: ");
        
        int num = Integer.parseInt(x);
        
        if(num_primo(num))
            JOptionPane.showMessageDialog(null, "O número "+num+" é primo.");
        else
            JOptionPane.showMessageDialog(null, "O número "+num+" não é primo." );
    }
}
