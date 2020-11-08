/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package exe7;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;

/**
 *
 * @author lab4aluno
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Double pds = 0.00;
        
        String nome = JOptionPane.showInputDialog("Digite o nome: ");
        String idade = JOptionPane.showInputDialog("Digite a idade: ");
        
        int idade_int = Integer.parseInt(idade);
        
        if(idade_int<=10)
        {
            pds = 30.00;
        }
        if(idade_int>10 && idade_int<=29)
        {
            pds = 60.00;
        }
        if(idade_int>29 && idade_int<=45)
        {
            pds = 120.00;
        }
        if(idade_int>45 && idade_int<=59)
        {
            pds = 150.00;
        }
        if(idade_int>59 && idade_int<=65)
        {
            pds = 250.00;
        }
        if(idade_int>65)
        {
            pds = 400.00;
        }
        
        DecimalFormat df = new DecimalFormat("0.00");
        String str = df.format(pds);
        
        JOptionPane.showMessageDialog(null, nome + " deverá pagar R$ " + str + " no Plano de Saúde.");
    }

}
