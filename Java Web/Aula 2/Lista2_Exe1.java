/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lista2_exe1;

/**
 *
 * @author Daniel
 */
public class Lista2_Exe1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        int n = 987;
        int q,r,y,x;
        
        q = n/10;
        r = n%10;
        y = q/10;
        x = q%10;
        
        int result = ((r*100)+(x*10)+(y*1));
        
        System.out.println("Inverso: " + result);
    }
}
