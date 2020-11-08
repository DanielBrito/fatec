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

    public static double media(double a, double b, double c, double d)
    {
        return ((a+b+c+d)/4);
    }
    
    public static void main(String[] args) {
        
        String nota_1 = JOptionPane.showInputDialog(null, "Digite a nota 1: ");
        String nota_2 = JOptionPane.showInputDialog(null, "Digite a nota 2: ");
        String nota_3 = JOptionPane.showInputDialog(null, "Digite a nota 3: ");
        String nota_4 = JOptionPane.showInputDialog(null, "Digite a nota 4: ");
        
        Double n1 = Double.parseDouble(nota_1);
        Double n2 = Double.parseDouble(nota_2);
        Double n3 = Double.parseDouble(nota_3);
        Double n4 = Double.parseDouble(nota_4);
        
        double media_final = media(n1, n2, n3, n4);
        
        JOptionPane.showMessageDialog(null,"Nota 1:   "+n1+"\nNota 2:   "+n2+"\nNota 3:   "+n3+"\nNota 4:   "+n4+"\n\nMédia:   "+media_final);
    }
}
