/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe2;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String sequencia = JOptionPane.showInputDialog(null, "Digite a quantidade de números da sequência: ");
        int seq = Integer.parseInt(sequencia);
        
        int a, b, i;
        
        //int seq = 15; /*Quantidade de números da sequência*/
        
        for(a=0, b=1, i=0; i<seq; b+=a, a=b-a, i++)
        {
            System.out.println(a + " ");
            
            /*
             *             b=b+a || a=b-a (sequencia Fibonacci)
             * 1o ciclo -> 1+0=1    1-0=1
             * 2o ciclo -> 1+1=2    2-1=1
             * 3o ciclo -> 2+1=3    3-1=2
             * 4o ciclo -> 3+2=5    5-2=3 
             * 5o ciclo -> 5+3=8    8-3=5
             *          ...
             */
        }
        
        System.exit(0);
    }
}
