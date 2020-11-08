/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package exe6;

import javax.swing.JOptionPane;

/**
 *
 * @author Daniel
 */
public class Exe6 {

    public static void num_mes(int x)
    {
        switch(x)
        {
            case 1: System.out.println("O número "+x+" corresponde a Janeiro.");break;
            case 2: System.out.println("O número "+x+" corresponde a Fevereiro.");break;
            case 3: System.out.println("O número "+x+" corresponde a Março.");break;
            default: System.out.println("Inválido! O número "+x+" não corresponde a um mês do 1º Trimestre.");
        }
    }
    
    public static void main(String[] args) {
        
        String x = JOptionPane.showInputDialog(null, "Digite o número de um mês do 1º Trimeste: ");
        
        int mes = Integer.parseInt(x);
        
        num_mes(mes);
    }
}
