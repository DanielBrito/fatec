/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package lista1_exe8;

/**
 *
 * @author lab3aluno
 */
public class Lista1_Exe8 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String funcionario = "Daniel";
        double sal_bruto = 1500.53;
        double sal_liquido = (sal_bruto - (sal_bruto*0.11));
        
        System.out.println("Funcionário: " + funcionario);
        System.out.println("Salário Bruto: R$ " + sal_bruto + "\n" + "Desconto: 11%" + "\n" + "Salário Líquido: R$ " + sal_liquido);
    }
    
}
