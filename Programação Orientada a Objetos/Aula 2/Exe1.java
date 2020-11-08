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

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        int count=0;
        
        String lim_inf = JOptionPane.showInputDialog(null, "Digite o limite inferior: ");
        String lim_sup = JOptionPane.showInputDialog(null, "Digite o limite superior: ");
        
        int inf = Integer.parseInt(lim_inf);
        int sup = Integer.parseInt(lim_sup);
        
        for(count=inf ; count<=sup ; count++)
        {
            if(count%2==0)
            {
                System.out.println(count);
            }
        }
        
    }
}
