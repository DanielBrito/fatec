/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe4;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;

/**
 *
 * @author Daniel
 */
public class Exe4 {

    public static double radiano(double x)
    {
        return ((x*Math.PI)/180);
    }
    public static void main(String[] args) {
        
        String x = JOptionPane.showInputDialog(null, "Digite o grau: ");
        
        double grau = Double.parseDouble(x);
        
        double rad = radiano(grau);
        
        DecimalFormat df = new DecimalFormat("0.00");
        
        String radiano_grau = df.format(rad);
        
        JOptionPane.showMessageDialog(null, grau+" graus equivalem a "+radiano_grau+" em radianos.");
        
    }
}
