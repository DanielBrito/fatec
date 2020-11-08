/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package exe3;

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
        
        String numero = JOptionPane.showInputDialog("Digite um número: ");
        
        int novo_num = Integer.parseInt(numero);
        
        if(novo_num%3==0)
        {
            JOptionPane.showMessageDialog(null, "O número é múltiplo de três!");
        }
        else
        {
            JOptionPane.showMessageDialog(null, "O número não é múltiplo três!");
        }
    }

}
