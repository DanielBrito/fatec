/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package exe5;

import javax.swing.JOptionPane;

/**
 *
 * @author lab4aluno
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Double valor_venda;
        
        String valor = JOptionPane.showInputDialog("Digite o valor do produto: ");
        
        int valor_int = Integer.parseInt(valor);
        
        if(valor_int<20.00)
        {
            valor_venda = (valor_int+(valor_int*0.45));
            
            JOptionPane.showMessageDialog(null, "O valor de venda é R$ " + valor_venda);
        }
        else
        {
            valor_venda = (valor_int+(valor_int*0.30));
            
            JOptionPane.showMessageDialog(null, "O valor de venda é R$ " + valor_venda);
        }
    }

}
