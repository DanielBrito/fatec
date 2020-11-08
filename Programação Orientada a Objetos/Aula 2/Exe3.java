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

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        /* 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97 */
        
        int count = 0;
        
        String lim_inf = JOptionPane.showInputDialog(null, "Digite o limite inferior: ");
        String lim_sup = JOptionPane.showInputDialog(null, "Digite o limite superior: ");
        
        int inf = Integer.parseInt(lim_inf);
        int sup = Integer.parseInt(lim_sup);
        
        for(count=inf ; count<=sup ; count++)
        {
            if(count%2!=0 && count/1==0 && count/count==1)
            {
                System.out.println(count);
            }
        }
        
    }
}
