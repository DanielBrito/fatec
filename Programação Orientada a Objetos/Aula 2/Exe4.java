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

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String prova1 = JOptionPane.showInputDialog(null, "Digite a nota da P1: ");
        String prova2 = JOptionPane.showInputDialog(null, "Digite a nota da P2: ");
        String trabalho = JOptionPane.showInputDialog(null, "Digite a nota do Trabalho: ");
        
        int p1 = Integer.parseInt(prova1);
        int p2 = Integer.parseInt(prova2);
        int trab = Integer.parseInt(trabalho);
        
        double MEDIA = (((p1*0.35) + (p2*0.5) + (trab*0.15)));
        
        DecimalFormat nota = new DecimalFormat("0.00");
        String media = nota.format(MEDIA);
        
        JOptionPane.showMessageDialog(null, "PROVA 1 =     " + p1 + "\n" + "PROVA 2 =     " + p2 + "\n" + "TRABALHO = " + trab + "\n\n" + "MÉDIA =>  " + media);
    }
}