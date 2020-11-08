/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe7;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe7 {

    public static long fatorial(int a)
    {
        if(a<1)
            return 1;
        long result=1;
        long x=a;
        
        while(x>1)
        {
            result = result*x; /*  ou result*=x;  */
            x--;
        }
        return result;
    }
    
    public static void main(String[] args) {
        
        String x = JOptionPane.showInputDialog(null, "Digite um número: ");
        
        int num_x = Integer.parseInt(x);
        
        long fatorial_x = fatorial(num_x);
        
        JOptionPane.showMessageDialog(null, "O fatorial de "+num_x+" é "+fatorial_x+".");
        
    }
}
