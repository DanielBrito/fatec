/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package exe6;

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
        
        String idade = JOptionPane.showInputDialog("Digite a sua idade: ");
        
        int idade_int = Integer.parseInt(idade);
        
        if(idade_int<16)
        {
            JOptionPane.showMessageDialog(null, "CLASSE ELEITORAL: NÃO-ELEITOR");
        }
        
        if(idade_int>=18 && idade_int<=65)
        {
            JOptionPane.showMessageDialog(null, "CLASSE ELEITORAL: ELEITOR OBRIGATÓRIO");
        }
        
        if(idade_int>=16 && idade_int<18 || idade_int>65)
        {
            JOptionPane.showMessageDialog(null, "CLASSE ELEITORAL: ELEITOR FACULTATIVO");
        }
    }

}
