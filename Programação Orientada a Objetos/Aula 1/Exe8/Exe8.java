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

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        String limite = JOptionPane.showInputDialog("Digite o número limite: ");
        String incremento = JOptionPane.showInputDialog("Digite o valor de incremento: ");
        
        int lim = Integer.parseInt(limite);
        int incr = Integer.parseInt(incremento);
        
        for(int i=0; i<=lim; i+=incr)
        {
            System.out.println(i);
        }
    }
}
